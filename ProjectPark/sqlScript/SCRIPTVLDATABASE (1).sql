use projectPark;

CREATE TABLE Clientes_db (
    idCliente INT AUTO_INCREMENT NOT NULL,
    Nome CHAR(100) NOT NULL,
    data_entrada DATETIME,
    CONSTRAINT pk_funcionarios PRIMARY KEY (idCliente)
)  ENGINE=INNODB;



CREATE TABLE VLCars (
    idCar INT AUTO_INCREMENT NOT NULL,
   	idCliente INT NOT NULL,
    License VARCHAR(10) NOT NULL,
    Model VARCHAR(21),
    dateIn DATETIME,
    dateOut DATETIME,
    CONSTRAINT pk_cars PRIMARY KEY (idCar),
    CONSTRAINT pk_cars_cliente foreign key (idCliente)
    references Clientes_db (idCliente)
)  ENGINE=INNODB;
    