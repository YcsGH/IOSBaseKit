//
//  UIViewFactory.h
//  Pods
//
//  Created by yangcs on 2018/4/16.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIViewFactory : NSObject

+(UILabel *)buildLabelWithText:(NSString *)text
                     fontColor:(UIColor *)fontColor
                      fontSize:(CGFloat)fontSize
                    singleLine:(BOOL)singleLine;
+(UIButton *)buildButtonWithTitle:(NSString *)title
                       titleColor:(UIColor *)titleColor
                         fontSize:(CGFloat)fontSize
                   backgrondColor:(UIColor *)backgroundColor
                     cornerRadius:(CGFloat)cornerRadius;
+(UIView *)buildLineView;
+(UIImageView *)buildImageViewWithMasksToBounds:(BOOL)masksToBounds
                                   cornerRadius:(CGFloat)cornerRadius
                         userInteractionEnabled:(BOOL)userInteractionEnabled;

@end
