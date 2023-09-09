#!/bin/bash

# Define the source and destination directories
src_dir="[[REPLACE ME]]"
dest_dir="[[REPLACE ME]]"

# Loop through each Markdown file in the source directory
for src_file in "$src_dir"/*.md; do
  # Extract just the filename from the full path
  filename=$(basename -- "$src_file")

  # Define the corresponding file in the destination directory
  dest_file="$dest_dir/$filename"

  # Check if the file exists in the destination directory
  if [ -f "$dest_file" ]; then
    echo "Appending content from $src_file to $dest_file"

    # Extract the content after the YAML front matter and append it to a temporary file
    sed -n '/^---$/,/^---$/!p' "$src_file" > temp.md

    # Append the temporary content to the destination file
    cat temp.md >> "$dest_file"

    # Remove the temporary file
    rm temp.md
  else
    echo "$dest_file does not exist. Skipping."
  fi

  # Break the loop after one iteration for debugging
  #break
done
