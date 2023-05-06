#!/bin/bash

# Set the directory to create the files in
directory="${PROJECT_DIR}/${TARGET_NAME}/ViewControllers"

# Create the directory if it doesn't exist
mkdir -p "$directory"

# Define the view controller and xib file names
files=(
    "View1ViewController"
    "View2ViewController"
    "View3ViewController"
    "View4ViewController"
    "View5ViewController"
    "View6ViewController"
    "View7ViewController"
)

# Loop through the files array and create the view controller and xib files
for file in "${files[@]}"; do
    view_controller_file="${directory}/${file}.swift"
    xib_file="${directory}/${file}.xib"
    touch "$view_controller_file"
    touch "$xib_file"
    echo "import UIKit" >> "$view_controller_file"
    echo "" >> "$view_controller_file"
    echo "class $file: UIViewController {" >> "$view_controller_file"
    echo "" >> "$view_controller_file"
    echo "    override func viewDidLoad() {" >> "$view_controller_file"
    echo "        super.viewDidLoad()" >> "$view_controller_file"
    echo "    }" >> "$view_controller_file"
    echo "" >> "$view_controller_file"
    echo "}" >> "$view_controller_file"
    echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" >> "$xib_file"
    echo "<!-- The contents of this file are generated automatically -->" >> "$xib_file"
done

# Add the files to the Xcode project
find "$directory" -name '*.swift' -o -name '*.xib' | xargs xcrun xcodeproj add-file -p "$PROJECT_FILE_PATH"
