//
//  JTMaterialSpinner.h
//  JTMaterialSpinner
//
//  Created by Jonathan Tribouharet
//

#import <UIKit/UIKit.h>

//! Project version number for JTMaterialSpinner.
FOUNDATION_EXPORT double JTMaterialSpinnerVersionNumber;

//! Project version string for JTMaterialSpinner.
FOUNDATION_EXPORT const unsigned char JTMaterialSpinnerVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <JTMaterialSpinner/PublicHeader.h>

@interface JTMaterialSpinner : UIView

@property (nonatomic, readonly) CAShapeLayer *circleLayer;
@property (nonatomic) BOOL isAnimating;

/*!
 * Duration of the animation. 2 second by default.
 */
@property (nonatomic) NSTimeInterval animationDuration;

/*!
 * Force the start of the animation. When an app is closed the animatin is stopped but `isAnimating` is still at `YES`.
 */
- (void)forceBeginRefreshing;

/*!
 * Start the animation if `isAnimating` is at `NO`
 */
- (void)beginRefreshing;

/*!
 * Stop the animation
 */
- (void)endRefreshing;

@end
