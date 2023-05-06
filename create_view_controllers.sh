#!/bin/bash

mkdir -p ${PROJECT_DIR}/CoolManager/ViewControllers

for i in {1..7}
do
    filename="View${i}ViewController"
    swift_file="${PROJECT_DIR}/CoolManager/ViewControllers/${filename}.swift"
    xib_file="${PROJECT_DIR}/CoolManager/ViewControllers/${filename}.xib"

    touch "$swift_file"
    touch "$xib_file"

    echo "import UIKit" >> "$swift_file"
    echo "" >> "$swift_file"
    echo "class ${filename}: UIViewController {" >> "$swift_file"
    echo "" >> "$swift_file"
    echo "}" >> "$swift_file"

    /usr/bin/sed -i '' "s/\/\* Class\*\/<\/placeholder>/\/\* Class\*\/>${filename}<\/placeholder>/" "$xib_file"
    /usr/bin/sed -i '' "s/\/\* File\*\/<\/placeholder>/\/\* File\*\/>${filename}<\/placeholder>/" "$xib_file"
    /usr/bin/sed -i '' "s/\/\* Module\*\/<\/placeholder>/\/\* Module\*\/>$(basename "$PROJECT_DIR")<\/placeholder>/" "$xib_file"
    /usr/bin/sed -i '' "s/\/\* TargetRuntime\*\/<\/string>/\/\* TargetRuntime\*\/>iOS.CocoaTouch<\/string>/" "$xib_file"
done