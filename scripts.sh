#!/bin/bash

MYSQL_PATH="/usr/bin/mysql"

# Eksekusi create.sql
$MYSQL_PATH -u root -p cafe2 < create.sql
echo "create.sql selesai dieksekusi"

# Eksekusi migrate2.sql
$MYSQL_PATH -u root -p cafe2 < migrate2.sql
echo "migrate2.sql selesai dieksekusi"

# Eksekusi migrate.sql
$MYSQL_PATH -u root -p cafe2 < migrate.sql
echo "migrate.sql selesai dieksekusi"

# Eksekusi additional.sql
$MYSQL_PATH -u root -p cafe2 < additional.sql
echo "additional.sql selesai dieksekusi"

echo "Seluruh skrip selesai dieksekusi."
