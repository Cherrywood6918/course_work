 /*проверка возраста работников и то, что они не умерли*/
CREATE OR REPLACE FUNCTION check_age()
RETURNS TRIGGER AS $$
BEGIN
	RAISE NOTICE '%', TG_NAME;
	IF ((SELECT date_part('year',AGE(current_date,people.date_of_birth))
			FROM people where people.id = NEW.person_id) >= 18)
	AND ((SELECT date_of_death FROM people where people.id = NEW.person_id) IS NULL)
	THEN
	RAISE NOTICE 'SUCSSES:  %', TG_NAME;
	RETURN NEW;
	ELSE
	RAISE NOTICE 'FAIL:  %', TG_NAME;
	RETURN NULL;
	END IF;
END;
$$ LANGUAGE 'plpgsql';
CREATE TRIGGER hiring_worker BEFORE INSERT ON workers
FOR EACH ROW EXECUTE PROCEDURE check_age();

/*проверка работника на увольнение*/
CREATE OR REPLACE FUNCTION check_dismissal()
RETURNS TRIGGER AS $$
BEGIN
	RAISE NOTICE '%', TG_NAME;
	IF (NEW.penalty >= 3)
/*count(id) оптимальнее count(*)*/
	AND ((SELECT count(workers.id) FROM workers) > 300)
	THEN
	RAISE NOTICE 'SUCSSES: %', TG_NAME;
	UPDATE workers SET status = false WHERE workers.id = NEW.id;
	ELSE
	RAISE NOTICE 'FAIL:  %', TG_NAME;
	END IF;
	RETURN NEW;
END;
$$ LANGUAGE 'plpgsql';
CREATE TRIGGER dismissal AFTER UPDATE OF penalty ON workers
FOR EACH ROW EXECUTE PROCEDURE check_dismissal();

/*начисление штрафов*/ПОД ВОПРОСОМ
CREATE OR REPLACE FUNCTION check_penalty()
RETURNS TRIGGER AS $$
BEGIN
	RAISE NOTICE '%', TG_NAME;
	IF (NEW.dragon_status = 'escaped')
	OR (NEW.dragon_status = 'death due to poor care')
	THEN
	RAISE NOTICE '%',NEW.id;
	UPDATE workers SET penalty = penalty + 1 WHERE id IN
                    (SELECT worker_id FROM dragon_carers_trainers as drt WHERE dragon_id = NEW.id AND drt.status);
	RAISE NOTICE 'SUCSSES: %', TG_NAME;
	ELSE
	RAISE NOTICE 'FAIL:  %', TG_NAME;
	END IF;
	RETURN NEW;
END;
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER impose_a_penalty AFTER UPDATE OF dragon_status ON dragons
FOR EACH ROW EXECUTE PROCEDURE check_penalty();

-- Если на ферме нет мест, поиск и приручение драконов не проводится.
CREATE OR REPLACE FUNCTION check_count_dragons() 
RETURNS TRIGGER AS $$
BEGIN
    RAISE NOTICE '%', TG_NAME;
    RAISE NOTICE '%', (SELECT count(dragons.id) FROM dragons);
    RAISE NOTICE '%', (SELECT sum(max_amount) FROM cages WHERE cage_type = 'general');
    IF ((SELECT count(dragons.id) FROM dragons) < (SELECT sum(max_amount) FROM cages WHERE cage_type = 'general'))
    THEN
        RAISE NOTICE 'SUCSSES: %', TG_NAME;
        RETURN NEW;
    ELSE
        RAISE NOTICE 'FAIL:  %', TG_NAME;
        RETURN NULL;       
    END IF;
END;
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER search_outing_permit BEFORE INSERT ON search_outing
FOR EACH ROW EXECUTE PROCEDURE check_count_dragons();
CREATE TRIGGER tamer_outing_permit BEFORE INSERT ON tamer_outing
FOR EACH ROW EXECUTE PROCEDURE check_count_dragons();

/*
В search_outing атрибут time_finish установить, когда истечет время поиска или result станет true или false.
В tamer_outing time_finish установить, когда result станет true или false.
*/
CREATE OR REPLACE FUNCTION check_search_time_finish()
RETURNS TRIGGER AS $$
BEGIN
    RAISE NOTICE '%', TG_NAME;
    IF (NEW.result is not null)
    THEN
        UPDATE search_outing SET time_finish = now() WHERE id = NEW.id;
        RAISE NOTICE 'SUCSSES: %', TG_NAME;
    ELSE
        RAISE NOTICE 'FAIL:  %', TG_NAME;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE 'plpgsql';
CREATE TRIGGER search_outing_finish AFTER UPDATE OF result ON search_outing
FOR EACH ROW EXECUTE PROCEDURE check_search_time_finish();

