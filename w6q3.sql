CREATE TABLE Measurements (
  station      VARCHAR(20) NOT NULL,
  obsdate      Date        NOT NULL,
  level_water  VARCHAR(20),
  discharge    FLOAT,
  temperature  FLOAT,
  ec25         FLOAT,
  PRIMARY KEY (station, obsdate)
);

COPY Measurements FROM 'Measurements.csv' WITH(FORMAT CSV, NULL '?', HEADER);

SELECT *
  FROM Measurements;