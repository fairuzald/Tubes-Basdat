# Seeding Data for Tubes Basdat IF2240

## Introduction
This README provides step-by-step instructions for running the SQL scripts mentioned.

## Prerequisites
Make sure you have MySQL Server installed and running on your computer. If not, install MySQL Server and ensure it is connected.

## Steps
Open Command Prompt or Terminal and navigate to the directory where your SQL scripts are located using the cd command. Assuming the directory is D:\Kuliah\Basdat, the command would be:

1. Clone this repository 
Verify that you are in the correct directory by using dir (for Windows) or ls (for Linux/Mac) commands and ensure that create.sql, migrate.sql, migrate2.sql, and additional.sql files are present.
bash

```
git clone https://github.com/fairuzald/Tubes-Basdat
cd Tubes-Basdat
```

2. Now, you can execute the SQL scripts using the mysql command with the following syntax:

```
mysql -u root -p cafe < create.sql
mysql -u root -p cafe < migrate2.sql
mysql -u root -p cafe < migrate.sql
mysql -u root -p cafe < additional.sql

```

3. Verification
After running all SQL scripts, verify that the data has been correctly inserted into the cafe database by opening MySQL Client:

```
mysql -u root -p cafe
```