CREATE OR REPLACE FUNCTION check_tamer_time_finish()
RETURNS TRIGGER AS $$
BEGIN
    RAISE NOTICE '%', TG_NAME;
    IF (NEW.result is not null)
    THEN
        UPDATE tamer_outing SET time_finish = now() WHERE id = NEW.id;
        RAISE NOTICE 'SUCSSES: %', TG_NAME;
    ELSE
        RAISE NOTICE 'FAIL:  %', TG_NAME;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE 'plpgsql';
CREATE TRIGGER tamer_outing_finish AFTER UPDATE OF result ON tamer_outing
FOR EACH ROW EXECUTE PROCEDURE check_tamer_time_finish();

/*
При добавлении айди в атрибут evidence_id сущности search_history, установить time_finish. 
*/
CREATE OR REPLACE FUNCTION check_evidence_time_finish()
RETURNS TRIGGER AS $$
BEGIN
    RAISE NOTICE '%', TG_NAME;
    IF (NEW.evidence_id is not null)
    THEN
        UPDATE seartch_history SET time_finish = now() WHERE id = NEW.id;
        RAISE NOTICE 'SUCCESSES: %', TG_NAME;
    ELSE
        RAISE NOTICE 'FAIL:  %', TG_NAME;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE 'plpgsql';
CREATE TRIGGER evidence_time_finish AFTER UPDATE OF evidence_id ON seartch_history
FOR EACH ROW EXECUTE PROCEDURE check_evidence_time_finish();

 

/* работники в зависимости от типа могут выполнять только определенные обязанности
*  worker - id работника в таблице workers
*  type - тип, который мы хотим проверить: занимает*/
CREATE FUNCTION check_worker_type(type worker_type, worker int)
RETURNS BOOLEAN AS $$
DECLARE
	find_type worker_type = (SELECT worker_type FROM workers WHERE id = worker);
	find_status boolean = (SELECT status FROM workers WHERE id = worker);
BEGIN
	RAISE DEBUG 'check_worker_responsibilities';
	IF (find_type = type) AND (find_status)
	THEN
	RAISE DEBUG 'SUCSSES: check_worker_responsibilities';
	RETURN TRUE;
	ELSE
	RAISE DEBUG 'FAIL: check_worker_responsibilities';
	RETURN FALSE;
	END IF;
END;
$$ LANGUAGE 'plpgsql';

/*работники могут работать только в опеределлое время*/
CREATE FUNCTION check_working_day(worker int, time_start time)
RETURNS BOOLEAN AS $$
DECLARE
    worker_time day_time := (SELECT work_time FROM workers where id = worker);
    day_start time := '10:00:00';
    day_finish time := '18:00:00';
    night_start time := '22:00:00';
    night_finish time := '06:00:00';
BEGIN
    RAISE NOTICE 'check_working_day';
    IF (worker_time = 'day' AND time_start >= day_start AND  time_start <= day_finish) OR
       (worker_time = 'night' AND (time_start >= night_start OR  time_start <= night_finish))
    THEN
        RAISE NOTICE 'SUCCESSES: check_working_day';
        RETURN TRUE;
    ELSE
        RAISE NOTICE 'FAIL: check_working_day';
        RETURN FALSE;
    END IF;
END;
$$ LANGUAGE 'plpgsql';


 CREATE OR REPLACE FUNCTION check_worker_and_dragon_time()
RETURNS TRIGGER AS $$
DECLARE
    work_time day_time = (SELECT work_time FROM workers where id = NEW.worker_id);
    active_time day_time = (SELECT active_time FROM dragon_types WHERE id = (SELECT type_id FROM dragons WHERE id = NEW.dragon_id));
BEGIN
    RAISE NOTICE '%', TG_NAME;
    IF (work_time = active_time)
    THEN
        RAISE NOTICE 'SUCCESSES: %', TG_NAME;
        RETURN NEW;
    ELSE
        RAISE NOTICE 'FAIL:  %', TG_NAME;
        RETURN NULL;
    END IF;
END;
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER add_carers_trainers_dragon BEFORE INSERT ON dragon_carers_trainers
FOR EACH ROW EXECUTE PROCEDURE check_worker_and_dragon_time();

/* Обновления уровня дрессировки */
CREATE OR REPLACE FUNCTION update_train_level()
RETURNS TRIGGER AS $$
DECLARE
    new_training_level training_level = (SELECT training_level FROM characteristic_levels WHERE min_value <= new.value AND max_value >= new.value);
BEGIN
    IF (dragon_characteristics.char_type = 'training')
    THEN
        UPDATE dragons SET training_level = new_training_level WHERE dragons.id = dragon_id;
    END IF;
    RETURN new;
END;
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER add_caring_and_train_action AFTER UPDATE on dragon_characteristics
FOR ROW EXECUTE PROCEDURE update_train_level();

/* Установка нового смотрителя/дрессировщика для дракона */
CREATE OR REPLACE FUNCTION update_carers_trainers_status()
    RETURNS TRIGGER AS $$
