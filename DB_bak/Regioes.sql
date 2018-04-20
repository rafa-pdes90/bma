-- Create Table --

CREATE TABLE IF NOT EXISTS regiao (
  Id 	INT 		NOT NULL AUTO_INCREMENT,
  Nome 	VARCHAR(50) NOT NULL,
  PRIMARY KEY (Id)
);

-- Insert Data --

Insert into regiao (Id, Nome) values (1, 'Norte');
Insert into regiao (Id, Nome) values (2, 'Nordeste');
Insert into regiao (Id, Nome) values (3, 'Sudeste');
Insert into regiao (Id, Nome) values (4, 'Sul');
Insert into regiao (Id, Nome) values (5, 'Centro-Oeste');
