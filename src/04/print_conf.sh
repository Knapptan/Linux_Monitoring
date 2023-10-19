#!/bin/bash

# Конвертируем цвета 
# 1 - white, 2 - red, 3 - green, 4 - blue, 5 – purple, 6 - black

# Column 1 background = 2 (red)
# Column 1 font color = 4 (blue)
# Column 2 background = 5 (purple)
# Column 2 font color = 1 (white)

echo ""
if [[ $column1_background == "default" ]]
then
    echo "Column 1 background = "$column1_background" (${name_colors[$left_back - 1]})"
else 
    echo "Column 1 background = "$left_back" (${name_colors[$left_back - 1]})"
fi
if [[ $column1_text_color == "default" ]]
then
    echo "Column 1 font color = "$column1_text_color" (${name_colors[$left_text - 1]})"
else 
    echo "Column 1 font color = "$left_text" (${name_colors[$left_text - 1]})"
fi
if [[ $column2_background == "default" ]]
then
    echo "Column 2 background = "$column2_background" (${name_colors[$right_back - 1]})"
else 
    echo "Column 2 background = "$right_back" (${name_colors[$right_back - 1]})"
fi    
if [[ $column2_text_color == "default" ]]
then
    echo "Column 2 font color = "$column2_text_color" (${name_colors[$right_text - 1]})"
else 
    echo "Column 2 font color = "$right_text" (${name_colors[$right_text - 1]})"
fi  

