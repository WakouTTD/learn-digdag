CREATE TABLE IF NOT EXISTS aaid_part (
--    id SERIAL PRIMARY KEY,
    aaid VARCHAR (50) NOT NULL,
    part_id VARCHAR (40) NOT NULL
);
CREATE INDEX aaid_index ON aaid_part (aaid);
CREATE INDEX aaid_part_index ON aaid_part (part_id);

CREATE TABLE IF NOT EXISTS idfa_part (
--    id SERIAL PRIMARY KEY,
    idfa VARCHAR (50) NOT NULL,
    part_id VARCHAR (40) NOT NULL
);
CREATE INDEX idfa_index ON idfa_part (idfa);
CREATE INDEX idfa_part_index ON idfa_part (part_id);

CREATE TABLE IF NOT EXISTS purchase_segment (
--    id SERIAL PRIMARY KEY,
    uuid VARCHAR (50) NOT NULL,
    category_id VARCHAR (40) NOT NULL
);
CREATE INDEX uuid_index ON purchase_segment (uuid);

CREATE TABLE IF NOT EXISTS merged_aaid (
    id SERIAL PRIMARY KEY,
    idfa VARCHAR (50) NOT NULL,
    program_id VARCHAR (40) NOT NULL
);
CREATE TABLE IF NOT EXISTS merged_idfa (
    id SERIAL PRIMARY KEY,
    aaid VARCHAR (50) NOT NULL,
    program_id VARCHAR (40) NOT NULL
);






