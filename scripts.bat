@echo off

set MYSQL_PATH="C:\Program Files\MySQL\MySQL Server 8.0\bin"

REM Eksekusi create.sql
%MYSQL_PATH%\mysql -u root -p cafe2 < create.sql
echo "create.sql selesai dieksekusi"

REM Eksekusi migrate2.sql
%MYSQL_PATH%\mysql -u root -p cafe2 < migrate2.sql
echo "migrate2.sql selesai dieksekusi"

REM Eksekusi migrate.sql
%MYSQL_PATH%\mysql -u root -p cafe2 < migrate.sql
echo "migrate.sql selesai dieksekusi"

REM Eksekusi additional.sql
%MYSQL_PATH%\mysql -u root -p cafe2 < additional.sql
echo "additional.sql selesai dieksekusi"

echo "Seluruh skrip selesai dieksekusi."
pause
