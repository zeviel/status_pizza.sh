#!/bin/bash

function status_pizza() {
    if [[ "$1" =~ ^[0-9]{3}$ ]]; then
        curl -s "https://status.pizza/$1" | awk '/<img src=/ {gsub(/.*src="/,""); gsub(/".*/,""); print}'
    else
        echo "Invalid HTTP status code. Usage: status_pizza <HTTP status code>"
    fi
}
