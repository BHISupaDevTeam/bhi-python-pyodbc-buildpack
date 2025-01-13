#!/bin/bash

export ODBCSYSINI=${HOME}/.apt/usr/lib/odbc/conf/
export ODBCINI=${HOME}/.apt/usr/lib/odbc/conf/odbc.ini
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/app/.apt/usr/lib

mkdir -p /etc

echo "[ODBC Driver 18 for SQL Server]
Description=Microsoft ODBC Driver 18 for SQL Server
Driver=/app/.apt/usr/lib/libmsodbcsql-18.1.so.1.1
UsageCount=1
LoginTimeout=30
ConnectRetryCount=3
ConnectRetryInterval=5
Encrypt=yes
TrustServerCertificate=yes
Mars_Connection=yes
" > ${ODBCSYSINI}/odbc.ini
