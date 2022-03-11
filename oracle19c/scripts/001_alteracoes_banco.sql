ALTER SYSTEM SET LOCAL_LISTENER='(ADDRESS=(PROTOCOL=TCP)(HOST=localhost)(PORT=1521))' scope=both;

ALTER SYSTEM SET FILESYSTEMIO_OPTIONS=DIRECTIO SCOPE=SPFILE;

ALTER SYSTEM SET DISK_ASYNCH_IO=FALSE SCOPE=SPFILE;

ALTER profile DEFAULT limit password_life_time UNLIMITED;

SET ECHO ON;
SET SERVEROUTPUT ON;
@?/rdbms/admin/emremove.sql

@?/rdbms/admin/owmuinst.plb