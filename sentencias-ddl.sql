CREATE TABLE Mascota (
  ID_Mascota NUMBER PRIMARY KEY,
  Nombre VARCHAR2(255),
  Raza VARCHAR2(255),
  FechaNacimiento DATE,
  Especie VARCHAR2(255)
);

CREATE TABLE Cliente (
  DNI_Cliente NUMBER PRIMARY KEY,
  Nombres VARCHAR2(255),
  Apellidos VARCHAR2(255),
  Telefono VARCHAR2(20),
  Direccion VARCHAR2(255),
  Correo VARCHAR2(255),
  Pago NUMBER,
  ID_Mascota NUMBER,
  CONSTRAINT fk_MascotaCliente FOREIGN KEY (ID_Mascota) REFERENCES Mascota(ID_Mascota)
);

CREATE TABLE Veterinario (
  DNI_Veterinario NUMBER PRIMARY KEY,
  Nombres VARCHAR2(255),
  Apellidos VARCHAR2(255),
  Telefono VARCHAR2(20),
  Direccion VARCHAR2(255),
  Correo VARCHAR2(255),
  Especialidad VARCHAR2(255)
);

CREATE TABLE Recepcionista (
  DNI_Recepcionista NUMBER PRIMARY KEY,
  Nombres VARCHAR2(255),
  Apellidos VARCHAR2(255),
  Telefono VARCHAR2(20),
  Direccion VARCHAR2(255),
  Correo VARCHAR2(255)
);

CREATE TABLE Proveedor (
  ID_Proveedor NUMBER PRIMARY KEY,
  Nombre VARCHAR2(255),
  Telefono VARCHAR2(20),
  Correo VARCHAR2(255),
  Direccion VARCHAR2(255)
);

CREATE TABLE Cita (
  ID_Cita NUMBER PRIMARY KEY,
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
  ID_Producto NUMBER PRIMARY KEY,
  Nombre VARCHAR2(255),
  Descripcion VARCHAR2(255),
  Precio NUMBER,
  CantidadStock NUMBER,
  ID_Proveedor NUMBER,
  ID_Recepcionista NUMBER,
  CONSTRAINT fk_ProveedorProducto FOREIGN KEY (ID_Proveedor) REFERENCES Proveedor(ID_Proveedor),
  CONSTRAINT fk_RecepcionistaProducto FOREIGN KEY (ID_Recepcionista) REFERENCES Recepcionista(DNI_Recepcionista)
);

CREATE TABLE Transaccion (
  ID_Transaccion NUMBER PRIMARY KEY,
  MomentoDia TIMESTAMP,
  Tipo VARCHAR2(255),
  Monto NUMBER,
  ID_Cliente NUMBER,
  ID_Proveedor NUMBER,
  CONSTRAINT fk_ClienteTransaccion FOREIGN KEY (ID_Cliente) REFERENCES Cliente(DNI_Cliente),
  CONSTRAINT fk_ProveedorTransaccion FOREIGN KEY (ID_Proveedor) REFERENCES Proveedor(ID_Proveedor)
);

CREATE TABLE InstrumentoMedico (
  ID_Instrumento NUMBER PRIMARY KEY,
  Nombre VARCHAR2(255),
  Descripcion VARCHAR2(255),
  PrecioCompra NUMBER,
  PrecioVenta NUMBER,
  ID_Proveedor NUMBER,
  CONSTRAINT fk_ProveedorIM FOREIGN KEY (ID_Proveedor) REFERENCES Proveedor(ID_Proveedor)
);

CREATE TABLE HistoriaClinica (
  ID_Historia NUMBER PRIMARY KEY,
  FechaRegistro DATE,
  Diagnostico VARCHAR2(255),
  Tratamiento VARCHAR2(255),
  DNI_Cliente NUMBER,
  ID_Mascota NUMBER,
  CONSTRAINT fk_ClienteHC FOREIGN KEY (DNI_Cliente) REFERENCES Cliente(DNI_Cliente),
  CONSTRAINT fk_MascotaHC FOREIGN KEY (ID_Mascota) REFERENCES Mascota(ID_Mascota)
);
