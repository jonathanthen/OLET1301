CREATE TABLE Person (
  license   INTEGER     PRIMARY KEY,
  name      VARCHAR(50) NOT NULL
);

CREATE TABLE Car (
  regno     CHAR(6)    PRIMARY KEY,
  model     VARCHAR(30), 
  driver    INTEGER    DEFAULT(NULL)  REFERENCES Person(license)
);