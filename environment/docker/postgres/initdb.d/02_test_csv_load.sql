COPY aaid_part FROM '/docker-entrypoint-initdb.d/aaid.csv' DELIMITER ',' CSV HEADER;
COPY idfa_part FROM '/docker-entrypoint-initdb.d/idfa.csv' DELIMITER ',' CSV HEADER;
COPY purchase_segment FROM '/docker-entrypoint-initdb.d/segment.csv' DELIMITER ',' CSV HEADER;

