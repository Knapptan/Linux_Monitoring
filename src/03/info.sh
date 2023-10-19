#!/bin/bash

# Получаем информацию о системе
HOSTNAME=$(hostname)
TIMEZONE="$(cat /etc/timezone) UTC $(date +%Z) $(date "+%z")"
USER=$(whoami)
OS=$(awk '{printf $1" "$2" "$3}' /etc/issue)
DATE=$(date +"%d %B %Y %T")
UPTIME=$(uptime -p)
UPTIME_SEC=$(awk '{print $1}' /proc/uptime)
IP=$(ip a | grep -E 'inet\s' | awk '{print $2}' | head -1)
MASK=$(ip a | grep -E 'inet\s' | awk '{print $2}' | head -1)
GATEWAY=$(ip r | grep default | awk '{print $3}')
RAM_TOTAL=$(free -m | grep Mem | awk '{printf "%.3f GB", $2/1024}')
RAM_USED=$(free -m | grep Mem | awk '{printf "%.3f GB", $3/1024}')
RAM_FREE=$(free -m | grep Mem | awk '{printf "%.3f GB", $4/1024}')
SPACE_ROOT=$(df /root/ | awk '/\// {printf "%.2f MB", $2/1024}')
SPACE_ROOT_USED=$(df -h / | awk '/\// {print $3}')
SPACE_ROOT_FREE=$(df -h / | awk '/\// {print $4}')
