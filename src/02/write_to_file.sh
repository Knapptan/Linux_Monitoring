  #!/bin/bash
  
  # Создать имя файла на основе текущей даты и времени
  FILENAME=$(date +"%d_%m_%y_%H_%M_%S.status")
  # Сохранить информацию в файл
  echo "HOSTNAME = $HOSTNAME" > "$FILENAME"
  echo "TIMEZONE = $TIMEZONE UTC $(date +"%:::z" -d "$TIMEZONE")" >> "$FILENAME"
  echo "USER = $USER" >> "$FILENAME"
  echo "OS = $OS" >> "$FILENAME"
  echo "DATE = $DATE" >> "$FILENAME"
  echo "UPTIME = $UPTIME" >> "$FILENAME"
  echo "UPTIME_SEC = $UPTIME_SEC" >> "$FILENAME"
  echo "IP = $IP" >> "$FILENAME"
  echo "MASK = $MASK" >> "$FILENAME"
  echo "GATEWAY = $GATEWAY" >> "$FILENAME"
  echo "RAM_TOTAL = $RAM_TOTAL" >> "$FILENAME"
  echo "RAM_USED = $RAM_USED" >> "$FILENAME"
  echo "RAM_FREE = $RAM_FREE" >> "$FILENAME"
  echo "SPACE_ROOT = $SPACE_ROOT" >> "$FILENAME"
  echo "SPACE_ROOT_USED = $SPACE_ROOT_USED" >> "$FILENAME"
  echo "SPACE_ROOT_FREE = $SPACE_ROOT_FREE" >> "$FILENAME"
  echo "Информация сохранена в файл: $FILENAME"