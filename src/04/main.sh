#!/bin/bash

. ./conf_info.sh

name_colors=("white" "red" "green" "blue" "purple" "black")

# Column 1 background = default (black)
# Column 1 font color = default (white)
# Column 2 background = default (red)
# Column 2 font color = default (blue)

#Прверяем наличие и правильность аргументов пишем дефолтные

if [[ $left_back == "" ]]
then
    left_back=6 ; column1_background="default"
fi
if [[ $left_text == "" ]]
then
    left_text=1 ; column1_text_color="default"
fi
if [[ $right_back == "" ]]
then
    right_back=2 ; column2_background="default"
fi    
if [[ $right_text == "" ]]
then
    right_text=4 ; column2_text_color="default"
fi          

if ! [[ $left_back =~ ^[1-6]$ ]] || ! [[ $left_text =~ ^[1-6]$ ]] || ! [[ $right_back =~ ^[1-6]$ ]] || ! [[ $right_text =~ ^[1-6]$ ]] 
then
    printf "\e[1;31mПараметры должен быть от 1 до 6."
    exit 1
fi


if [[ $left_back -eq $left_text ]] || [[ $right_back -eq $right_text ]]
then
    printf "\e[1;31mЦвет текста и фона не должны совпадать"
    exit 1
fi

. ./info.sh

. ./print.sh

. ./print_conf.sh