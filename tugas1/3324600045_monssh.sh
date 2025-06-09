#!/bin/bash

while true; do
    if systemctl is-active --quiet ssh; then
        echo "[$(date)] SSH aktif"
    else
        echo "[$(date)] SSH MATI! Mohon periksa service." | wall
    fi
    sleep 10
done
