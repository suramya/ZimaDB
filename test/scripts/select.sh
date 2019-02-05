#!/bin/bash

../../bin/zimadb <<EOF
.debug off
.open ahoj.zima
CREATE TABLE rostlinka (age int, name varchar);
INSERT INTO rostlinka (age, name) values (24, "Sofie");
INSERT INTO rostlinka (name, age) values ("Oldřich", 11);
SELECT name, age/12 FROM rostlinka;
TRUNCATE TABLE rostlinka;
INSERT INTO rostlinka (age, name) values (24, "Sofie");
SELECT name, age/12 FROM rostlinka;
EOF