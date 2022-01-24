CREATE OR REPLACE FUNCTION update_charssss(update_dragon_id int)
    RETURNS void AS
$$
DECLARE
    cur_char_type dragon_characteristic;
BEGIN
    FOR cur_char_type IN select char_type from action_type_influence where action_type = 'FEED'
        LOOP
            update dragon_characteristics
            set value = value + (select influence_value
                                 from action_type_influence
                                 where action_type_influence.char_type = cur_char_type
                                   AND action_type_influence.action_type = 'FEED')
            where dragon_id = update_dragon_id
              and dragon_characteristics.char_type = cur_char_type;
        END LOOP;
END;
$$ LANGUAGE 'plpgsql';

CREATE OR REPLACE FUNCTION updat(update_dragon_id int)
    RETURNS void AS
$$
DECLARE
    cur_char_type dragon_characteristic;
BEGIN
    FOR cur_char_type IN select char_type from action_type_influence where action_type = 'FEED'
        LOOP
            update dragon_characteristics
            set value = value + (select influence_value
                                 from action_type_influence
                                 where action_type_influence.char_type = cur_char_type
                                   AND action_type_influence.action_type = 'FEED')
            where dragon_id = update_dragon_id
              and dragon_characteristics.char_type = cur_char_type;
        END LOOP;
END;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION update_chars(update_dragon_id int, update_action_type action_type)
    RETURNS void AS
$$
DECLARE
    cur_char_type dragon_characteristic;
BEGIN
    FOR cur_char_type IN select char_type from action_type_influence where action_type = update_action_type
        LOOP
            update dragon_characteristics
            set value = value + (select influence_value
                                 from action_type_influence
                                 where action_type_influence.char_type = cur_char_type
                                   AND action_type_influence.action_type = update_action_type)
            where dragon_id = update_dragon_id
              and dragon_characteristics.char_type = cur_char_type;
        END LOOP;
END;
$$ LANGUAGE 'plpgsql';

call update_all_chars(1, 'HIT');

CREATE OR REPLACE FUNCTION check_is_not_relatives(cur_mother_id int, cur_father_id int)
    RETURNS bool AS
$$
DECLARE
    cur_child_id int;
BEGIN
    FOR cur_child_id IN SELECT child_id FROM children WHERE parents_id =
                                                            (SELECT id FROM dragon_couples WHERE
                                                                    mother_id = cur_mother_id OR
                                                                    father_id = cur_father_id LIMIT 1)
        LOOP
            IF (cur_child_id = cur_father_id OR cur_child_id = cur_mother_id OR cur_child_id IS NOT NULL)
            THEN
                RETURN FALSE;
            END IF;
        END LOOP;
    RETURN TRUE;
END;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION find_all_possible_couples()
    RETURNS TABLE(mother_id int, father_id int)
AS $$
DECLARE
    cur_type        int;
    cur_puberty_age int;
BEGIN
    FOR cur_type IN select id from dragon_types
        LOOP
            cur_puberty_age := (SELECT puberty_age FROM dragon_types WHERE id = cur_type);
            FOR mother_id IN SELECT id, gender
                             FROM dragons
                             WHERE dragon_status = 'ALIVE'
                               AND type_id = cur_type
                               AND EXTRACT(YEAR FROM AGE(date_of_birth)) >= cur_puberty_age
                               AND training_level != 'WILD'
                               AND gender = 'FEMALE'
                LOOP
                    FOR father_id IN SELECT id, gender
                                     FROM dragons
                                     WHERE dragon_status = 'ALIVE'
                                       AND type_id = cur_type
                                       AND EXTRACT(YEAR FROM AGE(date_of_birth)) >= cur_puberty_age
                                       AND training_level != 'WILD'
                                       AND gender = 'MALE'
                        LOOP
                            IF (check_relatives(mother_id, father_id))
                            THEN
                                RETURN next;
                            END IF;
                        END LOOP;
                END LOOP;
        END LOOP;
END;
$$ LANGUAGE 'plpgsql';


CREATE OR REPLACE FUNCTION check_transfer(transfer transfer_type, person_id int, dragon_abilities_id int[])
    RETURNS TABLE(id int) AS
$$
DECLARE
    cur_id int;
    reputation int;
    cur_class_id int;
    cur_type_id int;
BEGIN
    reputation := (SELECT reputation from people where id = person_id);
    IF ((reputation <= 60 AND transfer == 'PERMANENT') OR (reputation < 0))
    THEN
        RAISE EXCEPTION;
    END IF;

    FOR cur_id IN dragon_abilities_id
        LOOP
            FOR cur_class_id IN SELECT class_id FROM classes_to_abilities WHERE dragon_ability_id = cur_id
                LOOP
                    FOR cur_type_id IN SELECT id FROM dragon_types WHERE class_id = cur_class_id
                        LOOP
                            IF (transfer == 'PERMANENT')
                            THEN

                            ELSE
--                     SELECT id FROM dragons WHERE type_id = cur_type_id AND
                            END IF;
                        END LOOP;
                END LOOP;
        END LOOP;
END;
$$ LANGUAGE 'plpgsql';


select *
from dragons
         INNER JOIN cages c on c.id = dragons.cage_id
where dragon_status = 'ALIVE'
  AND (
        (cage_type = 'INCUBATOR' AND EXTRACT(YEAR FROM AGE(date_of_birth)) >=
                                     (SELECT hatching_age FROM dragon_types WHERE dragons.type_id = dragon_types.id)) OR
        (cage_type = 'NURSERY' AND EXTRACT(YEAR FROM AGE(date_of_birth)) >=
                                   (SELECT puberty_age FROM dragon_types WHERE dragons.type_id = dragon_types.id)) OR
        (cage_type = 'GENERAL' AND EXTRACT(YEAR FROM AGE(date_of_birth)) >=
                                   10 *
                                   (SELECT puberty_age FROM dragon_types WHERE dragons.type_id = dragon_types.id)));

--todo
-- Если дракон из пары был рожден на ферме (его id есть в таблице children),
-- то проверяется является ли его пара его родителем (запрещено создавать пары из детей и родителей).

--todo Совершать действия с драконом могут только работники, которые указаны
-- в dragon_carers_trainers со статусом true для этого дракона.

--todo У одного человека может одновременно быть только один дракон.
