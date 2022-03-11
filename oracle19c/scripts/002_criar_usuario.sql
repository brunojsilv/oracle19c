CREATE TABLESPACE orcl_data LOGGING DATAFILE '/opt/oracle/oradata/ORCLCDB/orcl_data.dbf' SIZE 100m AUTOEXTEND ON NEXT 100m EXTENT MANAGEMENT LOCAL;

ALTER SESSION SET "_ORACLE_SCRIPT"=true;

CREATE USER orcl identified by Orcl#1 default tablespace orcl_data;

GRANT DBA TO orcl;

GRANT read,write on directory DATA_PUMP_DIR to orcl;
