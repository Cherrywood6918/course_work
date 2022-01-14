CREATE TYPE DAY_TIME AS ENUM ('day', 'night');
CREATE TYPE SEASON AS ENUM ('summer', 'autumn', 'winter', 'spring');
CREATE TYPE CAGE_TYPE AS ENUM ('general', 'incubator', 'nursery', 'couple');
CREATE TYPE GENDER AS ENUM ('male', 'female');
CREATE TYPE DRAGON_STATUS AS ENUM ('alive', 'escaped', 'death from old age', 'death due to poor care');
CREATE TYPE TRANSFER_TYPE AS ENUM ('permanent', 'temporal');
CREATE TYPE WORKER_TYPE AS ENUM ('tamer', 'caretaker', 'researcher', 'nanny');
CREATE TYPE SIZE AS ENUM ('small', 'medium', 'large', 'gigantic');
CREATE TYPE ACTION_TYPE AS ENUM ('feed', 'play', 'train', 'scold', 'hit', 'treat');
CREATE TYPE DRAGON_CHARACTERISTIC AS ENUM ('health', 'training', 'happiness');

CREATE TABLE IF NOT EXISTS classes
(
    id          SMALLSERIAL PRIMARY KEY,
    name        VARCHAR(30) NOT NULL UNIQUE,
    description TEXT
);
CREATE TABLE IF NOT EXISTS characteristic_levels
(
    id           SMALLSERIAL PRIMARY KEY,
    name         VARCHAR(15) NOT NULL,
    min_value    SMALLINT    NOT NULL CHECK (min_value >= 0),
    max_value    SMALLINT    NOT NULL CHECK (max_value >= 0),
    description  TEXT,
    char_type    DRAGON_CHARACTERISTIC
    CHECK(max_value > min_value)
);
CREATE TABLE IF NOT EXISTS dragon_appearance
(
    id        SMALLSERIAL PRIMARY KEY,
    size      SIZE        NOT NULL,
    color     VARCHAR(50) NOT NULL,
    fire_type VARCHAR(50) NOT NULL,
    features  TEXT        NOT NULL
);
CREATE TABLE IF NOT EXISTS food
(
    id   SMALLSERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL UNIQUE
);
CREATE TABLE IF NOT EXISTS dragon_types
(
    id            SMALLSERIAL PRIMARY KEY,
    name          VARCHAR(50) NOT NULL UNIQUE,
    class_id      SMALLINT    REFERENCES classes ON DELETE SET NULL ON UPDATE CASCADE,
    rarity	  NUMERIC     CHECK (rarity >= 0 AND rarity <= 1),
    way_of_taming TEXT,
    trainable     BOOLEAN     NOT NULL,
    abilities     TEXT,
    active_time   DAY_TIME    NOT NULL,
    mating_season SEASON      NOT NULL,
    hatching_age  SMALLINT    NOT NULL CHECK (hatching_age > 0),
    puberty_age   SMALLINT    NOT NULL CHECK (puberty_age > 0),
    appearance_id SMALLINT    UNIQUE REFERENCES dragon_appearance ON DELETE SET NULL ON UPDATE CASCADE,
    CHECK (puberty_age > hatching_age)
);
CREATE TABLE IF NOT EXISTS dragon_diet
(
    food_id        SMALLINT REFERENCES food ON DELETE CASCADE ON UPDATE CASCADE,
    dragon_type_id SMALLINT REFERENCES dragon_types ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (food_id, dragon_type_id)
);
CREATE TABLE IF NOT EXISTS cages
(
    id         SMALLSERIAL PRIMARY KEY,
    max_amount SMALLINT  NOT NULL CHECK (max_amount > 0),
    cage_type  CAGE_TYPE NOT NULL
);
CREATE TABLE IF NOT EXISTS dragons
(
    id            SERIAL PRIMARY KEY,
    name          VARCHAR(30)   NOT NULL UNIQUE,
    train_level_id   SMALLINT      REFERENCES characteristic_levels ON DELETE SET NULL ON UPDATE SET NULL,
    type_id       SMALLINT      REFERENCES dragon_types ON DELETE SET NULL ON UPDATE CASCADE,
    gender        GENDER,
    cage_id       SMALLINT      REFERENCES cages ON DELETE SET NULL ON UPDATE CASCADE,
    dragon_status DRAGON_STATUS NOT NULL,
    date_of_death DATE,
    date_of_birth DATE
);
CREATE TABLE IF NOT EXISTS dragon_characteristics
(
    value        SMALLINT NOT NULL CHECK (value > 0),
    char_type    DRAGON_CHARACTERISTIC,
    dragon_id    INT      NOT NULL REFERENCES dragons ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (char_type, dragon_id)
);
CREATE TABLE IF NOT EXISTS people
(
    id            SERIAL PRIMARY KEY,
    name          VARCHAR(20) NOT NULL,
    surname       VARCHAR(25) NOT NULL,
    date_of_birth DATE        NOT NULL,
    date_of_death DATE,
    gender        GENDER      NOT NULL,
    reputation    INT         NOT NULL DEFAULT 0,
    CHECK (date_of_death > date_of_birth)
);
CREATE TABLE IF NOT EXISTS transfer_dragon_results
(
    id                SMALLSERIAL PRIMARY KEY,
    name              VARCHAR(30) NOT NULL UNIQUE,
    reputation_points INT         NOT NULL
);
CREATE TABLE IF NOT EXISTS transfer_dragon_history
(
    result_id     SMALLINT      REFERENCES transfer_dragon_results ON DELETE SET NULL ON UPDATE CASCADE,
    transfer_type TRANSFER_TYPE NOT NULL,
    dragon_id     INT           REFERENCES dragons ON DELETE CASCADE ON UPDATE CASCADE,
    person_id     INT           REFERENCES people ON DELETE CASCADE ON UPDATE CASCADE,
    time_start    TIMESTAMP     NOT NULL,
    time_finish   TIMESTAMP,
    PRIMARY KEY (dragon_id, person_id),
    CHECK(time_finish > time_start)
);
CREATE TABLE IF NOT EXISTS workers
(
    id          SMALLSERIAL PRIMARY KEY,
    person_id   INT         NOT NULL UNIQUE REFERENCES people ON DELETE CASCADE ON UPDATE CASCADE,
    worker_type WORKER_TYPE NOT NULL,
    penalty     SMALLINT    NOT NULL DEFAULT 0 CHECK (penalty >= 0),
    status      BOOLEAN     NOT NULL,
    work_time   DAY_TIME    NOT NULL
);
CREATE TABLE IF NOT EXISTS caring_and_train_actions
(
    action_type    ACTION_TYPE,
    worker_id      SMALLINT  REFERENCES workers ON DELETE CASCADE ON UPDATE CASCADE,
    time_start     TIMESTAMP NOT NULL,
    time_finish    TIMESTAMP,
    dragon_id      INT       REFERENCES dragons  ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (worker_id, dragon_id),
    CHECK(time_finish > time_start)
);
CREATE TABLE IF NOT EXISTS action_type_influence
(
    influence_value SMALLINT NOT NULL,
    char_type       DRAGON_CHARACTERISTIC,
    action_type     ACTION_TYPE,
    PRIMARY KEY (char_type, action_type)
);
CREATE TABLE IF NOT EXISTS dragon_carers_trainers
(
    dragon_id INT     REFERENCES dragons ON DELETE CASCADE ON UPDATE CASCADE,
    worker_id INT     REFERENCES workers ON DELETE CASCADE ON UPDATE CASCADE,
    status    BOOLEAN NOT NULL,
    PRIMARY KEY (dragon_id, worker_id)
);
CREATE TABLE IF NOT EXISTS dragon_couples
(
    id        SMALLSERIAL PRIMARY KEY,
    mother_id INT NOT NULL REFERENCES dragons ON DELETE CASCADE ON UPDATE CASCADE,
    father_id INT NOT NULL REFERENCES dragons ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS children
(
    child_id      INT      PRIMARY KEY REFERENCES dragons ON DELETE CASCADE ON UPDATE CASCADE,
    parents_id    SMALLINT REFERENCES dragon_couples	ON DELETE SET NULL ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS terrains
(
    id        SMALLSERIAL PRIMARY KEY,
    name      VARCHAR(50) NOT NULL UNIQUE
);
CREATE TABLE IF NOT EXISTS places
(
    id        	SMALLSERIAL PRIMARY KEY,
    terrain_id  SMALLINT REFERENCES terrains ON DELETE CASCADE ON UPDATE CASCADE,
    name	VARCHAR(100) NOT NULL
);
CREATE TABLE IF NOT EXISTS habitat
(
    terrain_id	   SMALLINT REFERENCES terrains ON DELETE CASCADE ON UPDATE CASCADE, 	
    dragon_type_id SMALLINT REFERENCES dragon_types ON DELETE CASCADE ON UPDATE CASCADE,	
    PRIMARY KEY (terrain_id, dragon_type_id)
);
CREATE TABLE IF NOT EXISTS search_teams
(
    id        	SMALLSERIAL PRIMARY KEY,
    leader      SMALLINT NOT NULL UNIQUE
);
CREATE TABLE IF NOT EXISTS search_member
(
    worker_id    SMALLINT PRIMARY KEY REFERENCES workers ON DELETE CASCADE ON UPDATE CASCADE,
    number_team SMALLINT NOT NULL REFERENCES search_teams ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS orders
(
    id        	SERIAL    PRIMARY KEY,
    worker_id   SMALLINT  REFERENCES workers ON DELETE SET NULL ON UPDATE CASCADE,
    dragon_type SMALLINT  NOT NULL REFERENCES dragon_types ON DELETE CASCADE ON UPDATE CASCADE,
    status      BOOLEAN   NOT NULL,
    time	TIMESTAMP NOT NULL
);
CREATE TABLE IF NOT EXISTS search_outing
(
    id        	SERIAL     PRIMARY KEY,
    place_id    SMALLINT   NOT NULL REFERENCES places ON DELETE CASCADE ON UPDATE CASCADE,
    order_id    INT UNIQUE REFERENCES orders ON DELETE CASCADE ON UPDATE CASCADE,   		
    time_start  TIMESTAMP  NOT NULL,
    time_finish TIMESTAMP,
    result      BOOLEAN,
    team_id     SMALLINT   NOT NULL REFERENCES search_teams ON DELETE CASCADE ON UPDATE CASCADE,
    CHECK(time_finish > time_start)
);
CREATE TABLE IF NOT EXISTS find_types
(
    id   SMALLSERIAL PRIMARY KEY,	
    name VARCHAR(20) NOT NULL UNIQUE	
);
CREATE TABLE IF NOT EXISTS evidence
(
    id        	   SERIAL     PRIMARY KEY,
    find_type      SMALLINT  NOT NULL REFERENCES find_types ON DELETE CASCADE ON UPDATE CASCADE,
    characteristic VARCHAR(50) NOT NULL
);
CREATE TABLE IF NOT EXISTS search_types
(
    id   SMALLSERIAL PRIMARY KEY,	
    name TEXT NOT NULL UNIQUE	
);
CREATE TABLE IF NOT EXISTS seartch_history
(
    id        	     BIGSERIAL    PRIMARY KEY,
    search_outing_id INT NOT NULL REFERENCES search_outing ON DELETE CASCADE ON UPDATE CASCADE,
    searcher_id      SMALLINT  NOT NULL	REFERENCES search_member ON DELETE SET NULL ON UPDATE CASCADE,
    search_type      SMALLINT  NOT NULL REFERENCES search_types ON DELETE CASCADE ON UPDATE CASCADE,
    time_start       TIMESTAMP NOT NULL,
    time_finish      TIMESTAMP,
    evidence_id      INT       UNIQUE REFERENCES evidence ON DELETE CASCADE ON UPDATE CASCADE,
    CHECK (time_finish > time_start)
);  
CREATE TABLE IF NOT EXISTS messages
(
    id        	 SERIAL    PRIMARY KEY,
    place_id     SMALLINT  NOT NULL REFERENCES places ON DELETE CASCADE ON UPDATE CASCADE,
    dragon_types SMALLINT  NOT NULL,
    sender       SMALLINT  REFERENCES search_teams (leader) ON DELETE SET NULL ON UPDATE CASCADE,
    status       BOOLEAN   NOT NULL,
    sending_time TIMESTAMP NOT NULL,
    outing_id    INT       UNIQUE REFERENCES search_outing ON DELETE SET NULL ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS tamer_outing
(
    id        	SERIAL     PRIMARY KEY,
    worker_id       SMALLINT   NOT NULL REFERENCES workers ON DELETE CASCADE ON UPDATE CASCADE,
    message     INT UNIQUE REFERENCES  messages ON DELETE CASCADE ON UPDATE CASCADE,   		
    time_start  TIMESTAMP  NOT NULL,
    time_finish TIMESTAMP,
    result      BOOLEAN,
    dragon_id   INT        UNIQUE REFERENCES dragons ON DELETE CASCADE ON UPDATE CASCADE,
    CHECK(time_finish > time_start)
);
CREATE TABLE IF NOT EXISTS taming_stage
(
    id   SMALLSERIAL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE	
);
CREATE TABLE IF NOT EXISTS tamer_outing_history
(
    id        	     BIGSERIAL    PRIMARY KEY,
    tamer_outing_id  INT NOT NULL REFERENCES tamer_outing ON DELETE CASCADE ON UPDATE CASCADE,
    taming_stage_id  SMALLINT  NOT NULL REFERENCES taming_stage ON DELETE CASCADE ON UPDATE CASCADE,
    time_start       TIMESTAMP NOT NULL,
    time_finish      TIMESTAMP,
    dragon_reaction  BOOLEAN,
    CHECK (time_finish > time_start)
); 
CREATE TABLE IF NOT EXISTS things
(
    id   SERIAL      PRIMARY KEY,
    name VARCHAR(30) NOT NULL UNIQUE	
);
CREATE TABLE IF NOT EXISTS bag
(
    id   SERIAL      PRIMARY KEY,
    thing_id  	    INT REFERENCES things ON DELETE SET NULL ON UPDATE CASCADE,
    food_id  	    INT REFERENCES food ON DELETE SET NULL ON UPDATE CASCADE,
    tamer_outing_id INT NOT NULL REFERENCES tamer_outing ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS use_things
(
    tamer_outing_history_id   BIGINT NOT NULL REFERENCES tamer_outing_history ON DELETE CASCADE ON UPDATE CASCADE,
    bag_id	      	      INT NOT NULL REFERENCES bag ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (tamer_outing_history_id, bag_id)	
);