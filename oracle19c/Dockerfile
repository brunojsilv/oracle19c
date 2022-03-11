FROM oracle19c:19.3.0 as base

COPY --chown=oracle:oinstall ./dump/ /opt/oracle/dpdump

COPY --chown=oracle:dba ./scripts/ /opt/oracle/scripts/setup
