//
//  JTMaterialSpinner.h
//  JTMaterialSpinner
//
//  Created by Jonathan Tribouharet
//

#import <UIKit/UIKit.h>

@interface JTMaterialSpinner : UIView

@property (nonatomic, readonly) CAShapeLayer *circleLayer;

- (void)beginRefreshing;
- (void)endRefreshing;

@end
