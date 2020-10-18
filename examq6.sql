CREATE TABLE Voyages (
  voyage            INTEGER NOT NULL,
  vessel            VARCHAR(50),
  departure         DATE,
  place_of_arrival  TEXT,
  comment           TEXT
);
COPY Voyages FROM 'input.csv' WITH (FORMAT CSV,HEADER,NULL 'n/a');