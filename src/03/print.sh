#!/bin/bash

# В описании цвета не подходят к настройкам  по этом нам нужно конвертировать 
# 1 - white, 2 - red, 3 - green, 4 - blue, 5 – purple, 6 - black
background_colors=("\e[47" "\e[41" "\e[42" "\e[44" "\e[45" "\e[40")
text_colors=(";37m" ";31m" ";32m" ";34m" ";35m" ";30m")

# Функция для применения цветов
printf_color() {
  local background="$1"
  local text_color="$2"
  local text="$3"

  printf "${background_colors[$1 - 1]}${text_colors[$2 - 1]}$text"
  tput sgr0  # Сбрасываем цвета в конце
}

# Выводим информацию с заданными цветами
printf_color "${1}" "${2}" "HOSTNAME"
echo -n " = "
printf_color "${3}" "${4}" "$HOSTNAME"
echo ""

printf_color "${1}" "${2}" "TIMEZONE" 
echo -n " = "
printf_color "${3}" "${4}" "$TIMEZONE"
echo ""

printf_color "${1}" "${2}" "USER" 
echo -n " = "
printf_color "${3}" "${4}" "$USER"
echo ""

printf_color "${1}" "${2}" "OS"
echo -n " = "
printf_color "${3}" "${4}" "$OS"
echo ""

printf_color "${1}" "${2}" "DATE" 
echo -n " = "
printf_color "${3}" "${4}" "$DATE"
echo ""

printf_color "${1}" "${2}" "UPTIME"  
echo -n " = "
printf_color "${3}" "${4}" "$UPTIME"
echo ""

printf_color "${1}" "${2}" "IP" 
echo -n " = "
printf_color "${3}" "${4}" "$IP"
echo ""

printf_color "${1}" "${2}" "MASK"
echo -n " = "
printf_color "${3}" "${4}" "$MASK"
echo ""

printf_color "${1}" "${2}" "GATEWAY" 
echo -n " = "
printf_color "${3}" "${4}" "$GATEWAY"
echo ""

printf_color "${1}" "${2}" "RAM_TOTAL" 
echo -n " = "
printf_color "${3}" "${4}" "$RAM_TOTAL"
echo ""

printf_color "${1}" "${2}" "RAM_USED" 
echo -n " = "
printf_color "${3}" "${4}" "$RAM_USED"
echo ""

printf_color "${1}" "${2}" "RAM_FREE" 
echo -n " = "
printf_color "${3}" "${4}" " $RAM_FREE"
echo ""

printf_color "${1}" "${2}" "SPACE_ROOT" 
echo -n " = "
printf_color "${3}" "${4}" "$SPACE_ROOT"
echo ""

printf_color "${1}" "${2}" "SPACE_ROOT_USED"
echo -n " = "
printf_color "${3}" "${4}" "$SPACE_ROOT_USED"
echo ""

printf_color "${1}" "${2}" "SPACE_ROOT_FREE"
echo -n " = "
printf_color "${3}" "${4}" "$SPACE_ROOT_FREE"
echo ""
