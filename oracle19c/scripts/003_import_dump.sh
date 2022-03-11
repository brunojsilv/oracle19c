#!/bin/bash

# variaveis
DUMP_FILE=schema.DMP
SCHEMA_OLD=old
SCHEMA_NEW=orcl
TS_OLD=old_data
TS_NEW=orcl_data

mv /opt/oracle/dpdump/${DUMP_FILE} /opt/oracle/admin/ORCLCDB/dpdump/

chmod 6751 $ORACLE_HOME/bin/oracle

impdp system/System#1 dumpfile=${DUMP_FILE} # remap_schema=${SCHEMA_OLD}:${SCHEMA_NEW} remap_tablespace=${TS_OLD}:${TS_NEW}
