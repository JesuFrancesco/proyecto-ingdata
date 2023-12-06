CREATE OR REPLACE PROCEDURE CalcFrecuenciaCitas AS
BEGIN
   FOR rec_especie IN (SELECT DISTINCT Especie FROM Mascota) LOOP
       DECLARE
           v_frecuencia_citas NUMBER;

       BEGIN
           SELECT COUNT(*) INTO v_frecuencia_citas
           FROM Cita c
           JOIN Mascota m ON c.ID = m.ID
           WHERE m.Especie = rec_especie.Especie;

           -- Imprime la información en la consola
           DBMS_OUTPUT.PUT_LINE('Especie ' || rec_especie.Especie || ': Frecuencia de Citas = ' || v_frecuencia_citas);

       END;
   END LOOP;
END CalcFrecuenciaCitas;
/
-- /

-- BEGIN
--    CalcFrecuenciaCitas;
-- END;
-- /

CREATE OR REPLACE PROCEDURE CalcularEficienciaVeterinario AS
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
           v_dni_veterinario := rec_veterinario.DNI;
           v_nombre_veterinario := rec_veterinario.Nombres;
           v_apellidos_veterinario := rec_veterinario.Apellidos;

           -- Contar el número de citas atendidas por el veterinario actual
           SELECT COUNT(*) INTO v_citas_atendidas
           FROM Cita
           WHERE ID_Veterinario = v_dni_veterinario;

           -- Contar el número total de citas en la clínica
           SELECT COUNT(*) INTO v_total_citas
           FROM Cita;

           -- Calcular la eficiencia como un porcentaje
           IF v_total_citas > 0 THEN
               v_eficiencia := (v_citas_atendidas / v_total_citas) * 100;
           ELSE
               v_eficiencia := 0; -- Evitar división por cero
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
-- /

-- BEGIN
--    CalcularEficienciaVeterinario;
-- END;
-- /

create or replace PROCEDURE CalGastosInstrumentosPorProv AS
BEGIN
   FOR proveedor_actual IN (SELECT * FROM Proveedor) LOOP
       DECLARE
           id_proveedor_actual NUMBER;
           nombre_proveedor_actual VARCHAR2(255);
           gastos_instrumentos_actual NUMBER;
       BEGIN
           -- Obtener datos del proveedor actual
           id_proveedor_actual := proveedor_actual.ID;
           nombre_proveedor_actual := proveedor_actual.Nombre;

           -- Calcular los gastos totales en instrumentos médicos por el proveedor actual
           SELECT COALESCE(SUM(MONTO), 0) INTO gastos_instrumentos_actual
           FROM transaccion_proveedor
           WHERE ID_Proveedor = id_proveedor_actual;

           -- Imprimir los gastos en la consola
           DBMS_OUTPUT.PUT_LINE('Proveedor: ' || nombre_proveedor_actual);
           DBMS_OUTPUT.PUT_LINE('ID Proveedor: ' || id_proveedor_actual);
           DBMS_OUTPUT.PUT_LINE('Gastos en Instrumentos Médicos: $' || TO_CHAR(gastos_instrumentos_actual, '99999.99'));
           DBMS_OUTPUT.PUT_LINE('------------------------------');
       END;
   END LOOP;
END CalGastosInstrumentosPorProv;
-- /

-- BEGIN
--    CalGastosInstrumentosPorProv;
-- END;
-- /

CREATE OR REPLACE PROCEDURE insertarCliente(
    v_dni IN cliente.DNI%TYPE,
    v_nombres IN cliente.nombres%TYPE,
    v_apellidos IN cliente.apellidos%TYPE,
    v_telefono IN cliente.telefono%TYPE,
    v_direccion IN cliente.direccion%TYPE,
    v_correo IN cliente.correo%TYPE
) IS
BEGIN
    INSERT INTO Cliente (DNI, Nombres, Apellidos, Telefono, Direccion, Correo) 
    VALUES (v_dni, v_nombres, v_apellidos, v_telefono, v_direccion, v_correo);
    DBMS_OUTPUT.PUT_LINE('Cliente con dni ' || v_dni || 'fue insertado exitosamente.');
END;

/

CREATE OR REPLACE PROCEDURE insertarMascota(
    v_id IN mascota.id%TYPE,
    v_nombre IN mascota.nombre%TYPE,
    v_raza IN mascota.raza%TYPE,
    v_fecha IN mascota.fechanacimiento%TYPE,
    v_especie IN mascota.especie%TYPE
) IS
BEGIN
    INSERT INTO Mascota (ID, Nombre, Raza, FechaNacimiento, Especie)
    VALUES (v_id,v_nombre, v_raza, v_fecha, v_especie);
    DBMS_OUTPUT.PUT_LINE('Mascota con id ' || v_id || ' fue insertada exitosamente.');
END;

/

CREATE OR REPLACE PROCEDURE VincularClienteMascota(
    v_dni IN cliente.dni%TYPE,
    v_idmascota IN mascota.id%TYPE
) IS
BEGIN
    INSERT INTO Cliente_Mascota (id_cliente, id_mascota)
    VALUES (v_dni, v_idmascota);
    DBMS_OUTPUT.PUT_LINE('Vinculo entre cliente ' || v_dni || ' y ' || v_idmascota || ' fue realizado exitosamente.');
END;

/

CREATE OR REPLACE PROCEDURE AgendarCita(
    v_id IN cita.id%TYPE,
    v_fecha IN cita.fecharegistro%TYPE,
    v_razon IN cita.razoncita%TYPE,
    v_cliente IN cita.id_cliente%TYPE,
    v_mascota IN cita.id_mascota%TYPE,
    v_vet IN cita.id_veterinario%TYPE
) IS
BEGIN
    INSERT INTO Cita (ID, FechaRegistro, RazonCita, ID_Cliente, ID_Mascota, ID_Veterinario)
    VALUES (v_id, v_fecha, v_razon, v_cliente, v_mascota, v_vet);
    DBMS_OUTPUT.PUT_LINE('Cita ' || v_id || ' agendada para el dia ' || v_fecha || ' exitosamente.');
END;

/

CREATE OR REPLACE PROCEDURE ConcluirCita(
    v_id IN cita.id%TYPE,
    v_diagnostico IN historiaclinica.diagnostico%TYPE,
    v_tratamiento IN historiaclinica.tratamiento%TYPE
) IS
    v_fecha CITA.fecharegistro%TYPE;
    v_cliente CITA.ID_CLIENTE%TYPE;
    v_mascota CITA.ID_MASCOTA%TYPE;
BEGIN
    SELECT FechaRegistro, ID_Cliente, ID_Mascota
    INTO v_fecha, v_cliente, v_mascota
    FROM Cita WHERE Cita.id = v_id;
    
    DELETE FROM CITA WHERE ID = v_id;
    
    INSERT INTO HISTORIACLINICA (ID, FechaRegistro, Diagnostico, Tratamiento, DNI_Cliente, ID_Mascota)
    VALUES (v_id, v_fecha, v_diagnostico, v_tratamiento, v_cliente, v_mascota);
    DBMS_OUTPUT.PUT_LINE('Cita ' || v_id || ' concluida y agregada a la historia clinica.');
END;