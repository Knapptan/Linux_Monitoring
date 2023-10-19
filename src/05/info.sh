#!/bin/bash

start_time=$(date +%s)

# Задайте путь к директории в параметрах командной строки
directory="$1"

if [[ ! -d "$directory" ]]; then
    echo "Указанная директория не существует или не является директорией"
    exit 1
fi

# Подсчет общего количества папок (включая вложенные)
total_folders=$(find "$directory" -type d 2>/dev/null | wc -l)

# Топ 5 папок с самым большим весом
top_folders=$(du -h "$directory" 2>/dev/null | sort -rh | head -n 5)

# Подсчет общего количества файлов
total_files=$(find "$directory" -type f 2>/dev/null | wc -l)

# Подсчет различных типов файлов
config_files=$(find "$directory" -type f -name "*.conf" 2>/dev/null | wc -l) # конфигурационных файлов
text_files=$(find "$directory" -type f -exec file {} \; 2>/dev/null | grep "text" | wc -l) # текстовых файлов
executable_files=$(find "$directory" -type f -executable 2>/dev/null | wc -l) # исполняемых файлов
log_files=$(find "$directory" -type f -name "*.log" 2>/dev/null | wc -l) # логов
archive_files=$(find "$directory" -type f -name "*.zip" -o -name "*.tar.gz" 2>/dev/null | wc -l) # архивов
symbolic_links=$(find "$directory" -type l 2>/dev/null | wc -l) # символических ссылок

# Топ 10 файлов с самым большим весом
top_files=$(find "$directory" -type f -exec du -h {} \; 2>/dev/null | sort -rh | head -n 10)

# Топ 10 исполняемых файлов с хешем
for ((i=1; i < 11; i++)); do
    filename=$(find "$directory" -type f -name '*.exe' -exec du -sh {} + 2>/dev/null | sort -rh | head -$i | tail -1 | awk '{print $2}')
    
    if [[ -z "$filename" ]]; then
        echo "No more '.exe' files found"
        break
    fi
    
    current_str="$i - $(du -sh "$filename" 2>/dev/null | awk '{printf "%s, %s", $2, $1}')"
    
    MD5=$(md5sum "$filename" 2>/dev/null | awk '{print $1}')
    
    if [[ "${current_str#*-}" == "${PREV_STR#*-}" ]]; then
        break
    else
        echo "$current_str, $MD5"
        PREV_STR="$current_str"
    fi
done

# Время выполнения скрипта
end_time=$(date +%s)
execution_time=$(($end_time - $start_time))