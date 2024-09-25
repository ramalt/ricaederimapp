#!/bin/bash

declare -A notifications
notifications[water_title]="Su Hatırlatıcı"
notifications[water_message]="Su içmeyi unutma, Rica ederim."
notifications[water_title]="Ağız Bakım Hatırlatıcı"
notifications[water_message]="Dişlerini fırçala, Rica ederim."
notifications[posture_title]="Postür Hatırlatıcı"
notifications[posture_message]="Dik otur, Rica ederim."


send_notification() {
    local title=$1
    local message=$2
    notify-send "$title" "$message" -i ~/painman.jpg
    echo "Notification sent: $title - $message"
}


while true; do
    rand=$((RANDOM % 2))

    if [ $rand -eq 0 ]; then
        send_notification "${notifications[water_title]}" "${notifications[water_message]}"
    else
        send_notification "${notifications[posture_title]}" "${notifications[posture_message]}"
    fi

    # 2400000ms = 40 dakika
    sleep 1200
done