DECLARE
    change_influence_value int = 5;
    new_worker_type worker_type = (SELECT worker_type FROM workers WHERE workers.id = new.worker_id);
    old_worker_id int = (
        SELECT worker_id FROM dragon_carers_trainers
            INNER JOIN workers w on dragon_carers_trainers.worker_id = w.id
            WHERE dragon_carers_trainers.dragon_id = new.dragon_id AND w.worker_type = new_worker_type);
BEGIN
    IF (new.status = true)
    THEN
        UPDATE dragon_carers_trainers SET status = false WHERE dragon_id = new.dragon_id AND worker_id = old_worker_id;
        UPDATE dragon_characteristics SET value = (value - change_influence_value) WHERE dragon_id = new.dragon_id AND char_type = 'happiness';
    END IF;
    RETURN new;
END;
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER change_carers_trainers BEFORE INSERT ON dragon_carers_trainers
FOR ROW EXECUTE PROCEDURE update_carers_trainers_status();

/* Проверка условий для создания новой пары драконов */
CREATE OR REPLACE FUNCTION check_new_couple()
    RETURNS TRIGGER AS $$
DECLARE
    mother dragons = (SELECT type_id, gender, date_of_birth FROM dragons WHERE mother_id = dragons.id);
    father dragons = (SELECT type_id, gender, date_of_birth FROM dragons WHERE father_id = dragons.id);
    puberty_age int = (SELECT puberty_age FROM dragon_types WHERE dragon_types.id = new.mother_id);
BEGIN
    IF (father.type_id != mother.type_id)
    THEN
        RAISE EXCEPTION 'Can not create a couple of different dragon types: mother_type_id = %, father_type_id = %',
            mother.type_id, father.type_id;
    END IF;
    IF (mother.gender == father.gender)
    THEN
        RAISE EXCEPTION 'Can not create a couple of the same gender';
    END IF;
    IF (puberty_age > now() - mother.date_of_birth OR puberty_age > now() - father.date_of_birth)
    THEN
        RAISE EXCEPTION 'Can not create a couple, dragons haven`t reached puberty age';
    END IF;
    RETURN new;
END;
$$ LANGUAGE 'plpgsql';

/* */
CREATE TRIGGER check_new_couple BEFORE INSERT ON dragon_couples
FOR ROW EXECUTE PROCEDURE check_new_couple();

CREATE OR REPLACE FUNCTION check_cage()
    RETURNS TRIGGER AS $$
DECLARE
    max_amount int = (SELECT max_amount FROM cages WHERE cages.id = new.cage_id);
    cur_amount int = (SELECT count(*) FROM dragons WHERE dragons.cage_id = new.cage_id);
BEGIN
    IF (cur_amount + 1 > max_amount)
    THEN
        RAISE EXCEPTION 'Can not add a dragon to the cage with id = %, cage is full', new.cage_id;
    END IF;
    RETURN new;
END;
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER check_cage_before_insert BEFORE INSERT ON dragons
FOR ROW EXECUTE PROCEDURE check_cage();

CREATE TRIGGER check_cage_before_update BEFORE UPDATE ON dragons
FOR ROW EXECUTE PROCEDURE check_cage();

/* */
CREATE OR REPLACE FUNCTION check_new_transfer()
    RETURNS TRIGGER AS $$
DECLARE
    reputation int = (SELECT reputation FROM people WHERE people.id = new.person_id);
    training_level training_level = (SELECT training_level FROM dragons WHERE new.dragon_id = dragons.id);
BEGIN
    IF (reputation < 0)
    THEN
        RAISE EXCEPTION 'A person with a negative reputation cannot take or rent a dragon';
    END IF;
    IF (reputation < 50 AND new.transfer_type == 'permanent')
    THEN
        RAISE EXCEPTION 'A person with a reputation of 50 or more can take a dragon permanently';
    END IF;
    IF (new.transfer_type == 'temporal' AND (training_level != 'advanced' OR training_level != 'intermediate'))
    THEN
        RAISE EXCEPTION 'A dragon can be taken temporarily only when it''s training level is intermediate or advanced';
    END IF;
    IF (new.transfer_type == 'permanent' AND training_level != 'advanced')
    THEN
        RAISE EXCEPTION 'A dragon can be taken permanently only when it''s training level is advanced';
    END IF;
    new.time_start = now();
    RETURN new;
END;
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER create_transfer BEFORE INSERT ON transfer_dragon_history
FOR ROW EXECUTE PROCEDURE check_new_transfer();

/* */
CREATE OR REPLACE FUNCTION finish_transfer()
    RETURNS TRIGGER AS $$
DECLARE
    reputation_points int = (SELECT reputation_points FROM transfer_dragon_results WHERE new.result_id = transfer_dragon_results.id);
BEGIN
    UPDATE people SET reputation = (reputation + reputation_points) WHERE people.id = new.person_id;
    new.time_finish = now();
    RETURN new;
END;
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER finish_transfer BEFORE UPDATE ON transfer_dragon_history
FOR ROW EXECUTE PROCEDURE finish_transfer();