#!/bin/bash

# Ensure the output directory exists
mkdir -p outputs

# Check if input file is provided
if [ -z "$1" ]; then
    echo "Usage: ./scan.sh <domains_file.txt>"
    exit 1
fi

# Loop through each domain in the file
while IFS= read -r domain || [ -n "$domain" ]; do
    if [ -z "$domain" ]; then continue; fi # Skip empty lines
    
    echo "[*] Enumerating: $domain"
    
    # Run sublist3r and save to outputs folder
    python sublist3r.py -d "$domain" -o "outputs/${domain}_subs.txt"
    
    echo "[+] Done. Results saved to outputs/${domain}_subs.txt"
    echo "------------------------------------"
done < "$1"