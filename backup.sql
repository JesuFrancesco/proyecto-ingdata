--------------------------------------------------------
-- Archivo creado  - jueves-noviembre-23-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CITA
--------------------------------------------------------

  CREATE TABLE "INGDATA"."CITA" 
   (	"ID_CITA" NUMBER, 
	"FECHAREGISTRO" DATE, 
	"RAZONCITA" VARCHAR2(255 BYTE), 
	"ID_CLIENTE" NUMBER, 
	"ID_MASCOTA" NUMBER, 
	"ID_VETERINARIO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TSI_USERDB" ;
--------------------------------------------------------
--  DDL for Table CLIENTE
--------------------------------------------------------

  CREATE TABLE "INGDATA"."CLIENTE" 
   (	"DNI_CLIENTE" NUMBER, 
	"NOMBRES" VARCHAR2(255 BYTE), 
	"APELLIDOS" VARCHAR2(255 BYTE), 
	"TELEFONO" VARCHAR2(20 BYTE), 
	"DIRECCION" VARCHAR2(255 BYTE), 
	"CORREO" VARCHAR2(255 BYTE), 
	"ID_MASCOTA" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TSI_USERDB" ;
--------------------------------------------------------
--  DDL for Table HISTORIACLINICA
--------------------------------------------------------

  CREATE TABLE "INGDATA"."HISTORIACLINICA" 
   (	"ID_HISTORIA" NUMBER, 
	"FECHAREGISTRO" DATE, 
	"DIAGNOSTICO" VARCHAR2(255 BYTE), 
	"TRATAMIENTO" VARCHAR2(255 BYTE), 
	"DNI_CLIENTE" NUMBER, 
	"ID_MASCOTA" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TSI_USERDB" ;
--------------------------------------------------------
--  DDL for Table INSTRUMENTOMEDICO
--------------------------------------------------------

  CREATE TABLE "INGDATA"."INSTRUMENTOMEDICO" 
   (	"ID_INSTRUMENTO" NUMBER, 
	"NOMBRE" VARCHAR2(255 BYTE), 
	"DESCRIPCION" VARCHAR2(255 BYTE), 
	"PRECIOCOMPRA" NUMBER, 
	"ID_PROVEEDOR" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TSI_USERDB" ;
--------------------------------------------------------
--  DDL for Table MASCOTA
--------------------------------------------------------

  CREATE TABLE "INGDATA"."MASCOTA" 
   (	"ID_MASCOTA" NUMBER, 
	"NOMBRE" VARCHAR2(255 BYTE), 
	"RAZA" VARCHAR2(255 BYTE), 
	"FECHANACIMIENTO" DATE, 
	"ESPECIE" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TSI_USERDB" ;
--------------------------------------------------------
--  DDL for Table PRODUCTO
--------------------------------------------------------

  CREATE TABLE "INGDATA"."PRODUCTO" 
   (	"ID_PRODUCTO" NUMBER, 
	"NOMBRE" VARCHAR2(255 BYTE), 
	"DESCRIPCION" VARCHAR2(255 BYTE), 
	"PRECIO" NUMBER, 
	"CANTIDADSTOCK" NUMBER, 
	"ID_PROVEEDOR" NUMBER, 
	"ID_RECEPCIONISTA" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TSI_USERDB" ;
--------------------------------------------------------
--  DDL for Table PROVEEDOR
--------------------------------------------------------

  CREATE TABLE "INGDATA"."PROVEEDOR" 
   (	"ID_PROVEEDOR" NUMBER, 
	"NOMBRE" VARCHAR2(255 BYTE), 
	"TELEFONO" VARCHAR2(20 BYTE), 
	"CORREO" VARCHAR2(255 BYTE), 
	"DIRECCION" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TSI_USERDB" ;
--------------------------------------------------------
--  DDL for Table RECEPCIONISTA
--------------------------------------------------------

  CREATE TABLE "INGDATA"."RECEPCIONISTA" 
   (	"DNI_RECEPCIONISTA" NUMBER, 
	"NOMBRES" VARCHAR2(255 BYTE), 
	"APELLIDOS" VARCHAR2(255 BYTE), 
	"TELEFONO" VARCHAR2(20 BYTE), 
	"DIRECCION" VARCHAR2(255 BYTE), 
	"CORREO" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TSI_USERDB" ;
--------------------------------------------------------
--  DDL for Table TRANSACCIONCLIENTE
--------------------------------------------------------

  CREATE TABLE "INGDATA"."TRANSACCIONCLIENTE" 
   (	"ID_TRANSACCION" NUMBER, 
	"MOMENTODIA" TIMESTAMP (6), 
	"MONTO" NUMBER, 
	"ID_CLIENTE" NUMBER, 
	"ID_PRODUCTO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TSI_USERDB" ;
--------------------------------------------------------
--  DDL for Table TRANSACCIONPROVEEDOR
--------------------------------------------------------

  CREATE TABLE "INGDATA"."TRANSACCIONPROVEEDOR" 
   (	"ID_TRANSACCION" NUMBER, 
	"MOMENTODIA" TIMESTAMP (6), 
	"MONTO" NUMBER, 
	"ID_PROVEEDOR" NUMBER, 
	"ID_INSTRUMENTO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TSI_USERDB" ;
--------------------------------------------------------
--  DDL for Table VETERINARIO
--------------------------------------------------------

  CREATE TABLE "INGDATA"."VETERINARIO" 
   (	"DNI_VETERINARIO" NUMBER, 
	"NOMBRES" VARCHAR2(255 BYTE), 
	"APELLIDOS" VARCHAR2(255 BYTE), 
	"TELEFONO" VARCHAR2(20 BYTE), 
	"DIRECCION" VARCHAR2(255 BYTE), 
	"CORREO" VARCHAR2(255 BYTE), 
	"ESPECIALIDAD" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TSI_USERDB" ;
REM INSERTING into INGDATA.CITA
SET DEFINE OFF;
Insert into INGDATA.CITA (ID_CITA,FECHAREGISTRO,RAZONCITA,ID_CLIENTE,ID_MASCOTA,ID_VETERINARIO) values ('1',to_date('15/11/23','DD/MM/RR'),'Consulta general','22334455','1','1');
Insert into INGDATA.CITA (ID_CITA,FECHAREGISTRO,RAZONCITA,ID_CLIENTE,ID_MASCOTA,ID_VETERINARIO) values ('2',to_date('15/11/23','DD/MM/RR'),'Vacunaci??n','33445566','2','1');
Insert into INGDATA.CITA (ID_CITA,FECHAREGISTRO,RAZONCITA,ID_CLIENTE,ID_MASCOTA,ID_VETERINARIO) values ('3',to_date('15/11/23','DD/MM/RR'),'Revisi??n dental','44556677','3','2');
Insert into INGDATA.CITA (ID_CITA,FECHAREGISTRO,RAZONCITA,ID_CLIENTE,ID_MASCOTA,ID_VETERINARIO) values ('4',to_date('15/11/23','DD/MM/RR'),'Desparasitaci??n','55667788','4','2');
Insert into INGDATA.CITA (ID_CITA,FECHAREGISTRO,RAZONCITA,ID_CLIENTE,ID_MASCOTA,ID_VETERINARIO) values ('5',to_date('15/11/23','DD/MM/RR'),'Cirug??a','66778899','8','3');
Insert into INGDATA.CITA (ID_CITA,FECHAREGISTRO,RAZONCITA,ID_CLIENTE,ID_MASCOTA,ID_VETERINARIO) values ('6',to_date('15/11/23','DD/MM/RR'),'Control de peso','77889900','10','3');
Insert into INGDATA.CITA (ID_CITA,FECHAREGISTRO,RAZONCITA,ID_CLIENTE,ID_MASCOTA,ID_VETERINARIO) values ('7',to_date('15/11/23','DD/MM/RR'),'Esterilizaci??n','88990011','7','1');
Insert into INGDATA.CITA (ID_CITA,FECHAREGISTRO,RAZONCITA,ID_CLIENTE,ID_MASCOTA,ID_VETERINARIO) values ('8',to_date('15/11/23','DD/MM/RR'),'Examen de sangre','99001122','9','2');
Insert into INGDATA.CITA (ID_CITA,FECHAREGISTRO,RAZONCITA,ID_CLIENTE,ID_MASCOTA,ID_VETERINARIO) values ('9',to_date('15/11/23','DD/MM/RR'),'Consulta dermatol??gica','10112233','5','3');
Insert into INGDATA.CITA (ID_CITA,FECHAREGISTRO,RAZONCITA,ID_CLIENTE,ID_MASCOTA,ID_VETERINARIO) values ('10',to_date('15/11/23','DD/MM/RR'),'Radiograf??a','12131415','6','2');
Insert into INGDATA.CITA (ID_CITA,FECHAREGISTRO,RAZONCITA,ID_CLIENTE,ID_MASCOTA,ID_VETERINARIO) values ('11',to_date('15/11/23','DD/MM/RR'),'Consulta general','13141516','1','1');
Insert into INGDATA.CITA (ID_CITA,FECHAREGISTRO,RAZONCITA,ID_CLIENTE,ID_MASCOTA,ID_VETERINARIO) values ('12',to_date('15/11/23','DD/MM/RR'),'Vacunaci??n','14151617','2','1');
Insert into INGDATA.CITA (ID_CITA,FECHAREGISTRO,RAZONCITA,ID_CLIENTE,ID_MASCOTA,ID_VETERINARIO) values ('13',to_date('15/11/23','DD/MM/RR'),'Revisi??n dental','15161718','3','2');
Insert into INGDATA.CITA (ID_CITA,FECHAREGISTRO,RAZONCITA,ID_CLIENTE,ID_MASCOTA,ID_VETERINARIO) values ('14',to_date('15/11/23','DD/MM/RR'),'Desparasitaci??n','16171819','4','2');
Insert into INGDATA.CITA (ID_CITA,FECHAREGISTRO,RAZONCITA,ID_CLIENTE,ID_MASCOTA,ID_VETERINARIO) values ('15',to_date('15/11/23','DD/MM/RR'),'Cirug??a','17181920','8','3');
Insert into INGDATA.CITA (ID_CITA,FECHAREGISTRO,RAZONCITA,ID_CLIENTE,ID_MASCOTA,ID_VETERINARIO) values ('16',to_date('15/11/23','DD/MM/RR'),'Control de peso','18192021','10','3');
REM INSERTING into INGDATA.CLIENTE
SET DEFINE OFF;
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('71234567','Juan Pablo','Perez Rodriguez','912345678','Calle 123, Lima','juan.perez@gmail.com','1');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('82345678','Ana Sofia','Gomez Lopez','923456789','Av. Principal 456, Arequipa','ana.gomez@gmail.com','2');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('93456789','Diego Alejandro','Rodriguez Chavez','934567890','Jr. Independencia 789, Trujillo','diego.rodriguez@gmail.com','3');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('84567890','Maria Fernanda','Lopez Torres','945678901','Calle Central 101, Cusco','maria.lopez@gmail.com','4');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('95678901','Carlos Eduardo','Fernandez Diaz','956789012','Av. America 202, Piura','carlos.fernandez@gmail.com','5');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('56789012','Luis Angel','Torres Gutierrez','967890123','Jr. Bolognesi 303, Iquitos','luis.torres@gmail.com','6');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('67890123','Carmen Sofia','Martinez Castro','978901234','Calle de los Pajaros 404, Chiclayo','carmen.martinez@gmail.com','7');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('78901234','Pedro Jose','Garcia Huaman','989012345','Av. de las Flores 505, Huancayo','pedro.garcia@gmail.com','8');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('89012345','Laura Valentina','Sanchez Mendoza','990123456','Jr. de las Estrellas 606, Tacna','laura.sanchez@gmail.com','9');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('11223344','Jorge Luis','Herrera Torres','991234567','Calle Luna 707, Cajamarca','jorge.herrera@gmail.com','10');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('22334455','Silvia Isabel','Diaz Mendoza','992345678','Av. del Sol 808, Ayacucho','silvia.diaz@gmail.com','11');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('33445566','Raul Alonso','Ramirez Luna','993456789','Jr. de los Suenos 909, Pucallpa','raul.ramirez@gmail.com','12');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('44556677','Alicia Gabriela','Fuentes Ortega','994567890','Calle de las Montanas 1010, Chimbote','alicia.fuentes@gmail.com','13');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('55667788','Gabriel Andres','Ortiz Silva','995678901','Av. de las Olas 1111, Huaraz','gabriel.ortiz@gmail.com','14');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('66778899','Valeria Raquel','Casta?eda Huaman','996789012','Jr. del Viento 1212, Tarapoto','valeria.castaneda@gmail.com','15');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('77889900','Daniel Arturo','Vargas Paredes','997890123','Calle de las Palmeras 1313, Ica','daniel.vargas@gmail.com','16');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('88990011','Monica Carolina','Chavez Moreno','998901234','Av. de los Suenos 1414, Huacho','monica.chavez@gmail.com','17');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('99001122','Sergio Alberto','Luna Mendoza','999012345','Jr. de las Mariposas 1515, Chincha','sergio.luna@gmail.com','18');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('10112233','Isabel Cristina','Mendoza Paredes','910111213','Calle de las Colinas 1616, Tumbes','isabel.mendoza@gmail.com','19');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('12131415','Roberto Carlos','Paredes Huaman','911121314','Av. de los Rios 1717, Puno','roberto.paredes@gmail.com','20');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('13141516','Gloria Patricia','Flores Diaz','912131415','Calle de las Cataratas 1919, Jauja','gloria.flores@gmail.com','21');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('14151617','Arturo Alejandro','Villanueva Castro','913141516','Calle de las Montanas 2020, Chimbote','arturo.villanueva@gmail.com','22');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('15161718','Marta Elena','Cordova Salas','914151617','Av. de las Palmeras 2121, Chiclayo','marta.cordova@gmail.com','23');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('16171819','Hector Enrique','Alvarez Gutierrez','915161718','Jr. de los Bosques 2222, Chimbote','hector.alvarez@gmail.com','24');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('17181920','Lucia Gabriela','Guerrero Gutierrez','916171819','Calle de las Colinas 2323, Trujillo','lucia.guerrero@gmail.com','25');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('18192021','Alejandro Martin','Arias Navarro','917181920','Av. de los Rios 2424, Huancayo','alejandro.arias@gmail.com','26');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('19202122','Natalia Alejandra','Salas Silva','918192021','Jr. de los Bosques 2424, Huancayo','natalia.salas@gmail.com','27');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('20212223','Ricardo Alberto','Lopez Silva','919202122','Calle de los Pajaros 2525, Piura','ricardo.lopez@gmail.com','28');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('21222324','Elena Maria','Silva Luna','920212223','Av. America 2626, Pucallpa','elena.silva@gmail.com','29');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('22232425','Juan Jose','Moreno Huaman','921222324','Jr. Independencia 2727, Tacna','juan.moreno@gmail.com','30');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('23242526','Liliana Patricia','Navarro Ortega','922232425','Calle de las Mariposas 2828, Ayacucho','liliana.navarro@gmail.com','31');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('24252627','Martin Eduardo','Pinto Mendoza','923242526','Av. del Sol 2929, Arequipa','martin.pinto@gmail.com','32');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('25262728','Sofia Isabel','Castillo Silva','924252627','Jr. de las Aves 3030, Huacho','sofia.castillo@gmail.com','33');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('26272829','Roberto Miguel','Diaz Paredes','925262728','Calle Luna 3131, Cajamarca','roberto.diaz@gmail.com','34');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('27282930','Valentina Alejandra','Cabrera Mendoza','926272829','Av. de las Olas 3232, Puno','valentina.cabrera@gmail.com','35');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('28293031','Carlos Enrique','Valdez Luna','927282930','Jr. de las Mariposas 3333, Huaraz','carlos.valdez@gmail.com','36');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('29303132','Ana Gabriela','Herrera Torres','928293031','Calle de las Colinas 3434, Chiclayo','ana.herrera@gmail.com','37');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('30313233','Luis Eduardo','Lara Huaman','929303132','Av. de los Rios 3535, Ica','luis.lara@gmail.com','38');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('31323334','Marta Patricia','Gutierrez Castro','930313233','Jr. de los Bosques 3636, Trujillo','marta.gutierrez@gmail.com','39');
Insert into INGDATA.CLIENTE (DNI_CLIENTE,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ID_MASCOTA) values ('32333435','Jose Eduardo','Carrasco Mendoza','931323334','Calle de las Mariposas 3737, Lima','jose.carrasco@gmail.com','40');
REM INSERTING into INGDATA.HISTORIACLINICA
SET DEFINE OFF;
Insert into INGDATA.HISTORIACLINICA (ID_HISTORIA,FECHAREGISTRO,DIAGNOSTICO,TRATAMIENTO,DNI_CLIENTE,ID_MASCOTA) values ('1',to_date('14/02/20','DD/MM/RR'),'Fiebre y malestar general','Antibi??ticos y reposo','71234567','11');
Insert into INGDATA.HISTORIACLINICA (ID_HISTORIA,FECHAREGISTRO,DIAGNOSTICO,TRATAMIENTO,DNI_CLIENTE,ID_MASCOTA) values ('2',to_date('27/04/21','DD/MM/RR'),'Problemas gastrointestinales','Cambio en la dieta y medicamentos','82345678','12');
Insert into INGDATA.HISTORIACLINICA (ID_HISTORIA,FECHAREGISTRO,DIAGNOSTICO,TRATAMIENTO,DNI_CLIENTE,ID_MASCOTA) values ('3',to_date('10/01/22','DD/MM/RR'),'Dolor en las articulaciones','Antiinflamatorios y reposo','93456789','13');
Insert into INGDATA.HISTORIACLINICA (ID_HISTORIA,FECHAREGISTRO,DIAGNOSTICO,TRATAMIENTO,DNI_CLIENTE,ID_MASCOTA) values ('4',to_date('05/03/23','DD/MM/RR'),'Infecci??n en el o??do','Gotas para los o??dos y antibi??ticos','84567890','14');
Insert into INGDATA.HISTORIACLINICA (ID_HISTORIA,FECHAREGISTRO,DIAGNOSTICO,TRATAMIENTO,DNI_CLIENTE,ID_MASCOTA) values ('5',to_date('20/05/20','DD/MM/RR'),'Problemas dentales','Extracci??n de dientes y cuidado dental','95678901','15');
Insert into INGDATA.HISTORIACLINICA (ID_HISTORIA,FECHAREGISTRO,DIAGNOSTICO,TRATAMIENTO,DNI_CLIENTE,ID_MASCOTA) values ('6',to_date('12/08/21','DD/MM/RR'),'Herida en la pata','Limpieza y vendaje','56789012','16');
Insert into INGDATA.HISTORIACLINICA (ID_HISTORIA,FECHAREGISTRO,DIAGNOSTICO,TRATAMIENTO,DNI_CLIENTE,ID_MASCOTA) values ('7',to_date('28/02/22','DD/MM/RR'),'Problemas respiratorios','Antibi??ticos y cuidado en casa','67890123','17');
Insert into INGDATA.HISTORIACLINICA (ID_HISTORIA,FECHAREGISTRO,DIAGNOSTICO,TRATAMIENTO,DNI_CLIENTE,ID_MASCOTA) values ('8',to_date('08/06/23','DD/MM/RR'),'Alergias cut??neas','Medicamentos antial??rgicos y ba??os especiales','78901234','18');
Insert into INGDATA.HISTORIACLINICA (ID_HISTORIA,FECHAREGISTRO,DIAGNOSTICO,TRATAMIENTO,DNI_CLIENTE,ID_MASCOTA) values ('9',to_date('15/11/20','DD/MM/RR'),'Problemas oculares','Gotas para los ojos y revisi??n peri??dica','89012345','19');
Insert into INGDATA.HISTORIACLINICA (ID_HISTORIA,FECHAREGISTRO,DIAGNOSTICO,TRATAMIENTO,DNI_CLIENTE,ID_MASCOTA) values ('10',to_date('30/01/21','DD/MM/RR'),'Fractura en una pata','Inmovilizaci??n y cirug??a','11223344','20');
Insert into INGDATA.HISTORIACLINICA (ID_HISTORIA,FECHAREGISTRO,DIAGNOSTICO,TRATAMIENTO,DNI_CLIENTE,ID_MASCOTA) values ('11',to_date('22/03/22','DD/MM/RR'),'Problemas gastrointestinales','Cambios en la dieta y medicamentos','22334455','21');
Insert into INGDATA.HISTORIACLINICA (ID_HISTORIA,FECHAREGISTRO,DIAGNOSTICO,TRATAMIENTO,DNI_CLIENTE,ID_MASCOTA) values ('12',to_date('05/05/23','DD/MM/RR'),'Dolor en las articulaciones','Antiinflamatorios y reposo','33445566','22');
Insert into INGDATA.HISTORIACLINICA (ID_HISTORIA,FECHAREGISTRO,DIAGNOSTICO,TRATAMIENTO,DNI_CLIENTE,ID_MASCOTA) values ('13',to_date('18/02/20','DD/MM/RR'),'Infecci??n en el o??do','Gotas para los o??dos y antibi??ticos','44556677','23');
Insert into INGDATA.HISTORIACLINICA (ID_HISTORIA,FECHAREGISTRO,DIAGNOSTICO,TRATAMIENTO,DNI_CLIENTE,ID_MASCOTA) values ('14',to_date('03/04/21','DD/MM/RR'),'Problemas dentales','Extracci??n de dientes y cuidado dental','55667788','24');
Insert into INGDATA.HISTORIACLINICA (ID_HISTORIA,FECHAREGISTRO,DIAGNOSTICO,TRATAMIENTO,DNI_CLIENTE,ID_MASCOTA) values ('15',to_date('17/06/22','DD/MM/RR'),'Herida en la pata','Limpieza y vendaje','66778899','25');
Insert into INGDATA.HISTORIACLINICA (ID_HISTORIA,FECHAREGISTRO,DIAGNOSTICO,TRATAMIENTO,DNI_CLIENTE,ID_MASCOTA) values ('16',to_date('05/01/23','DD/MM/RR'),'Problemas respiratorios','Antibi??ticos y cuidado en casa','77889900','26');
Insert into INGDATA.HISTORIACLINICA (ID_HISTORIA,FECHAREGISTRO,DIAGNOSTICO,TRATAMIENTO,DNI_CLIENTE,ID_MASCOTA) values ('17',to_date('23/09/20','DD/MM/RR'),'Alergias cut??neas','Medicamentos antial??rgicos y ba??os especiales','88990011','27');
Insert into INGDATA.HISTORIACLINICA (ID_HISTORIA,FECHAREGISTRO,DIAGNOSTICO,TRATAMIENTO,DNI_CLIENTE,ID_MASCOTA) values ('18',to_date('08/11/21','DD/MM/RR'),'Problemas oculares','Gotas para los ojos y revisi??n peri??dica','99001122','28');
Insert into INGDATA.HISTORIACLINICA (ID_HISTORIA,FECHAREGISTRO,DIAGNOSTICO,TRATAMIENTO,DNI_CLIENTE,ID_MASCOTA) values ('19',to_date('19/02/22','DD/MM/RR'),'Fractura en una pata','Inmovilizaci??n y cirug??a','10112233','29');
Insert into INGDATA.HISTORIACLINICA (ID_HISTORIA,FECHAREGISTRO,DIAGNOSTICO,TRATAMIENTO,DNI_CLIENTE,ID_MASCOTA) values ('20',to_date('12/04/23','DD/MM/RR'),'Problemas gastrointestinales','Cambios en la dieta y medicamentos','12131415','30');
REM INSERTING into INGDATA.INSTRUMENTOMEDICO
SET DEFINE OFF;
Insert into INGDATA.INSTRUMENTOMEDICO (ID_INSTRUMENTO,NOMBRE,DESCRIPCION,PRECIOCOMPRA,ID_PROVEEDOR) values ('1','Estetoscopio','Un instrumento que permite auscultar los sonidos del coraz?n y los pulmones de los animales','150','4');
Insert into INGDATA.INSTRUMENTOMEDICO (ID_INSTRUMENTO,NOMBRE,DESCRIPCION,PRECIOCOMPRA,ID_PROVEEDOR) values ('2','Termometro','Un instrumento que mide la temperatura corporal de los animales','20','6');
Insert into INGDATA.INSTRUMENTOMEDICO (ID_INSTRUMENTO,NOMBRE,DESCRIPCION,PRECIOCOMPRA,ID_PROVEEDOR) values ('3','Jeringa','Un instrumento que sirve para inyectar medicamentos o extraer sangre de los animales','5','8');
Insert into INGDATA.INSTRUMENTOMEDICO (ID_INSTRUMENTO,NOMBRE,DESCRIPCION,PRECIOCOMPRA,ID_PROVEEDOR) values ('4','Bistur?','Un instrumento que tiene una hoja afilada y se usa para hacer incisiones en los tejidos de los animales','30','3');
Insert into INGDATA.INSTRUMENTOMEDICO (ID_INSTRUMENTO,NOMBRE,DESCRIPCION,PRECIOCOMPRA,ID_PROVEEDOR) values ('5','Pinza','Un instrumento que sirve para sujetar o extraer objetos peque?os de los animales','15','5');
Insert into INGDATA.INSTRUMENTOMEDICO (ID_INSTRUMENTO,NOMBRE,DESCRIPCION,PRECIOCOMPRA,ID_PROVEEDOR) values ('6','Tijera','Un instrumento que sirve para cortar el pelo, las u?as o los vendajes de los animales','10','7');
Insert into INGDATA.INSTRUMENTOMEDICO (ID_INSTRUMENTO,NOMBRE,DESCRIPCION,PRECIOCOMPRA,ID_PROVEEDOR) values ('7','Guantes','Un instrumento que sirve para proteger las manos del veterinario y evitar el contacto directo con los fluidos de los animales','8','9');
Insert into INGDATA.INSTRUMENTOMEDICO (ID_INSTRUMENTO,NOMBRE,DESCRIPCION,PRECIOCOMPRA,ID_PROVEEDOR) values ('8','Mascarilla','Un instrumento que sirve para proteger la boca y la nariz del veterinario y evitar la inhalaci?n de microorganismos de los animales','5','2');
Insert into INGDATA.INSTRUMENTOMEDICO (ID_INSTRUMENTO,NOMBRE,DESCRIPCION,PRECIOCOMPRA,ID_PROVEEDOR) values ('9','Laringoscopio','Un instrumento que sirve para examinar la laringe y las cuerdas vocales de los animales','200','4');
Insert into INGDATA.INSTRUMENTOMEDICO (ID_INSTRUMENTO,NOMBRE,DESCRIPCION,PRECIOCOMPRA,ID_PROVEEDOR) values ('10','Otoscopio','Un instrumento que sirve para examinar el o?do externo y medio de los animales','150','6');
Insert into INGDATA.INSTRUMENTOMEDICO (ID_INSTRUMENTO,NOMBRE,DESCRIPCION,PRECIOCOMPRA,ID_PROVEEDOR) values ('11','Oftalmoscopio','Un instrumento que sirve para examinar el ojo y el fondo de ojo de los animales','180','3');
Insert into INGDATA.INSTRUMENTOMEDICO (ID_INSTRUMENTO,NOMBRE,DESCRIPCION,PRECIOCOMPRA,ID_PROVEEDOR) values ('12','Electrocardi?grafo','Un instrumento que sirve para registrar la actividad el?ctrica del coraz?n de los animales','500','5');
Insert into INGDATA.INSTRUMENTOMEDICO (ID_INSTRUMENTO,NOMBRE,DESCRIPCION,PRECIOCOMPRA,ID_PROVEEDOR) values ('13','Ec?grafo','Un instrumento que sirve para obtener im?genes de los ?rganos internos de los animales mediante ultrasonidos','1000','7');
Insert into INGDATA.INSTRUMENTOMEDICO (ID_INSTRUMENTO,NOMBRE,DESCRIPCION,PRECIOCOMPRA,ID_PROVEEDOR) values ('14','Radi?grafo','Un instrumento que sirve para obtener im?genes de los huesos y las articulaciones de los animales mediante rayos X','1500','9');
Insert into INGDATA.INSTRUMENTOMEDICO (ID_INSTRUMENTO,NOMBRE,DESCRIPCION,PRECIOCOMPRA,ID_PROVEEDOR) values ('15','Microscopio','Un instrumento que sirve para observar muestras biol?gicas de los animales con gran aumento','300','2');
Insert into INGDATA.INSTRUMENTOMEDICO (ID_INSTRUMENTO,NOMBRE,DESCRIPCION,PRECIOCOMPRA,ID_PROVEEDOR) values ('16','Centr?fuga','Un instrumento que sirve para separar los componentes de una muestra l?quida de los animales mediante la fuerza centr?fuga','250','4');
Insert into INGDATA.INSTRUMENTOMEDICO (ID_INSTRUMENTO,NOMBRE,DESCRIPCION,PRECIOCOMPRA,ID_PROVEEDOR) values ('17','Balanza','Un instrumento que sirve para medir el peso de los animales','100','6');
Insert into INGDATA.INSTRUMENTOMEDICO (ID_INSTRUMENTO,NOMBRE,DESCRIPCION,PRECIOCOMPRA,ID_PROVEEDOR) values ('18','Mesa de exploraci?n','Un instrumento que sirve para colocar a los animales en una posici?n adecuada para su examen o tratamiento','400','3');
Insert into INGDATA.INSTRUMENTOMEDICO (ID_INSTRUMENTO,NOMBRE,DESCRIPCION,PRECIOCOMPRA,ID_PROVEEDOR) values ('19','Mesa de cirug?a','Un instrumento que sirve para colocar a los animales en una posici?n adecuada para su intervenci?n quir?rgica','600','5');
Insert into INGDATA.INSTRUMENTOMEDICO (ID_INSTRUMENTO,NOMBRE,DESCRIPCION,PRECIOCOMPRA,ID_PROVEEDOR) values ('20','Autoclave','Un instrumento que sirve para esterilizar los instrumentos m?dicos mediante vapor a alta presi?n','800','7');
REM INSERTING into INGDATA.MASCOTA
SET DEFINE OFF;
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('1','pepe','Labrador Retriever',to_date('01/05/19','DD/MM/RR'),'Perro');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('2','Buddy','Golden Retriever',to_date('15/10/18','DD/MM/RR'),'Perro');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('3','Luna','Siamese',to_date('28/02/20','DD/MM/RR'),'Gato');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('4','Rocky','German Shepherd',to_date('20/07/17','DD/MM/RR'),'Perro');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('5','Simba','Persian',to_date('10/11/19','DD/MM/RR'),'Gato');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('6','Daisy','Beagle',to_date('05/04/16','DD/MM/RR'),'Perro');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('7','Milo','Maine Coon',to_date('25/01/21','DD/MM/RR'),'Gato');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('8','Bailey','Bulldog',to_date('12/09/18','DD/MM/RR'),'Perro');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('9','Chloe','Ragdoll',to_date('30/06/20','DD/MM/RR'),'Gato');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('10','Jack','Poodle',to_date('18/03/17','DD/MM/RR'),'Perro');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('11','Bella','Golden Retriever',to_date('12/08/17','DD/MM/RR'),'Perro');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('12','Rocky','German Shepherd',to_date('25/03/18','DD/MM/RR'),'Perro');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('13','Charlie','Bulldog',to_date('18/11/16','DD/MM/RR'),'Perro');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('14','Lucy','Beagle',to_date('07/02/19','DD/MM/RR'),'Perro');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('15','Cooper','Boxer',to_date('09/07/17','DD/MM/RR'),'Perro');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('16','Lola','Dachshund',to_date('14/09/18','DD/MM/RR'),'Perro');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('17','Maximus','Siberian Husky',to_date('22/05/16','DD/MM/RR'),'Perro');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('18','Mia','Poodle',to_date('03/01/20','DD/MM/RR'),'Perro');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('19','Leo','Shih Tzu',to_date('08/12/15','DD/MM/RR'),'Perro');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('20','Zoe','Great Dane',to_date('30/04/19','DD/MM/RR'),'Perro');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('21','Oliver','Labrador Retriever',to_date('11/10/18','DD/MM/RR'),'Perro');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('22','Daisy','Chihuahua',to_date('17/06/16','DD/MM/RR'),'Perro');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('23','Tucker','Rottweiler',to_date('28/01/17','DD/MM/RR'),'Perro');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('24','Coco','Doberman',to_date('05/07/19','DD/MM/RR'),'Perro');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('25','Milo','Shetland Sheepdog',to_date('19/12/16','DD/MM/RR'),'Perro');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('26','Sadie','French Bulldog',to_date('03/08/18','DD/MM/RR'),'Perro');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('27','Bailey','Pug',to_date('14/09/17','DD/MM/RR'),'Perro');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('28','Zeus','Basset Hound',to_date('09/04/16','DD/MM/RR'),'Perro');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('29','Ruby','Cocker Spaniel',to_date('22/02/20','DD/MM/RR'),'Perro');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('30','Duke','Saint Bernard',to_date('11/11/15','DD/MM/RR'),'Perro');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('31','Whiskers','Persian',to_date('15/04/17','DD/MM/RR'),'Gato');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('32','Mittens','Maine Coon',to_date('05/09/18','DD/MM/RR'),'Gato');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('33','Oreo','Ragdoll',to_date('22/11/16','DD/MM/RR'),'Gato');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('34','Shadow','British Shorthair',to_date('10/03/19','DD/MM/RR'),'Gato');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('35','Simba','Bengal',to_date('03/08/17','DD/MM/RR'),'Gato');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('36','Cleo','Sphynx',to_date('18/01/18','DD/MM/RR'),'Gato');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('37','Felix','Scottish Fold',to_date('28/05/16','DD/MM/RR'),'Gato');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('38','Milo','Russian Blue',to_date('02/02/20','DD/MM/RR'),'Gato');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('39','Lily','Abyssinian',to_date('12/12/15','DD/MM/RR'),'Gato');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('40','Leo','Siamese',to_date('20/04/19','DD/MM/RR'),'Gato');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('41','Oliver','Persian',to_date('11/11/18','DD/MM/RR'),'Gato');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('42','Chloe','Maine Coon',to_date('19/06/16','DD/MM/RR'),'Gato');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('43','Misty','Ragdoll',to_date('28/02/17','DD/MM/RR'),'Gato');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('44','Smokey','British Shorthair',to_date('15/07/19','DD/MM/RR'),'Gato');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('45','Luna','Sphynx',to_date('01/12/16','DD/MM/RR'),'Gato');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('46','Nala','Scottish Fold',to_date('22/08/18','DD/MM/RR'),'Gato');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('47','Whiskey','Russian Blue',to_date('10/09/17','DD/MM/RR'),'Gato');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('48','Ziggy','Abyssinian',to_date('05/04/16','DD/MM/RR'),'Gato');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('49','Mochi','Bengal',to_date('25/01/20','DD/MM/RR'),'Gato');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('50','Salem','Siberian',to_date('15/10/15','DD/MM/RR'),'Gato');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('51','Thumper','Holland Lop',to_date('15/03/16','DD/MM/RR'),'Conejo');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('52','Bunny','Dwarf Hotot',to_date('05/08/18','DD/MM/RR'),'Conejo');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('53','Snowball','Netherland Dwarf',to_date('22/11/17','DD/MM/RR'),'Conejo');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('54','Cotton','Mini Rex',to_date('10/04/19','DD/MM/RR'),'Conejo');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('55','Hazel','Jersey Wooly',to_date('03/07/17','DD/MM/RR'),'Conejo');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('56','Cocoa','Himalayan',to_date('18/01/18','DD/MM/RR'),'Conejo');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('57','Thistle','Flemish Giant',to_date('28/06/16','DD/MM/RR'),'Conejo');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('58','Peanut','English Angora',to_date('02/02/20','DD/MM/RR'),'Conejo');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('59','Biscuit','Lionhead',to_date('12/12/15','DD/MM/RR'),'Conejo');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('60','Nibbles','Holland Lop',to_date('20/04/19','DD/MM/RR'),'Conejo');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('61','Caramel','Dwarf Hotot',to_date('11/11/18','DD/MM/RR'),'Conejo');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('62','Maple','Netherland Dwarf',to_date('19/06/16','DD/MM/RR'),'Conejo');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('63','Hopper','Mini Rex',to_date('28/02/17','DD/MM/RR'),'Conejo');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('64','Marshmallow','Himalayan',to_date('15/07/19','DD/MM/RR'),'Conejo');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('65','Thistle','Flemish Giant',to_date('01/12/16','DD/MM/RR'),'Conejo');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('66','Bluebell','Jersey Wooly',to_date('22/08/18','DD/MM/RR'),'Conejo');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('67','Almond','English Angora',to_date('10/09/17','DD/MM/RR'),'Conejo');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('68','Clover','Lionhead',to_date('05/04/16','DD/MM/RR'),'Conejo');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('69','Daisy','Holland Lop',to_date('25/01/20','DD/MM/RR'),'Conejo');
Insert into INGDATA.MASCOTA (ID_MASCOTA,NOMBRE,RAZA,FECHANACIMIENTO,ESPECIE) values ('70','Willyrex','Mini Rex',to_date('15/10/15','DD/MM/RR'),'Conejo');
REM INSERTING into INGDATA.PRODUCTO
SET DEFINE OFF;
Insert into INGDATA.PRODUCTO (ID_PRODUCTO,NOMBRE,DESCRIPCION,PRECIO,CANTIDADSTOCK,ID_PROVEEDOR,ID_RECEPCIONISTA) values ('1','Cama para perros','Una cama suave y c?moda para que tu perro descanse','50','10','3','1');
Insert into INGDATA.PRODUCTO (ID_PRODUCTO,NOMBRE,DESCRIPCION,PRECIO,CANTIDADSTOCK,ID_PROVEEDOR,ID_RECEPCIONISTA) values ('2','Pechera para perros','Una pechera ajustable y resistente para pasear a tu perro','20','15','5','1');
Insert into INGDATA.PRODUCTO (ID_PRODUCTO,NOMBRE,DESCRIPCION,PRECIO,CANTIDADSTOCK,ID_PROVEEDOR,ID_RECEPCIONISTA) values ('3','Pelota para perros','Una pelota de goma que rebota y hace ruido para divertir a tu perro','5','30','7','1');
Insert into INGDATA.PRODUCTO (ID_PRODUCTO,NOMBRE,DESCRIPCION,PRECIO,CANTIDADSTOCK,ID_PROVEEDOR,ID_RECEPCIONISTA) values ('4','Collar antipulgas','Un collar que protege a tu perro de las pulgas y garrapatas por 6 meses','25','20','4','1');
Insert into INGDATA.PRODUCTO (ID_PRODUCTO,NOMBRE,DESCRIPCION,PRECIO,CANTIDADSTOCK,ID_PROVEEDOR,ID_RECEPCIONISTA) values ('5','Shampoo para perros','Un shampoo que limpia y suaviza el pelo de tu perro','15','25','6','1');
Insert into INGDATA.PRODUCTO (ID_PRODUCTO,NOMBRE,DESCRIPCION,PRECIO,CANTIDADSTOCK,ID_PROVEEDOR,ID_RECEPCIONISTA) values ('6','Cepillo para perros','Un cepillo que desenreda y masajea el pelo de tu perro','10','18','8','1');
Insert into INGDATA.PRODUCTO (ID_PRODUCTO,NOMBRE,DESCRIPCION,PRECIO,CANTIDADSTOCK,ID_PROVEEDOR,ID_RECEPCIONISTA) values ('7','Comida para perros','Un alimento balanceado y nutritivo para tu perro','40','50','9','1');
Insert into INGDATA.PRODUCTO (ID_PRODUCTO,NOMBRE,DESCRIPCION,PRECIO,CANTIDADSTOCK,ID_PROVEEDOR,ID_RECEPCIONISTA) values ('8','Hueso para perros','Un hueso natural que fortalece los dientes de tu perro','8','35','2','1');
Insert into INGDATA.PRODUCTO (ID_PRODUCTO,NOMBRE,DESCRIPCION,PRECIO,CANTIDADSTOCK,ID_PROVEEDOR,ID_RECEPCIONISTA) values ('9','Juguete para gatos','Un juguete con plumas y cascabel que estimula el instinto de tu gato','7','28','1','1');
Insert into INGDATA.PRODUCTO (ID_PRODUCTO,NOMBRE,DESCRIPCION,PRECIO,CANTIDADSTOCK,ID_PROVEEDOR,ID_RECEPCIONISTA) values ('10','Arena para gatos','Una arena absorbente y desodorante para la bandeja de tu gato','12','40','3','1');
Insert into INGDATA.PRODUCTO (ID_PRODUCTO,NOMBRE,DESCRIPCION,PRECIO,CANTIDADSTOCK,ID_PROVEEDOR,ID_RECEPCIONISTA) values ('11','Rascador para gatos','Un rascador de sisal que evita que tu gato ara?e los muebles','30','12','5','1');
Insert into INGDATA.PRODUCTO (ID_PRODUCTO,NOMBRE,DESCRIPCION,PRECIO,CANTIDADSTOCK,ID_PROVEEDOR,ID_RECEPCIONISTA) values ('12','Comida para gatos','Un alimento h?medo y sabroso para tu gato','20','45','4','1');
Insert into INGDATA.PRODUCTO (ID_PRODUCTO,NOMBRE,DESCRIPCION,PRECIO,CANTIDADSTOCK,ID_PROVEEDOR,ID_RECEPCIONISTA) values ('13','Collar para gatos','Un collar con identificaci?n y campanilla para tu gato','10','22','6','1');
Insert into INGDATA.PRODUCTO (ID_PRODUCTO,NOMBRE,DESCRIPCION,PRECIO,CANTIDADSTOCK,ID_PROVEEDOR,ID_RECEPCIONISTA) values ('14','Shampoo para gatos','Un shampoo que elimina las pulgas y los malos olores de tu gato','18','20','7','1');
Insert into INGDATA.PRODUCTO (ID_PRODUCTO,NOMBRE,DESCRIPCION,PRECIO,CANTIDADSTOCK,ID_PROVEEDOR,ID_RECEPCIONISTA) values ('15','Cepillo para gatos','Un cepillo que quita el pelo muerto y da brillo al pelo de tu gato','12','15','8','1');
Insert into INGDATA.PRODUCTO (ID_PRODUCTO,NOMBRE,DESCRIPCION,PRECIO,CANTIDADSTOCK,ID_PROVEEDOR,ID_RECEPCIONISTA) values ('16','Correa para gatos','Una correa que te permite pasear a tu gato con seguridad','15','10','9','1');
Insert into INGDATA.PRODUCTO (ID_PRODUCTO,NOMBRE,DESCRIPCION,PRECIO,CANTIDADSTOCK,ID_PROVEEDOR,ID_RECEPCIONISTA) values ('17','Casa para gatos','Una casa acogedora y calentita para que tu gato duerma','40','8','2','1');
Insert into INGDATA.PRODUCTO (ID_PRODUCTO,NOMBRE,DESCRIPCION,PRECIO,CANTIDADSTOCK,ID_PROVEEDOR,ID_RECEPCIONISTA) values ('18','Comedero para gatos','Un comedero que dispensa la comida de tu gato autom?ticamente','25','12','1','1');
Insert into INGDATA.PRODUCTO (ID_PRODUCTO,NOMBRE,DESCRIPCION,PRECIO,CANTIDADSTOCK,ID_PROVEEDOR,ID_RECEPCIONISTA) values ('19','Bebedero para gatos','Un bebedero que mantiene el agua de tu gato fresca y limpia','20','14','3','1');
Insert into INGDATA.PRODUCTO (ID_PRODUCTO,NOMBRE,DESCRIPCION,PRECIO,CANTIDADSTOCK,ID_PROVEEDOR,ID_RECEPCIONISTA) values ('20','Hierba gatera','Una hierba que relaja y divierte a tu gato','5','30','5','1');
REM INSERTING into INGDATA.PROVEEDOR
SET DEFINE OFF;
Insert into INGDATA.PROVEEDOR (ID_PROVEEDOR,NOMBRE,TELEFONO,CORREO,DIRECCION) values ('1','Proveedor1','123-456-7890','Proveedor1@email.com','123 Main St');
Insert into INGDATA.PROVEEDOR (ID_PROVEEDOR,NOMBRE,TELEFONO,CORREO,DIRECCION) values ('2','Proveedor2','234-567-8901','Proveedor2@email.com','456 Elm St');
Insert into INGDATA.PROVEEDOR (ID_PROVEEDOR,NOMBRE,TELEFONO,CORREO,DIRECCION) values ('3','Proveedor3','345-678-9012','Proveedor3@email.com','789 Oak St');
Insert into INGDATA.PROVEEDOR (ID_PROVEEDOR,NOMBRE,TELEFONO,CORREO,DIRECCION) values ('4','Proveedor4','456-789-0123','Proveedor4@email.com','012 Pine St');
Insert into INGDATA.PROVEEDOR (ID_PROVEEDOR,NOMBRE,TELEFONO,CORREO,DIRECCION) values ('5','Proveedor5','567-890-1234','Proveedor5@email.com','345 Cedar St');
Insert into INGDATA.PROVEEDOR (ID_PROVEEDOR,NOMBRE,TELEFONO,CORREO,DIRECCION) values ('6','Proveedor6','678-901-2345','Proveedor6@email.com','678 Maple St');
Insert into INGDATA.PROVEEDOR (ID_PROVEEDOR,NOMBRE,TELEFONO,CORREO,DIRECCION) values ('7','Proveedor7','789-012-3456','Proveedor7@email.com','901 Birch St');
Insert into INGDATA.PROVEEDOR (ID_PROVEEDOR,NOMBRE,TELEFONO,CORREO,DIRECCION) values ('8','Proveedor8','890-123-4567','Proveedor8@email.com','234 Walnut St');
Insert into INGDATA.PROVEEDOR (ID_PROVEEDOR,NOMBRE,TELEFONO,CORREO,DIRECCION) values ('9','Proveedor9','901-234-5678','Proveedor9@email.com','567 Ash St');
Insert into INGDATA.PROVEEDOR (ID_PROVEEDOR,NOMBRE,TELEFONO,CORREO,DIRECCION) values ('10','Proveedor10','012-345-6789','Proveedor10@email.com','890 Pine St');
REM INSERTING into INGDATA.RECEPCIONISTA
SET DEFINE OFF;
Insert into INGDATA.RECEPCIONISTA (DNI_RECEPCIONISTA,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO) values ('1','Jose','Cardenas','123-456-7890','123 Main St','juanperez@email.com');
REM INSERTING into INGDATA.TRANSACCIONCLIENTE
SET DEFINE OFF;
Insert into INGDATA.TRANSACCIONCLIENTE (ID_TRANSACCION,MOMENTODIA,MONTO,ID_CLIENTE,ID_PRODUCTO) values ('1',to_timestamp('21/11/23 04:15:00,000000000 PM','DD/MM/RR HH12:MI:SSXFF AM'),'100','78901234','1');
Insert into INGDATA.TRANSACCIONCLIENTE (ID_TRANSACCION,MOMENTODIA,MONTO,ID_CLIENTE,ID_PRODUCTO) values ('2',to_timestamp('21/11/23 04:16:00,000000000 PM','DD/MM/RR HH12:MI:SSXFF AM'),'200','89012345','2');
Insert into INGDATA.TRANSACCIONCLIENTE (ID_TRANSACCION,MOMENTODIA,MONTO,ID_CLIENTE,ID_PRODUCTO) values ('3',to_timestamp('21/11/23 04:17:00,000000000 PM','DD/MM/RR HH12:MI:SSXFF AM'),'300','11223344','3');
Insert into INGDATA.TRANSACCIONCLIENTE (ID_TRANSACCION,MOMENTODIA,MONTO,ID_CLIENTE,ID_PRODUCTO) values ('4',to_timestamp('21/11/23 04:18:00,000000000 PM','DD/MM/RR HH12:MI:SSXFF AM'),'400','22334455','4');
Insert into INGDATA.TRANSACCIONCLIENTE (ID_TRANSACCION,MOMENTODIA,MONTO,ID_CLIENTE,ID_PRODUCTO) values ('5',to_timestamp('21/11/23 04:19:00,000000000 PM','DD/MM/RR HH12:MI:SSXFF AM'),'500','33445566','5');
Insert into INGDATA.TRANSACCIONCLIENTE (ID_TRANSACCION,MOMENTODIA,MONTO,ID_CLIENTE,ID_PRODUCTO) values ('6',to_timestamp('21/11/23 04:20:00,000000000 PM','DD/MM/RR HH12:MI:SSXFF AM'),'600','44556677','6');
Insert into INGDATA.TRANSACCIONCLIENTE (ID_TRANSACCION,MOMENTODIA,MONTO,ID_CLIENTE,ID_PRODUCTO) values ('7',to_timestamp('21/11/23 04:21:00,000000000 PM','DD/MM/RR HH12:MI:SSXFF AM'),'700','55667788','7');
Insert into INGDATA.TRANSACCIONCLIENTE (ID_TRANSACCION,MOMENTODIA,MONTO,ID_CLIENTE,ID_PRODUCTO) values ('8',to_timestamp('21/11/23 04:22:00,000000000 PM','DD/MM/RR HH12:MI:SSXFF AM'),'800','66778899','8');
Insert into INGDATA.TRANSACCIONCLIENTE (ID_TRANSACCION,MOMENTODIA,MONTO,ID_CLIENTE,ID_PRODUCTO) values ('9',to_timestamp('21/11/23 04:23:00,000000000 PM','DD/MM/RR HH12:MI:SSXFF AM'),'900','77889900','9');
Insert into INGDATA.TRANSACCIONCLIENTE (ID_TRANSACCION,MOMENTODIA,MONTO,ID_CLIENTE,ID_PRODUCTO) values ('10',to_timestamp('21/11/23 04:24:00,000000000 PM','DD/MM/RR HH12:MI:SSXFF AM'),'1000','88990011','10');
Insert into INGDATA.TRANSACCIONCLIENTE (ID_TRANSACCION,MOMENTODIA,MONTO,ID_CLIENTE,ID_PRODUCTO) values ('11',to_timestamp('21/11/23 04:25:00,000000000 PM','DD/MM/RR HH12:MI:SSXFF AM'),'1100','99001122','11');
Insert into INGDATA.TRANSACCIONCLIENTE (ID_TRANSACCION,MOMENTODIA,MONTO,ID_CLIENTE,ID_PRODUCTO) values ('12',to_timestamp('21/11/23 04:26:00,000000000 PM','DD/MM/RR HH12:MI:SSXFF AM'),'1200','10112233','12');
Insert into INGDATA.TRANSACCIONCLIENTE (ID_TRANSACCION,MOMENTODIA,MONTO,ID_CLIENTE,ID_PRODUCTO) values ('13',to_timestamp('21/11/23 04:27:00,000000000 PM','DD/MM/RR HH12:MI:SSXFF AM'),'1300','12131415','13');
Insert into INGDATA.TRANSACCIONCLIENTE (ID_TRANSACCION,MOMENTODIA,MONTO,ID_CLIENTE,ID_PRODUCTO) values ('14',to_timestamp('21/11/23 04:28:00,000000000 PM','DD/MM/RR HH12:MI:SSXFF AM'),'1400','13141516','14');
Insert into INGDATA.TRANSACCIONCLIENTE (ID_TRANSACCION,MOMENTODIA,MONTO,ID_CLIENTE,ID_PRODUCTO) values ('15',to_timestamp('21/11/23 04:29:00,000000000 PM','DD/MM/RR HH12:MI:SSXFF AM'),'1500','14151617','15');
Insert into INGDATA.TRANSACCIONCLIENTE (ID_TRANSACCION,MOMENTODIA,MONTO,ID_CLIENTE,ID_PRODUCTO) values ('16',to_timestamp('21/11/23 04:30:00,000000000 PM','DD/MM/RR HH12:MI:SSXFF AM'),'1600','15161718','16');
Insert into INGDATA.TRANSACCIONCLIENTE (ID_TRANSACCION,MOMENTODIA,MONTO,ID_CLIENTE,ID_PRODUCTO) values ('17',to_timestamp('21/11/23 04:31:00,000000000 PM','DD/MM/RR HH12:MI:SSXFF AM'),'1700','16171819','17');
Insert into INGDATA.TRANSACCIONCLIENTE (ID_TRANSACCION,MOMENTODIA,MONTO,ID_CLIENTE,ID_PRODUCTO) values ('18',to_timestamp('21/11/23 04:32:00,000000000 PM','DD/MM/RR HH12:MI:SSXFF AM'),'1800','17181920','18');
Insert into INGDATA.TRANSACCIONCLIENTE (ID_TRANSACCION,MOMENTODIA,MONTO,ID_CLIENTE,ID_PRODUCTO) values ('19',to_timestamp('21/11/23 04:33:00,000000000 PM','DD/MM/RR HH12:MI:SSXFF AM'),'1900','18192021','19');
Insert into INGDATA.TRANSACCIONCLIENTE (ID_TRANSACCION,MOMENTODIA,MONTO,ID_CLIENTE,ID_PRODUCTO) values ('20',to_timestamp('21/11/23 04:34:00,000000000 PM','DD/MM/RR HH12:MI:SSXFF AM'),'2000','19202122','20');
REM INSERTING into INGDATA.TRANSACCIONPROVEEDOR
SET DEFINE OFF;
Insert into INGDATA.TRANSACCIONPROVEEDOR (ID_TRANSACCION,MOMENTODIA,MONTO,ID_PROVEEDOR,ID_INSTRUMENTO) values ('1',to_timestamp('21/11/23 04:15:00,000000000 PM','DD/MM/RR HH12:MI:SSXFF AM'),'100','1','1');
Insert into INGDATA.TRANSACCIONPROVEEDOR (ID_TRANSACCION,MOMENTODIA,MONTO,ID_PROVEEDOR,ID_INSTRUMENTO) values ('2',to_timestamp('21/11/23 04:16:00,000000000 PM','DD/MM/RR HH12:MI:SSXFF AM'),'200','2','2');
Insert into INGDATA.TRANSACCIONPROVEEDOR (ID_TRANSACCION,MOMENTODIA,MONTO,ID_PROVEEDOR,ID_INSTRUMENTO) values ('3',to_timestamp('21/11/23 04:17:00,000000000 PM','DD/MM/RR HH12:MI:SSXFF AM'),'300','3','3');
Insert into INGDATA.TRANSACCIONPROVEEDOR (ID_TRANSACCION,MOMENTODIA,MONTO,ID_PROVEEDOR,ID_INSTRUMENTO) values ('4',to_timestamp('21/11/23 04:18:00,000000000 PM','DD/MM/RR HH12:MI:SSXFF AM'),'400','4','4');
Insert into INGDATA.TRANSACCIONPROVEEDOR (ID_TRANSACCION,MOMENTODIA,MONTO,ID_PROVEEDOR,ID_INSTRUMENTO) values ('5',to_timestamp('21/11/23 04:19:00,000000000 PM','DD/MM/RR HH12:MI:SSXFF AM'),'500','5','5');
Insert into INGDATA.TRANSACCIONPROVEEDOR (ID_TRANSACCION,MOMENTODIA,MONTO,ID_PROVEEDOR,ID_INSTRUMENTO) values ('6',to_timestamp('21/11/23 04:20:00,000000000 PM','DD/MM/RR HH12:MI:SSXFF AM'),'600','6','6');
Insert into INGDATA.TRANSACCIONPROVEEDOR (ID_TRANSACCION,MOMENTODIA,MONTO,ID_PROVEEDOR,ID_INSTRUMENTO) values ('7',to_timestamp('21/11/23 04:21:00,000000000 PM','DD/MM/RR HH12:MI:SSXFF AM'),'700','7','7');
Insert into INGDATA.TRANSACCIONPROVEEDOR (ID_TRANSACCION,MOMENTODIA,MONTO,ID_PROVEEDOR,ID_INSTRUMENTO) values ('8',to_timestamp('21/11/23 04:22:00,000000000 PM','DD/MM/RR HH12:MI:SSXFF AM'),'800','8','8');
Insert into INGDATA.TRANSACCIONPROVEEDOR (ID_TRANSACCION,MOMENTODIA,MONTO,ID_PROVEEDOR,ID_INSTRUMENTO) values ('9',to_timestamp('21/11/23 04:23:00,000000000 PM','DD/MM/RR HH12:MI:SSXFF AM'),'900','9','9');
Insert into INGDATA.TRANSACCIONPROVEEDOR (ID_TRANSACCION,MOMENTODIA,MONTO,ID_PROVEEDOR,ID_INSTRUMENTO) values ('10',to_timestamp('21/11/23 04:24:00,000000000 PM','DD/MM/RR HH12:MI:SSXFF AM'),'1000','10','10');
REM INSERTING into INGDATA.VETERINARIO
SET DEFINE OFF;
Insert into INGDATA.VETERINARIO (DNI_VETERINARIO,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ESPECIALIDAD) values ('1','Pedro','Garc??a','3456789','Calle 123','correo1@gmail.com','Cirug??a');
Insert into INGDATA.VETERINARIO (DNI_VETERINARIO,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ESPECIALIDAD) values ('2','Laura','Mart??nez','2345678','Calle 456','correo2@gmail.com','Dermatolog??a');
Insert into INGDATA.VETERINARIO (DNI_VETERINARIO,NOMBRES,APELLIDOS,TELEFONO,DIRECCION,CORREO,ESPECIALIDAD) values ('3','Carlos','Rodr??guez','12345678','Calle 789','correo3@gmail.com','Oftalmolog??a');
--------------------------------------------------------
--  DDL for Procedure CALCFRECUENCIACITAS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "INGDATA"."CALCFRECUENCIACITAS" AS
BEGIN
   FOR rec_especie IN (SELECT DISTINCT Especie FROM Mascota) LOOP
       DECLARE
           v_frecuencia_citas NUMBER;

       BEGIN
           SELECT COUNT(*) INTO v_frecuencia_citas
           FROM Cita c
           JOIN Mascota m ON c.ID_Mascota = m.ID_Mascota
           WHERE m.Especie = rec_especie.Especie;

           -- Imprime la informaci??n en la consola
           DBMS_OUTPUT.PUT_LINE('Especie ' || rec_especie.Especie || ': Frecuencia de Citas = ' || v_frecuencia_citas);

           -- Puedes agregar m??s detalles o formateo seg??n sea necesario
       END;
   END LOOP;
END CalcFrecuenciaCitas;

/
--------------------------------------------------------
--  DDL for Procedure CALCULAREFICIENCIAVETERINARIO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "INGDATA"."CALCULAREFICIENCIAVETERINARIO" AS
BEGIN
   FOR rec_veterinario IN (SELECT * FROM Veterinario) LOOP
       DECLARE
           v_dni_veterinario NUMBER;
           v_nombre_veterinario VARCHAR2(255);
           v_apellidos_veterinario VARCHAR2(255);
           v_citas_atendidas NUMBER;
           v_total_citas NUMBER;
           v_eficiencia NUMBER;
       BEGIN
           -- Obtener datos del veterinario actual
           v_dni_veterinario := rec_veterinario.DNI_Veterinario;
           v_nombre_veterinario := rec_veterinario.Nombres;
           v_apellidos_veterinario := rec_veterinario.Apellidos;

           -- Contar el n??mero de citas atendidas por el veterinario actual
           SELECT COUNT(*) INTO v_citas_atendidas
           FROM Cita
           WHERE ID_Veterinario = v_dni_veterinario;

           -- Contar el n??mero total de citas en la cl??nica
           SELECT COUNT(*) INTO v_total_citas
           FROM Cita;

           -- Calcular la eficiencia como un porcentaje
           IF v_total_citas > 0 THEN
               v_eficiencia := (v_citas_atendidas / v_total_citas) * 100;
           ELSE
               v_eficiencia := 0; -- Evitar divisi??n por cero
           END IF;

           -- Imprimir la eficiencia en la consola
           DBMS_OUTPUT.PUT_LINE('Veterinario: ' || v_nombre_veterinario || ' ' || v_apellidos_veterinario);
           DBMS_OUTPUT.PUT_LINE('DNI Veterinario: ' || v_dni_veterinario);
           DBMS_OUTPUT.PUT_LINE('Citas Atendidas: ' || v_citas_atendidas);
           DBMS_OUTPUT.PUT_LINE('Total Citas: ' || v_total_citas);
           DBMS_OUTPUT.PUT_LINE('Eficiencia: ' || TO_CHAR(v_eficiencia, '999.99') || '%');
           DBMS_OUTPUT.PUT_LINE('------------------------------');
       END;
   END LOOP;
END CalcularEficienciaVeterinario;

/
--------------------------------------------------------
--  DDL for Procedure CALGASTOSINSTRUMENTOSPORPROV
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "INGDATA"."CALGASTOSINSTRUMENTOSPORPROV" AS
BEGIN
   FOR proveedor_actual IN (SELECT * FROM Proveedor) LOOP
       DECLARE
           id_proveedor_actual NUMBER;
           nombre_proveedor_actual VARCHAR2(255);
           gastos_instrumentos_actual NUMBER;
       BEGIN
           -- Obtener datos del proveedor actual
           id_proveedor_actual := proveedor_actual.ID_Proveedor;
           nombre_proveedor_actual := proveedor_actual.Nombre;

           -- Calcular los gastos totales en instrumentos m??dicos por el proveedor actual
           SELECT COALESCE(SUM(PrecioCompra), 0) INTO gastos_instrumentos_actual
           FROM InstrumentoMedico
           WHERE ID_Proveedor = id_proveedor_actual;

           -- Imprimir los gastos en la consola
           DBMS_OUTPUT.PUT_LINE('Proveedor: ' || nombre_proveedor_actual);
           DBMS_OUTPUT.PUT_LINE('ID Proveedor: ' || id_proveedor_actual);
           DBMS_OUTPUT.PUT_LINE('Gastos en Instrumentos M??dicos: $' || TO_CHAR(gastos_instrumentos_actual, '99999.99'));
           DBMS_OUTPUT.PUT_LINE('------------------------------');
       END;
   END LOOP;
END CalGastosInstrumentosPorProv;

/
--------------------------------------------------------
--  DDL for Function CALCINGRESOSTOTALES
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "INGDATA"."CALCINGRESOSTOTALES" RETURN NUMBER IS
    total_ingresos NUMBER := 0;
BEGIN
    -- Calcular los ingresos totales por ventas
    SELECT COALESCE(SUM(Monto), 0)
    INTO total_ingresos
    FROM TransaccionCliente;

    -- Devolver el total de ingresos por ventas
    RETURN total_ingresos;
END CalcIngresosTotales;

/
--------------------------------------------------------
--  DDL for Function CALCPOSIBLESGANANCIAS
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "INGDATA"."CALCPOSIBLESGANANCIAS" RETURN NUMBER IS
  total_ingresos NUMBER := 0;
  v_producto_nombre VARCHAR2(255);
  v_cantidad_stock NUMBER;
  v_ganancias NUMBER;
BEGIN
  FOR product IN
    (SELECT
       Nombre,
       CantidadStock,
       Precio * CantidadStock AS Ganancias
     FROM
       (SELECT
          Nombre,
          CantidadStock,
          Precio,
          ROW_NUMBER() OVER (ORDER BY CantidadStock DESC) AS rn
        FROM
          Producto)
     WHERE
       rn <= 3)
  LOOP
    v_producto_nombre := product.Nombre;
    v_cantidad_stock := product.CantidadStock;
    v_ganancias := product.Ganancias;

    -- Mostrar la información utilizando DBMS_OUTPUT
    DBMS_OUTPUT.PUT_LINE('Producto: ' || v_producto_nombre || ', Stock: ' || v_cantidad_stock || ', Posibles Ganancias: ' || v_ganancias);
  END LOOP;

  RETURN total_ingresos;
END calcPosiblesGanancias;

/
--------------------------------------------------------
--  Constraints for Table MASCOTA
--------------------------------------------------------

  ALTER TABLE "INGDATA"."MASCOTA" ADD PRIMARY KEY ("ID_MASCOTA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TSI_USERDB"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TRANSACCIONPROVEEDOR
--------------------------------------------------------

  ALTER TABLE "INGDATA"."TRANSACCIONPROVEEDOR" ADD PRIMARY KEY ("ID_TRANSACCION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TSI_USERDB"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CITA
--------------------------------------------------------

  ALTER TABLE "INGDATA"."CITA" ADD PRIMARY KEY ("ID_CITA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TSI_USERDB"  ENABLE;
--------------------------------------------------------
--  Constraints for Table RECEPCIONISTA
--------------------------------------------------------

  ALTER TABLE "INGDATA"."RECEPCIONISTA" ADD PRIMARY KEY ("DNI_RECEPCIONISTA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TSI_USERDB"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CLIENTE
--------------------------------------------------------

  ALTER TABLE "INGDATA"."CLIENTE" ADD PRIMARY KEY ("DNI_CLIENTE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TSI_USERDB"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TRANSACCIONCLIENTE
--------------------------------------------------------

  ALTER TABLE "INGDATA"."TRANSACCIONCLIENTE" ADD PRIMARY KEY ("ID_TRANSACCION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TSI_USERDB"  ENABLE;
--------------------------------------------------------
--  Constraints for Table VETERINARIO
--------------------------------------------------------

  ALTER TABLE "INGDATA"."VETERINARIO" ADD PRIMARY KEY ("DNI_VETERINARIO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TSI_USERDB"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUCTO
--------------------------------------------------------

  ALTER TABLE "INGDATA"."PRODUCTO" ADD PRIMARY KEY ("ID_PRODUCTO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TSI_USERDB"  ENABLE;
--------------------------------------------------------
--  Constraints for Table HISTORIACLINICA
--------------------------------------------------------

  ALTER TABLE "INGDATA"."HISTORIACLINICA" ADD PRIMARY KEY ("ID_HISTORIA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TSI_USERDB"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PROVEEDOR
--------------------------------------------------------

  ALTER TABLE "INGDATA"."PROVEEDOR" ADD PRIMARY KEY ("ID_PROVEEDOR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TSI_USERDB"  ENABLE;
--------------------------------------------------------
--  Constraints for Table INSTRUMENTOMEDICO
--------------------------------------------------------

  ALTER TABLE "INGDATA"."INSTRUMENTOMEDICO" ADD PRIMARY KEY ("ID_INSTRUMENTO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TSI_USERDB"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CITA
--------------------------------------------------------

  ALTER TABLE "INGDATA"."CITA" ADD CONSTRAINT "FK_CLIENTECITA" FOREIGN KEY ("ID_CLIENTE")
	  REFERENCES "INGDATA"."CLIENTE" ("DNI_CLIENTE") ENABLE;
  ALTER TABLE "INGDATA"."CITA" ADD CONSTRAINT "FK_MASCOTACITA" FOREIGN KEY ("ID_MASCOTA")
	  REFERENCES "INGDATA"."MASCOTA" ("ID_MASCOTA") ENABLE;
  ALTER TABLE "INGDATA"."CITA" ADD CONSTRAINT "FK_VETERINARIOCITA" FOREIGN KEY ("ID_VETERINARIO")
	  REFERENCES "INGDATA"."VETERINARIO" ("DNI_VETERINARIO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CLIENTE
--------------------------------------------------------

  ALTER TABLE "INGDATA"."CLIENTE" ADD CONSTRAINT "FK_MASCOTACLIENTE" FOREIGN KEY ("ID_MASCOTA")
	  REFERENCES "INGDATA"."MASCOTA" ("ID_MASCOTA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table HISTORIACLINICA
--------------------------------------------------------

  ALTER TABLE "INGDATA"."HISTORIACLINICA" ADD CONSTRAINT "FK_CLIENTEHC" FOREIGN KEY ("DNI_CLIENTE")
	  REFERENCES "INGDATA"."CLIENTE" ("DNI_CLIENTE") ENABLE;
  ALTER TABLE "INGDATA"."HISTORIACLINICA" ADD CONSTRAINT "FK_MASCOTAHC" FOREIGN KEY ("ID_MASCOTA")
	  REFERENCES "INGDATA"."MASCOTA" ("ID_MASCOTA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table INSTRUMENTOMEDICO
--------------------------------------------------------

  ALTER TABLE "INGDATA"."INSTRUMENTOMEDICO" ADD CONSTRAINT "FK_PROVEEDORIM" FOREIGN KEY ("ID_PROVEEDOR")
	  REFERENCES "INGDATA"."PROVEEDOR" ("ID_PROVEEDOR") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCTO
--------------------------------------------------------

  ALTER TABLE "INGDATA"."PRODUCTO" ADD CONSTRAINT "FK_PROVEEDORPRODUCTO" FOREIGN KEY ("ID_PROVEEDOR")
	  REFERENCES "INGDATA"."PROVEEDOR" ("ID_PROVEEDOR") ENABLE;
  ALTER TABLE "INGDATA"."PRODUCTO" ADD CONSTRAINT "FK_RECEPCIONISTAPRODUCTO" FOREIGN KEY ("ID_RECEPCIONISTA")
	  REFERENCES "INGDATA"."RECEPCIONISTA" ("DNI_RECEPCIONISTA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TRANSACCIONCLIENTE
--------------------------------------------------------

  ALTER TABLE "INGDATA"."TRANSACCIONCLIENTE" ADD CONSTRAINT "FK_CLIENTETRANSACCION" FOREIGN KEY ("ID_CLIENTE")
	  REFERENCES "INGDATA"."CLIENTE" ("DNI_CLIENTE") ENABLE;
  ALTER TABLE "INGDATA"."TRANSACCIONCLIENTE" ADD CONSTRAINT "FK_PRODUCTOTRANSACCION" FOREIGN KEY ("ID_PRODUCTO")
	  REFERENCES "INGDATA"."PRODUCTO" ("ID_PRODUCTO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TRANSACCIONPROVEEDOR
--------------------------------------------------------

  ALTER TABLE "INGDATA"."TRANSACCIONPROVEEDOR" ADD CONSTRAINT "FK_INSTRUMENTOTRANSACCION" FOREIGN KEY ("ID_INSTRUMENTO")
	  REFERENCES "INGDATA"."INSTRUMENTOMEDICO" ("ID_INSTRUMENTO") ENABLE;
  ALTER TABLE "INGDATA"."TRANSACCIONPROVEEDOR" ADD CONSTRAINT "FK_PROVEEDORTRANSACCION" FOREIGN KEY ("ID_PROVEEDOR")
	  REFERENCES "INGDATA"."PROVEEDOR" ("ID_PROVEEDOR") ENABLE;
