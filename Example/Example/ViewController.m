//
//  ViewController.m
//  Example
//
//  Created by Jonathan Tribouharet
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _spinnerView.circleLayer.lineWidth = 2.0;
     _spinnerView.circleLayer.strokeColor = [UIColor orangeColor].CGColor;
    [_spinnerView beginRefreshing];
}

@end
