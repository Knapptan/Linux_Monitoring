#!/bin/bash

start_time=$(date +%s)

if [[ $# == 1 && "$1" == */ ]]
then
    . ./info.sh
    # Выводим результат
    echo "Total number of folders (including all nested ones) = $total_folders"
    echo "TOP 5 folders of maximum size arranged in descending order (path and size):"
    echo "$top_folders"
    echo "Total number of files = $total_files"
    echo "Number of:"
    echo "Configuration files (with the .conf extension) = $config_files"
    echo "Text files = $text_files"
    echo "Executable files = $executable_files"
    echo "Log files (with the extension .log) = $log_files"
    echo "Archive files = $archive_files"
    echo "Symbolic links = $symbolic_links"
    echo "TOP 10 executable files of the maximum size arranged in descending order (path, size, and MD5 hash of file)"
    
    for ((i=1; i < 11; i++))
    do
        filename=$(find "$directory" -type f -executable -exec du -sh {} + | sort -rh | head -n 10 | sed -n "${i}p" | awk '{print $2}')
        size=$(find "$directory" -type f -executable -exec du -sh {} + | sort -rh | head -n 10 | sed -n "${i}p" | awk '{print $1}')
        md5_hash=$(md5sum "$filename" | awk '{print $1}')
        echo "$filename, $size, $md5_hash"
    done
    echo "etc up to 10" 
    echo "Script execution time (in seconds) = $execution_time"

else 
    echo "Пожалуйста введите путь с '/' на конце"
    exit 1
fi
