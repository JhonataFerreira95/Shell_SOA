DB_NAME="soa"
TABLE_NAME="userdata"
USERNAME=$(whoami)
DATETIME=$(date '+%Y-%m-%d %H:%M:%S')

echo "DEBUG - Current datetime: $DATETIME"

if [ -z "$DATETIME" ]; then
echo "Erro: A variavel DATETIME esta vazia"
exit 1
fi

mariadb $DB_NAME -e "INSERT INTO $TABLE_NAME (username, datetime) VALUES ('$USERNAME', '$DATETIME');"
