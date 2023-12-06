CREATE TABLE Mascota (
  ID NUMBER PRIMARY KEY,
  Nombre VARCHAR2(255),
  Raza VARCHAR2(255),
  FechaNacimiento DATE,
  Especie VARCHAR2(255)
);

CREATE TABLE Cliente (
  DNI NUMBER PRIMARY KEY,
  Nombres VARCHAR2(255),
  Apellidos VARCHAR2(255),
  Telefono VARCHAR2(20),
  Direccion VARCHAR2(255),
  Correo VARCHAR2(255),
);

CREATE TABLE CLIENTE_MASCOTA (
  ID_CLIENTE NUMBER, 
	ID_MASCOTA NUMBER,
  CONSTRAINT fk_CM_Cliente FOREIGN KEY (ID_Cliente) REFERENCES Cliente(DNI_Cliente),
  CONSTRAINT fk_CM_Mascota FOREIGN KEY (ID_Mascota) REFERENCES Mascota(ID_Mascota)
)

CREATE TABLE Veterinario (
  DNI NUMBER PRIMARY KEY,
  Nombres VARCHAR2(255),
  Apellidos VARCHAR2(255),
  Telefono VARCHAR2(20),
  Direccion VARCHAR2(255),
  Correo VARCHAR2(255),
  Especialidad VARCHAR2(255)
);

CREATE TABLE Recepcionista (
  DNI NUMBER PRIMARY KEY,
  Nombres VARCHAR2(255),
  Apellidos VARCHAR2(255),
  Telefono VARCHAR2(20),
  Direccion VARCHAR2(255),
  Correo VARCHAR2(255)
);

CREATE TABLE Proveedor (
  ID NUMBER PRIMARY KEY,
  Nombre VARCHAR2(255),
  Telefono VARCHAR2(20),
  Correo VARCHAR2(255),
  Direccion VARCHAR2(255)
);

CREATE TABLE Cita (
  ID NUMBER PRIMARY KEY,
  FechaRegistro DATE,
  RazonCita VARCHAR2(255),
  ID_Cliente NUMBER,
  ID_Mascota NUMBER,
  ID_Veterinario NUMBER,
  CONSTRAINT fk_ClienteCita FOREIGN KEY (ID_Cliente) REFERENCES Cliente(DNI_Cliente),
  CONSTRAINT fk_MascotaCita FOREIGN KEY (ID_Mascota) REFERENCES Mascota(ID_Mascota),
  CONSTRAINT fk_VeterinarioCita FOREIGN KEY (ID_Veterinario) REFERENCES Veterinario(DNI_Veterinario)
);

CREATE TABLE Producto (
  ID NUMBER PRIMARY KEY,
  Nombre VARCHAR2(255),
  Descripcion VARCHAR2(255),
  Precio NUMBER,
  CantidadStock NUMBER,
  ID_Proveedor NUMBER,
  ID_Recepcionista NUMBER,
  CONSTRAINT fk_ProveedorProducto FOREIGN KEY (ID_Proveedor) REFERENCES Proveedor(ID_Proveedor),
  CONSTRAINT fk_RecepcionistaProducto FOREIGN KEY (ID_Recepcionista) REFERENCES Recepcionista(DNI_Recepcionista)
);

CREATE TABLE TransaccionCliente (
  ID NUMBER PRIMARY KEY,
  MomentoDia TIMESTAMP,
  Monto NUMBER,
  ID_Cliente NUMBER,
  ID_Producto NUMBER,
  CONSTRAINT fk_ClienteTransaccion FOREIGN KEY (ID_cliente) REFERENCES Cliente(DNI_Cliente),
  CONSTRAINT fk_ProductoTransaccion FOREIGN KEY (ID_producto) REFERENCES Producto(ID_Producto)
);

CREATE TABLE TransaccionProveedor (
  ID NUMBER PRIMARY KEY,
  MomentoDia TIMESTAMP,
  Monto NUMBER,
  ID_Proveedor NUMBER,
  ID_Instrumento NUMBER,
  CONSTRAINT fk_ProveedorTransaccion FOREIGN KEY (ID_proveedor) REFERENCES Proveedor(ID_Proveedor),
  CONSTRAINT fk_InstrumentoTransaccion FOREIGN KEY (ID_instrumento) REFERENCES InstrumentoMedico(ID_Instrumento)
);

CREATE TABLE InstrumentoMedico (
  ID NUMBER PRIMARY KEY,
  Nombre VARCHAR2(255),
  Descripcion VARCHAR2(255),
  PrecioCompra NUMBER,
  ID_Proveedor NUMBER,
  CONSTRAINT fk_ProveedorIM FOREIGN KEY (ID_Proveedor) REFERENCES Proveedor(ID_Proveedor)
);

CREATE TABLE HistoriaClinica (
  ID NUMBER PRIMARY KEY,
  FechaRegistro DATE,
  Diagnostico VARCHAR2(255),
  Tratamiento VARCHAR2(255),
  DNI_Cliente NUMBER,
  ID_Mascota NUMBER,
  CONSTRAINT fk_ClienteHC FOREIGN KEY (DNI_Cliente) REFERENCES Cliente(DNI_Cliente),
  CONSTRAINT fk_MascotaHC FOREIGN KEY (ID_Mascota) REFERENCES Mascota(ID_Mascota)
);
