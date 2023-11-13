-- Values para tabla Cita
INSERT INTO Cita (ID_Cita, FechaRegistro, RazonCita, ID_Cliente, ID_Mascota, ID_Veterinario) 
VALUES (1, '2023-11-13', 'Chequeo', 12345, 67890, 54321);

INSERT INTO Cita (ID_Cita, FechaRegistro, RazonCita, ID_Cliente, ID_Mascota, ID_Veterinario) 
VALUES (2, '2023-11-14', 'Vacunación', 54321, 24680, 98765);

INSERT INTO Cita (ID_Cita, FechaRegistro, RazonCita, ID_Cliente, ID_Mascota, ID_Veterinario) 
VALUES (3, '2023-11-15', 'Limpieza dental', 13579, 24680, 98765);

INSERT INTO Cita (ID_Cita, FechaRegistro, RazonCita, ID_Cliente, ID_Mascota, ID_Veterinario) 
VALUES (4, '2023-11-16', 'Tratado de heridas', 98765, 54321, 12345);

INSERT INTO Cita (ID_Cita, FechaRegistro, RazonCita, ID_Cliente, ID_Mascota, ID_Veterinario) 
VALUES (5, '2023-11-17', 'Esterilización', 24680, 12345, 54321);

INSERT INTO Cita (ID_Cita, FechaRegistro, RazonCita, ID_Cliente, ID_Mascota, ID_Veterinario) 
VALUES (6, '2023-11-18', 'Consulta', 67890, 54321, 12345);

-- Values para tabla producto
INSERT INTO Producto (ID_Producto, Nombre, Descripcion, Precio, CantidadStock, ID_Proveedor) 
VALUES (1, 'Shampoo', 'Shampoo para mascotas', 10.99, 100, 12345);

INSERT INTO Producto (ID_Producto, Nombre, Descripcion, Precio, CantidadStock, ID_Proveedor) 
VALUES (2, 'Collar', 'Collar Ajustable de nylon', 7.50, 200, 54321);

INSERT INTO Producto (ID_Producto, Nombre, Descripcion, Precio, CantidadStock, ID_Proveedor) 
VALUES (3, 'Comida para perros', 'Premium dry dog food', 29.99, 50, 67890);

INSERT INTO Producto (ID_Producto, Nombre, Descripcion, Precio, CantidadStock, ID_Proveedor) 
VALUES (4, 'Arena para gatos', 'Clumping cat litter', 15.75, 75, 24680);

INSERT INTO Producto (ID_Producto, Nombre, Descripcion, Precio, CantidadStock, ID_Proveedor) 
VALUES (5, 'Correa', 'Retractable dog leash', 12.99, 120, 13579);

INSERT INTO Producto (ID_Producto, Nombre, Descripcion, Precio, CantidadStock, ID_Proveedor) 
VALUES (6, 'Comida para peces', 'Tropical fish flakes', 5.99, 200, 98765);

-- Values para la tabla transaccion
INSERT INTO Transaccion (ID_Transaccion, Fecha, Hora, Tipo, ID_Cliente, ID_Proveedor) 
VALUES (1, '2023-11-13', '10:00:00', 'Venta', 12345, 54321);

INSERT INTO Transaccion (ID_Transaccion, Fecha, Hora, Tipo, ID_Cliente, ID_Proveedor) 
VALUES (2, '2023-11-14', '11:30:00', 'Compra', 54321, 67890);

INSERT INTO Transaccion (ID_Transaccion, Fecha, Hora, Tipo, ID_Cliente, ID_Proveedor) 
VALUES (3, '2023-11-15', '09:45:00', 'Venta', 13579, 24680);

INSERT INTO Transaccion (ID_Transaccion, Fecha, Hora, Tipo, ID_Cliente, ID_Proveedor) 
VALUES (4, '2023-11-16', '14:20:00', 'Compra', 98765, 12345);

INSERT INTO Transaccion (ID_Transaccion, Fecha, Hora, Tipo, ID_Cliente, ID_Proveedor) 
VALUES (5, '2023-11-17', '13:15:00', 'Venta', 24680, 54321);

INSERT INTO Transaccion (ID_Transaccion, Fecha, Hora, Tipo, ID_Cliente, ID_Proveedor) 
VALUES (6, '2023-11-18', '16:00:00', 'Compra', 67890, 98765);

-- Values para la tabla de mascota 
INSERT INTO Mascota (ID_Mascota, Nombre, Raza, FechaNacimiento, Especie) 
VALUES (1, 'Max', 'Labrador Retriever', '2019-05-01', 'Perro');

INSERT INTO Mascota (ID_Mascota, Nombre, Raza, FechaNacimiento, Especie) 
VALUES (2, 'Luna', 'Persian', '2020-02-14', 'Gato');

INSERT INTO Mascota (ID_Mascota, Nombre, Raza, FechaNacimiento, Especie) 
VALUES (3, 'Rocky', 'Bulldog', '2018-11-20', 'Perro');

INSERT INTO Mascota (ID_Mascota, Nombre, Raza, FechaNacimiento, Especie) 
VALUES (4, 'Simba', 'Siamese', '2019-07-10', 'Gato');

INSERT INTO Mascota (ID_Mascota, Nombre, Raza, FechaNacimiento, Especie) 
VALUES (5, 'Buddy', 'Golden Retriever', '2020-01-05', 'Perro');

INSERT INTO Mascota (ID_Mascota, Nombre, Raza, FechaNacimiento, Especie) 
VALUES (6, 'Milo', 'Maine Coon', '2019-09-22', 'Gato');

-- 
INSERT INTO InstrumentoMedico (ID_Instrumento, Nombre, Descripcion, PrecioCompra, PrecioVenta, ID_Proveedor) 
VALUES (1, 'Stethoscope', 'For auscultation', 50.99, 75.99, 12345);

INSERT INTO InstrumentoMedico (ID_Instrumento, Nombre, Descripcion, PrecioCompra, PrecioVenta, ID_Proveedor) 
VALUES (2, 'Surgical Scissors', 'For cutting sutures', 20.50, 35.99, 54321);

INSERT INTO InstrumentoMedico (ID_Instrumento, Nombre, Descripcion, PrecioCompra, PrecioVenta, ID_Proveedor) 
VALUES (3, 'Surgical Gloves', 'Sterile gloves for surgery', 10.99, 20.99, 67890);

INSERT INTO InstrumentoMedico (ID_Instrumento, Nombre, Descripcion, PrecioCompra, PrecioVenta, ID_Proveedor) 
VALUES (4, 'Surgical Masks', 'Disposable masks for surgery', 5.75, 10.99, 24680);

INSERT INTO InstrumentoMedico (ID_Instrumento, Nombre, Descripcion, PrecioCompra, PrecioVenta, ID_Proveedor) 
VALUES (5, 'Surgical Gowns', 'Sterile gowns for surgery', 25.99, 40.99, 13579);

INSERT INTO InstrumentoMedico (ID_Instrumento, Nombre, Descripcion, PrecioCompra, PrecioVenta, ID_Proveedor) 
VALUES (6, 'Surgical Drapes', 'Sterile drapes for surgery', 15.99, 30.99, 98765);
