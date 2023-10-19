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
printf_color "$left_back" "$left_text" "HOSTNAME"
echo -n " = "
printf_color "$right_back" "$right_text" "$HOSTNAME"
echo ""

printf_color "$left_back" "$left_text" "TIMEZONE" 
echo -n " = "
printf_color "$right_back" "$right_text" "$TIMEZONE"
echo ""

printf_color "$left_back" "$left_text" "USER" 
echo -n " = "
printf_color "$right_back" "$right_text" "$USER"
echo ""

printf_color "$left_back" "$left_text" "OS"
echo -n " = "
printf_color "$right_back" "$right_text" "$OS"
echo ""

printf_color "$left_back" "$left_text" "DATE" 
echo -n " = "
printf_color "$right_back" "$right_text" "$DATE"
echo ""

printf_color "$left_back" "$left_text" "UPTIME"  
echo -n " = "
printf_color "$right_back" "$right_text" "$UPTIME"
echo ""

printf_color "$left_back" "$left_text" "IP" 
echo -n " = "
printf_color "$right_back" "$right_text" "$IP"
echo ""

printf_color "$left_back" "$left_text" "MASK"
echo -n " = "
printf_color "$right_back" "$right_text" "$MASK"
echo ""

printf_color "$left_back" "$left_text" "GATEWAY" 
echo -n " = "
printf_color "$right_back" "$right_text" "$GATEWAY"
echo ""

printf_color "$left_back" "$left_text" "RAM_TOTAL" 
echo -n " = "
printf_color "$right_back" "$right_text" "$RAM_TOTAL"
echo ""

printf_color "$left_back" "$left_text" "RAM_USED" 
echo -n " = "
printf_color "$right_back" "$right_text" "$RAM_USED"
echo ""

printf_color "$left_back" "$left_text" "RAM_FREE" 
echo -n " = "
printf_color "$right_back" "$right_text" " $RAM_FREE"
echo ""

printf_color "$left_back" "$left_text" "SPACE_ROOT" 
echo -n " = "
printf_color "$right_back" "$right_text" "$SPACE_ROOT"
echo ""

printf_color "$left_back" "$left_text" "SPACE_ROOT_USED"
echo -n " = "
printf_color "$right_back" "$right_text" "$SPACE_ROOT_USED"
echo ""

printf_color "$left_back" "$left_text" "SPACE_ROOT_FREE"
echo -n " = "
printf_color "$right_back" "$right_text" "$SPACE_ROOT_FREE"
echo ""
