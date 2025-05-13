#!/bin/bash
# Check if input file, output file, and prefix are provided
if [[ $# -ne 3 ]]; then
    echo "Usage: $0 input_file output_file prefix"
    exit 1
fi

input_file="$1"
output_file="$2"
prefix="$3"


# Prozessieren der Datei: Nur Zeilen, die mit dem Prefix (case-insensitive) beginnen, werden beibehalten
filtered="$(awk -F':' -v pfx="$prefix" 'tolower($1) ~ "^"tolower(pfx) {print $0}' "$input_file")"


# Process each line and extract desired fields
echo "$filtered" | awk -F':' '{print $1 ":" $4}' > "$output_file"

echo "Processed output written to: $output_file"