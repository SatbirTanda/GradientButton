//
//  SSTGradientButton.m
//  GradientButton
//
//  Created by Satbir Tanda on 11/3/17.
//

#import "SSTGradientButton.h"

@implementation SSTGradientButton

- (instancetype)initWithFrame:(CGRect)frame withColors:(NSArray *)colors andFadeOrientation:(FadeOrientation)fadeOrientation
{
    self = [super initWithFrame:frame];
    if(self)
    {
        CAGradientLayer *gradientLayer = [[CAGradientLayer alloc] init];
        gradientLayer.frame = self.bounds;
        NSMutableArray *cgColors = [[NSMutableArray alloc] initWithCapacity:colors.count];
        for(UIColor *color in colors)
        {
            [cgColors addObject:(id)color.CGColor];
        }
        gradientLayer.colors = cgColors;
        switch (fadeOrientation)
        {
            case FadeOrientationVertical:
                gradientLayer.startPoint = CGPointMake(0, 0);
                gradientLayer.endPoint = CGPointMake(0, 1);
                break;
            case FadeOrientationHorizontal:
                gradientLayer.startPoint = CGPointMake(0, 0);
                gradientLayer.endPoint = CGPointMake(1, 0);
                break;
            case FadeOrientationDiagonalTopRight:
                gradientLayer.startPoint = CGPointMake(0, 0);
                gradientLayer.endPoint = CGPointMake(1, 1);
                break;
            case FadeOrientationDiagonalBottomLeft:
                gradientLayer.startPoint = CGPointMake(0, 1);
                gradientLayer.endPoint = CGPointMake(1, 0);
                break;
        }
        [self.layer insertSublayer:gradientLayer atIndex:0];
    }
    return self;
}

@end
