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
-- /

-- BEGIN
--    CalcularEficienciaVeterinario;
-- END;
-- /

CREATE OR REPLACE PROCEDURE CalGastosInstrumentosPorProv AS
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
           SELECT COALESCE(SUM(PrecioCompra), 0) INTO gastos_instrumentos_actual
           FROM InstrumentoMedico
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