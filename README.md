# Notion-Obsidian Markdown Merger 📝🔗

## What Does This Do? 🤔

This bash script is your go-to tool for merging Markdown files from a source directory into a destination directory. If you have Markdown files in two separate folders and want to append the content of the source files to the destination files, this is the script for you!

## Features 🌟

- 🔄 Merges content of Markdown files
- 📂 Works with source and destination directories
- 🗂 Ignores YAML front matter while merging

## How to Use 🛠️

1. **Download the Script**: Clone this repository or download the script file.

2. **Configure**: Open the script and replace the placeholders `[[REPLACE ME]]` for `src_dir` and `dest_dir` with your source and destination directories.

    ```bash
    src_dir="[[REPLACE ME]]"
    dest_dir="[[REPLACE ME]]"
    ```

3. **Run the Script**: Open a terminal, navigate to the directory where the script is located, and run it.

    ```bash
    chmod +x append_notion_to_obsidian.sh
    ./append_notion_to_obsidian.sh
    ```

4. **Check the Output**: The script will append the content from each Markdown file in the source directory to the corresponding file in the destination directory. If a file doesn't exist in the destination directory, it will be skipped.

## Troubleshooting 🩺

- If you encounter permission issues, make sure to give the script execute permission (`chmod +x append_notion_to_obsidian.sh`).

- Double-check the paths for `src_dir` and `dest_dir`.

## Contribute 🤝

Feel free to fork, improve, make pull requests and star this repository if you find it useful.

## License 📄

This script is open-sourced under the MIT License.

---

