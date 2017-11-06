//
//  SSTGradientButton.h
//  GradientButton
//
//  Created by Satbir Tanda on 11/3/17.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, FadeOrientation)
{
    FadeOrientationHorizontal,
    FadeOrientationVertical,
    FadeOrientationDiagonalTopRight,
    FadeOrientationDiagonalBottomLeft
};

@interface SSTGradientButton : UIButton
- (instancetype)initWithFrame:(CGRect)frame withColors:(NSArray *)colors andFadeOrientation:(FadeOrientation)fadeOrientation;
@end
