#!/bin/bash

# Проверяем наличие файла конфигурации и отсутсвие аргументов
if  [ $# -ge 1 ]
then
    echo "слишком много аргументов"
else
    if [ ! -f ./config.conf ] 
        then
        echo "Нет файла: ./config.conf"
        exit 1
    else
        . config.conf
        export left_back=$column1_background
        export left_text=$column1_font_color
        export right_back=$column2_background
        export right_text=$column2_font_color
    fi
fi