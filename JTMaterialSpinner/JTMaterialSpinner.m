//
//  JTMaterialSpinner.h
//  JTMaterialSpinner
//
//  Created by Jonathan Tribouharet
//

#import "JTMaterialSpinner.h"

@implementation JTMaterialSpinner

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(!self){
        return nil;
    }
    
    [self commonInit];
    
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if(!self){
        return nil;
    }
    
    [self commonInit];
    
    return self;
}

- (void)commonInit
{
    self->_circleLayer = [CAShapeLayer new];
    [self.layer addSublayer:_circleLayer];
    
    _circleLayer.fillColor = nil;
    _circleLayer.lineCap = kCALineCapRound;
    _circleLayer.lineWidth = 1.5;
    
    _circleLayer.strokeColor = [UIColor orangeColor].CGColor;
    _circleLayer.strokeStart = 0;
    _circleLayer.strokeEnd = 0;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    if(!CGRectEqualToRect(self.circleLayer.frame, self.bounds)){
        [self updateCircleLayer];
    }
}

- (void)updateCircleLayer
{
    CGPoint center = CGPointMake(self.bounds.size.width / 2., self.bounds.size.height / 2.);
    CGFloat radius = CGRectGetHeight(self.bounds) / 2. - self.circleLayer.lineWidth / 2;
    CGFloat startAngle = 0;
    CGFloat endAngle = 2 * M_PI;
    
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center
                                                        radius:radius
                                                    startAngle:startAngle
                                                      endAngle:endAngle
                                                     clockwise:YES];
    self.circleLayer.path = path.CGPath;
    self.circleLayer.frame = self.bounds;
}

- (void)beginRefreshing
{
    CAKeyframeAnimation *rotateAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform.rotation"];
    rotateAnimation.values = @[
                               @0,
                               @(M_PI),
                               @(2 * M_PI)
                               ];
    
    CABasicAnimation *headAnimation = [CABasicAnimation animation];
    headAnimation.keyPath = @"strokeStart";
    headAnimation.duration = 1;
    headAnimation.fromValue = @0;
    headAnimation.toValue = @.25;
    
    CABasicAnimation *tailAnimation = [CABasicAnimation animation];
    tailAnimation.keyPath = @"strokeEnd";
    tailAnimation.duration = 1;
    tailAnimation.fromValue = @0;
    tailAnimation.toValue = @1;
    
    CABasicAnimation *endHeadAnimation = [CABasicAnimation animation];
    endHeadAnimation.keyPath = @"strokeStart";
    endHeadAnimation.beginTime = 1.;
    endHeadAnimation.duration = 1;
    endHeadAnimation.fromValue = @.25;
    endHeadAnimation.toValue = @1;
    
    CABasicAnimation *endTailAnimation = [CABasicAnimation animation];
    endTailAnimation.keyPath = @"strokeEnd";
    endTailAnimation.beginTime = 1;
    endTailAnimation.duration = 1;
    endTailAnimation.fromValue = @1;
    endTailAnimation.toValue = @1;
    
    CAAnimationGroup *animations = [CAAnimationGroup animation];
    animations.duration = 2;
    animations.animations = @[
                              rotateAnimation,
                              headAnimation,
                              tailAnimation,
                              endHeadAnimation,
                              endTailAnimation
                              ];
    animations.repeatCount = INFINITY;
        
    [self.circleLayer addAnimation:animations forKey:@"animations"];
}

- (void)endRefreshing
{
    [self.circleLayer removeAnimationForKey:@"animations"];
}

@end
