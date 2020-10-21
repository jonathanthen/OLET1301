 CREATE TABLE Ports (
   port_id  INTEGER,
   name     VARCHAR(50),
   state    TEXT
 );

  CREATE TABLE Voyages (
  voyage           INTEGER,
  vessel           VARCHAR(50),
  departure        DATE,
  place_of_arrival INTEGER,
  comment          TEXT
);

--primary key: Ports.port_id and Voyages.voyage
--foreign key: Voyages.place_of_arrival