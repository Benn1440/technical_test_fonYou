#!/bin/bash
# Create variables
LOG_PATH="/var/log"
DB_HOST="192.168.1.22"
DB_NAME="ben_db_name"
DB_USER="ben_db_user"
DB_PASSWORD="ben_db_password"

# Generate log file name
LOG_FILE="${LOG_PATH}/sample.access.log-$(date +"%Y%m%d").log"

# MySQL query to extract data from Users database table and write to the log file
mysql -h "${DB_HOST}" -u "${DB_USER}" -p"${DB_PASSWORD}" -D "${DB_NAME}" -e \
  "SELECT users.ID, users.Name, users.public_number, fonyou_number.private_number
   FROM users 
   JOIN fonyou_number f ON users.public_number = f.main_number;" >> "${LOG_FILE}"
