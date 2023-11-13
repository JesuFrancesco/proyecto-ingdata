INSERT INTO Cliente (DNI_Cliente, Nombres, Apellidos, Telefono, Direccion, Correo, Pago, ID_Mascota) VALUES (12345678, 'Juan', 'Perez', '3456789', 'Calle 123', 'correo@example.com', 500, 1);
INSERT INTO Cliente (DNI_Cliente, Nombres, Apellidos, Telefono, Direccion, Correo, Pago, ID_Mascota) VALUES (9876543, 'María', 'Gutiérrez', '2345678', 'Calle 456', 'maria@example.com', 400, 2);
INSERT INTO Cliente (DNI_Cliente, Nombres, Apellidos, Telefono, Direccion, Correo, Pago, ID_Mascota) VALUES (3456789, 'Carlos', 'Rodríguez', '12345678', 'Calle 789', 'correo@example.com', 300, 3);
INSERT INTO Cliente (DNI_Cliente, Nombres, Apellidos, Telefono, Direccion, Correo, Pago, ID_Mascota) VALUES (2345678, 'Ana', 'López', '567890', 'Calle 123', 'ana@example.com', 200, 4);
INSERT INTO Cliente (DNI_Cliente, Nombres, Apellidos, Telefono, Direccion, Correo, Pago, ID_Mascota) VALUES (6789012, 'Fernando', 'García', '9876543', 'Calle 345', 'fernando@example.com', 450, 5);
INSERT INTO Cliente (DNI_Cliente, Nombres, Apellidos, Telefono, Direccion, Correo, Pago, ID_Mascota) VALUES (5678901, 'Marta', 'Hernández', '789012', 'Calle 567', 'marta@example.com', 350, 6);
INSERT INTO Cliente (DNI_Cliente, Nombres, Apellidos, Telefono, Direccion, Correo, Pago, ID_Mascota) VALUES (4567890, 'Isabel', 'Ramos', '2345678', 'Calle 987', 'isabel@example.com', 250, 7);
INSERT INTO Cliente (DNI_Cliente, Nombres, Apellidos, Telefono, Direccion, Correo, Pago, ID_Mascota) VALUES (12345678, 'Juan', 'Perez', '3456789', 'Calle 123', 'correo@example.com', 500, 1);
INSERT INTO Cliente (DNI_Cliente, Nombres, Apellidos, Telefono, Direccion, Correo, Pago, ID_Mascota) VALUES (9876543, 'María', 'Gutiérrez', '2345678', 'Calle 456', 'maria@example.com', 400, 2);
INSERT INTO Cliente (DNI_Cliente, Nombres, Apellidos, Telefono, Direccion, Correo, Pago, ID_Mascota) VALUES (3456789, 'Carlos', 'Rodríguez', '12345678', 'Calle 789', 'correo@example.com', 300, 3);

-- Values para la tabla Veterinario
INSERT INTO Veterinario (DNI_Veterinario, Nombres, Apellidos, Telefono, Direccion, Correo, Especialidad) VALUES (12345678, 'Pedro', 'García', '3456789', 'Calle 123', 'correo1@example.com', 'Cirugía');
INSERT INTO Veterinario (DNI_Veterinario, Nombres, Apellidos, Telefono, Direccion, Correo, Especialidad) VALUES (9876543, 'Laura', 'Martínez', '2345678', 'Calle 456', 'correo2@example.com', 'Dermatología');
INSERT INTO Veterinario (DNI_Veterinario, Nombres, Apellidos, Telefono, Direccion, Correo, Especialidad) VALUES (3456789, 'Carlos', 'Rodríguez', '12345678', 'Calle 789', 'correo3@example.com', 'Oftalmología');
INSERT INTO Veterinario (DNI_Veterinario, Nombres, Apellidos, Telefono, Direccion, Correo, Especialidad) VALUES (2345678, 'Ana', 'López', '567890', 'Calle 123', 'correo4@example.com', 'Cardiología');
INSERT INTO Veterinario (DNI_Veterinario, Nombres, Apellidos, Telefono, Direccion, Correo, Especialidad) VALUES (6789012, 'Fernando', 'García', '9876543', 'Calle 345', 'correo5@example.com', 'Neurología');
INSERT INTO Veterinario (DNI_Veterinario, Nombres, Apellidos, Telefono, Direccion, Correo, Especialidad) VALUES (5678901, 'Marta', 'Hernández', '789012', 'Calle 567', 'correo6@example.com', 'Oncología');
INSERT INTO Veterinario (DNI_Veterinario, Nombres, Apellidos, Telefono, Direccion, Correo, Especialidad) VALUES (4567890, 'Isabel', 'Ramos', '2345678', 'Calle 987', 'correo7@example.com', 'Endocrinología');
INSERT INTO Veterinario (DNI_Veterinario, Nombres, Apellidos, Telefono, Direccion, Correo, Especialidad) VALUES (12345678, 'Juan', 'Pérez', '3456789', 'Calle 123', 'correo8@example.com', 'Cirugía');
INSERT INTO Veterinario (DNI_Veterinario, Nombres, Apellidos, Telefono, Direccion, Correo, Especialidad) VALUES (9876543, 'María', 'Gutiérrez', '2345678', 'Calle 456', 'correo9@example.com', 'Dermatología');
INSERT INTO Veterinario (DNI_Veterinario, Nombres, Apellidos, Telefono, Direccion, Correo, Especialidad) VALUES (3456789, 'Carlos', 'Rodríguez', '12345678', 'Calle 789', 'correo10@example.com', 'Oftalmología');

-- Value para la tabla recepcionista
INSERT INTO Recepcionista (DNI_Recepcionista, Nombres, Apellidos, Telefono, Direccion, Correo) VALUES (0, 'Jose', 'Cardenas', '12345678', 'Calle 789', 'correo10@example.com')
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
VALUES (2, 'Collar', 'Collar ajustable de nylon', 7.50, 200, 54321);

INSERT INTO Producto (ID_Producto, Nombre, Descripcion, Precio, CantidadStock, ID_Proveedor) 
VALUES (3, 'Comida para perros', 'Comida premium', 29.99, 50, 67890);

INSERT INTO Producto (ID_Producto, Nombre, Descripcion, Precio, CantidadStock, ID_Proveedor) 
VALUES (4, 'Arena para gatos', 'Clumping cat litter', 15.75, 75, 24680);

INSERT INTO Producto (ID_Producto, Nombre, Descripcion, Precio, CantidadStock, ID_Proveedor) 
VALUES (5, 'Correa', 'Correa retraíble', 12.99, 120, 13579);

INSERT INTO Producto (ID_Producto, Nombre, Descripcion, Precio, CantidadStock, ID_Proveedor) 
VALUES (6, 'Comida para peces', 'Hojitas para peces tropicales', 5.99, 200, 98765);

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
