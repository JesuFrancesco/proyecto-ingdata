CREATE USER INGDATA IDENTIFIED BY 2023; GRANT ALL PRIVILEGES TO INGDATA;
CREATE USER VETERINARIO IDENTIFIED BY 2023; GRANT ALL PRIVILEGES TO VETERINARIO;
CREATE USER RECEPCIONISTA IDENTIFIED BY 2023; GRANT ALL PRIVILEGES TO RECEPCIONISTA;
CREATE USER USUARIO IDENTIFIED BY 2023;
/
create or replace PROCEDURE grant_select(
    propietario VARCHAR2, 
    usuario VARCHAR2)
AS   
BEGIN
    FOR r IN (
        SELECT owner, table_name 
        FROM all_tables 
        WHERE owner = propietario
    )
    LOOP
        EXECUTE IMMEDIATE 
            'GRANT SELECT ON '||r.owner||'.'||r.table_name||' to ' || usuario;
    END LOOP;
END; 
/
EXECUTE grant_select('ingdata','usuario');