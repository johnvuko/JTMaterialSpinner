# JTMaterialSpinner

[![CI Status](http://img.shields.io/travis/jonathantribouharet/JTMaterialSpinner.svg)](https://travis-ci.org/jonathantribouharet/JTMaterialSpinner)
![Version](https://img.shields.io/cocoapods/v/JTMaterialSpinner.svg)
![License](https://img.shields.io/cocoapods/l/JTMaterialSpinner.svg)
![Platform](https://img.shields.io/cocoapods/p/JTMaterialSpinner.svg)

An iOS spinner view based on material design.

## Installation

With [CocoaPods](http://cocoapods.org/), add this line to your Podfile.

    pod 'JTMaterialSpinner', '~> 1.0'

## Screenshots

![Example](./Screens/example.gif "Example View")

## Usage

### Basic usage

```objective-c
#import <UIKit/UIKit.h>
#import <JTMaterialSpinner/JTMaterialSpinner.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet JTMaterialSpinner *spinnerView;

@end
```

```objective-c
@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Customize the line width
    _spinnerView.circleLayer.lineWidth = 2.0;

    // Change the color of the line
    _spinnerView.circleLayer.strokeColor = [UIColor orangeColor].CGColor;
}

- (void)loadSomething
{    
    [_spinnerView beginRefreshing];
    [MyService loadSomeData:^(){
        [_spinnerView endRefreshing];
    }];
}
```

## Requirements

- iOS 7 or higher
- Automatic Reference Counting (ARC)

## Author

- [Jonathan Tribouharet](https://github.com/jonathantribouharet) ([@johntribouharet](https://twitter.com/johntribouharet))

## License

JTMaterialSpinner is released under the MIT license. See the LICENSE file for more info.
