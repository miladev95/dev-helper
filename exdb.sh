#!/bin/bash

# Configuration
SERVER="root@ip"  # Replace with your SSH user and server address
CONTAINER="root-mysql-1"
DEFAULT_DATABASE="dev_db"  # Default database name
DEFAULT_TABLE="users"         # Default table name
OUTPUT_FILE="output.sql"
MYSQL_USER="root"  # Replace with MySQL username
MYSQL_PASSWORD="password"  # Replace with MySQL password
SSHPASS="sshpass"
export SSHPASS


# Read database and table from stdin if available, else use defaults
if [ -t 0 ]; then
  # Interactive terminal: prompt for input
  read -p "Enter database name (default: $DEFAULT_DATABASE): " DATABASE
  read -p "Enter table name (default: $DEFAULT_TABLE): " TABLE
else
  # Non-interactive: read from stdin or use defaults
  read -r DATABASE TABLE
fi

# Use defaults if input is empty
DATABASE=${DATABASE:-$DEFAULT_DATABASE}
TABLE=${TABLE:-$DEFAULT_TABLE}

# SSH into server and export the table
echo "Connecting to $SERVER and exporting $TABLE from $DATABASE..."

# Use sshpass if no SSH keys (uncomment if needed)
sshpass -e ssh $SERVER << EOF
  echo "Accessing container $CONTAINER..."
  docker exec $CONTAINER mysqldump -u $MYSQL_USER -p$MYSQL_PASSWORD --no-tablespaces $DATABASE $TABLE > $OUTPUT_FILE
  echo "Table exported to $OUTPUT_FILE on the server."
EOF

# Optionally, copy the file back to local machine
echo "Copying $OUTPUT_FILE to local machine..."
sshpass -e scp $SERVER:~/$OUTPUT_FILE ./$OUTPUT_FILE

echo "Export completed. File saved locally as $OUTPUT_FILE."
