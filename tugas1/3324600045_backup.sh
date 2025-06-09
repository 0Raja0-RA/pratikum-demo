#!/bin/bash

src_dir=~/Documents
dest_dir=~/backup
mkdir -p "$dest_dir"

total_files=10
interval=15
duration=3600
loop_count=$((duration / interval))

for ((i=0; i<loop_count; i++))
do
    file_number=$(( (i % total_files) + 1 ))
    cp -r "$src_dir" "$dest_dir/file$file_number"
    echo "Backup ke file$file_number - $(date)" >> "$dest_dir/backup_log.txt"
    sleep $interval
done

