# JTMaterialSpinner

[![CI Status](http://img.shields.io/travis/jonathantribouharet/JTMaterialSpinner.svg)](https://travis-ci.org/jonathantribouharet/JTMaterialSpinner)
![Version](https://img.shields.io/cocoapods/v/JTMaterialSpinner.svg)
![License](https://img.shields.io/cocoapods/l/JTMaterialSpinner.svg)
![Platform](https://img.shields.io/cocoapods/p/JTMaterialSpinner.svg)

An iOS spinner view based on material design.

## Installation

With [CocoaPods](http://cocoapods.org/), add this line to your Podfile.

    pod 'JTMaterialSpinner', '~> 2.0'

## Screenshots

![Example](./Screens/example.gif "Example View")

## Usage

### Basic usage

```swift
import UIKit
import JTMaterialSpinner

class ViewController: UIViewController {

    var spinnerView = JTMaterialSpinner()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Customize the line width
        spinnerView.circleLayer.lineWidth = 2.0

        // Change the color of the line
        spinnerView.circleLayer.strokeColor = UIColor.orange.cgColor
        
        // Change the duration of the animation
        spinnerView.animationDuration = 2.5
    }

    func loadSomething () {
        spinnerView.beginRefreshing()
        MyService.loadSomeData() { () -> () in
            spinnerView.endRefreshing()
        }
    }
}

```

## Known Issues

Animation stop when the application go in background, you have to restart it manually.

## Requirements

- iOS 8.0 or higher
- Swift 3.0

## Author

- [Jonathan Tribouharet](https://github.com/jonathantribouharet) ([@johntribouharet](https://twitter.com/johntribouharet))

## License

JTMaterialSpinner is released under the MIT license. See the LICENSE file for more info.
