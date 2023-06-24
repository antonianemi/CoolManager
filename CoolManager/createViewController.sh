#!/bin/sh

# Create the viewControllers group if it doesn't exist
if [ ! -d viewControllers ]; then
  mkdir viewControllers
fi

# Create View1ViewController and its .xib file
touch viewControllers/View1ViewController.swift
echo "// View1ViewController.swift" > viewControllers/View1ViewController.swift
echo "import UIKit" >> viewControllers/View1ViewController.swift
echo "class View1ViewController: UIViewController {" >> viewControllers/View1ViewController.swift
echo "}" >> viewControllers/View1ViewController.swift

touch viewControllers/View1ViewController.xib

# Create View2ViewController and its .xib file
touch viewControllers/View2ViewController.swift
echo "// View2ViewController.swift" > viewControllers/View2ViewController.swift
echo "import UIKit" >> viewControllers/View2ViewController.swift
echo "class View2ViewController: UIViewController {" >> viewControllers/View2ViewController.swift
echo "}" >> viewControllers/View2ViewController.swift

touch viewControllers/View2ViewController.xib

# Create View3ViewController and its .xib file
touch viewControllers/View3ViewController.swift
echo "// View3ViewController.swift" > viewControllers/View3ViewController.swift
echo "import UIKit" >> viewControllers/View3ViewController.swift
echo "class View3ViewController: UIViewController {" >> viewControllers/View3ViewController.swift
echo "}" >> viewControllers/View3ViewController.swift

touch viewControllers/View3ViewController.xib

# Create View4ViewController and its .xib file
touch viewControllers/View4ViewController.swift
echo "// View4ViewController.swift" > viewControllers/View4ViewController.swift
echo "import UIKit" >> viewControllers/View4ViewController.swift
echo "class View4ViewController: UIViewController {" >> viewControllers/View4ViewController.swift
echo "}" >> viewControllers/View4ViewController.swift

touch viewControllers/View4ViewController.xib

# Create View5ViewController and its .xib file
touch viewControllers/View5ViewController.swift
echo "// View5ViewController.swift" > viewControllers/View5ViewController.swift
echo "import UIKit" >> viewControllers/View5ViewController.swift
echo "class View5ViewController: UIViewController {" >> viewControllers/View5ViewController.swift
echo "}" >> viewControllers/View5ViewController.swift

touch viewControllers/View5ViewController.xib

# Create View6ViewController and its .xib file
touch viewControllers/View6ViewController.swift
echo "// View6ViewController.swift" > viewControllers/View6ViewController.swift
echo "import UIKit" >> viewControllers/View6ViewController.swift
echo "class View6ViewController: UIViewController {" >> viewControllers/View6ViewController.swift
echo "}" >> viewControllers/View6ViewController.swift

touch viewControllers/View6ViewController.xib

# Create View7ViewController and its .xib file
touch viewControllers/View7ViewController.swift
echo "// View7ViewController.swift" > viewControllers/View7ViewController.swift
echo "import UIKit" >> viewControllers/View7ViewController.swift
echo "class View7ViewController: UIViewController {" >> viewControllers/View7ViewController.swift
echo "}" >> viewControllers/View7ViewController.swift

touch viewControllers/View7ViewController.xib
