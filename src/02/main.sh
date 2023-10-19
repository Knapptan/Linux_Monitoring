#!/bin/bash

if [ $# -ne 0 ]; then
    echo "There shouldn't be any parameters."
    exit 1
else 
   . ./info.sh
fi

# Выводим информацию
echo "HOSTNAME = $HOSTNAME"
echo "TIMEZONE = $TIMEZONE"
echo "USER = $USER"
echo "OS = $OS"
echo "DATE = $DATE"
echo "UPTIME = $UPTIME"
echo "UPTIME_SEC = $UPTIME_SEC"
echo "IP = $IP"
echo "MASK = $MASK"
echo "GATEWAY = $GATEWAY"
echo "RAM_TOTAL = $RAM_TOTAL"
echo "RAM_USED = $RAM_USED"
echo "RAM_FREE = $RAM_FREE"
echo "SPACE_ROOT = $SPACE_ROOT"
echo "SPACE_ROOT_USED = $SPACE_ROOT_USED"
echo "SPACE_ROOT_FREE = $SPACE_ROOT_FREE"

# Предлогаем пользователю сохранить информацию
read -p "Сохранить данные в файл (Y/N)? " choice
if [[ "$choice" == "Y" || "$choice" == "y" ]] 
then
./write_to_file.sh
fi
