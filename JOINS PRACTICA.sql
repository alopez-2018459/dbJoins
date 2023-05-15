Drop database if exists DBInnerJoinIN5AM;
Create database DBInnerJoinIN5AM;

Use DBInnerJoinIN5AM;

create table Clientes(
	codigoCliente int not null auto_increment,
	nombreCliente varchar(60) not null,
	telefonoContacto varchar(8) not null,
	primary key PK_codigoCliente (codigoCliente)
);

Create table Pedidos(
	codigoPedido int not null,
    numeroFactura int not null,
    codigoCliente int not null,
    primary key PK_codigoPedido (codigoPedido),
    constraint FK_Pedidods_Clientes foreign key (codigoCliente)
		references Clientes(codigoCliente)
);

insert into Clientes (nombreCliente, telefonoContacto)
	values ('Pedro Armas', '24598890');
insert into Clientes (nombreCliente, telefonoContacto)
	values ('Jose Mancilla', '58446658');
insert into Clientes (nombreCliente, telefonoContacto)
	values ('Juan Carlos Gonzales', '22365544');
insert into Clientes (nombreCliente, telefonoContacto)
	values ('Sofia Rodriguez', '66215588');

select * from Clientes;

Insert into Pedidos (codigoPedido, numeroFactura, codigoCliente)
	values (105, 140, 4);
Insert into Pedidos (codigoPedido, numeroFactura, codigoCliente)
	values (106, 45, 2);
Insert into Pedidos (codigoPedido, numeroFactura, codigoCliente)
	values (107, 90, 3);
Insert into Pedidos (codigoPedido, numeroFactura, codigoCliente)
	values (108, 52, 4);
    
select * from Pedidos;

-- -------------------INNER JOIN------------------------

Select * from Clientes C Inner Join Pedidos P
	on C.codigoCliente = P.codigoCliente;
    
Select Clientes.nombreCliente, Pedidos.codigoPedido
	From Clientes Inner Join Pedidos
		on Clientes.codigoCliente = Pedidos.codigoCliente;

-- ------------------ LEFT JOIN ------------------------

Select * from Clientes LEFT JOIN Pedidos
	on Clientes.codigoCliente = Pedidos.codigoCliente;

Select Clientes.nombreCliente, Pedidos.codigoPedido
	from Clientes LEFT JOIN Pedidos
		on Clientes.codigoCliente = Pedidods.codigoCLiente;
	
-- --------------------- RIGHT JOIN --------------------

Select * from Clientes RIGHT JOIN Pedidos
	on Clientes.codigoCliente = Pedidos.codigoCliente;

Select Clientes.nombreCliente, Pedidos.codigoPedido
	from Clientes RIGHT JOIN Pedidos 
		on Clientes.codigoCliente = Pedidos.codigoCliente;

-- --------------------- OUTER JOIN ----------------------

Select * from Clientes FULL JOIN Pedidos
	on Clientes.codigoCliente = Pedidos.codigoPedidos;
    
Select * from Clientes LEFT JOIN Pedidos
	on Clientes.codigoCliente = Pedidos.codigoCliente
    
    UNION
    
Select * from Clientes RIGHT JOIN Pedidos
	on Clientes.codigoCliente = Pedidos.codigoCliente;
    
Select Clientes.nombreCliente, Pedidos.codigoPedido from Clientes, Pedidos;