//
//  UIViewFactory.m
//  Pods
//
//  Created by yangcs on 2018/4/16.
//
//

#import "UIViewFactory.h"

@implementation UIViewFactory

+(UILabel *)buildLabelWithText:(NSString *)text fontColor:(UIColor *)fontColor fontSize:(CGFloat)fontSize singleLine:(BOOL)singleLine{
    UILabel *label = [[UILabel alloc] init];
    label = [[UILabel alloc] init];
    label.text = text;
    label.textColor = fontColor;
    label.font = [UIFont systemFontOfSize:fontSize];
    if (singleLine) {
        label.numberOfLines = 1;
        label.lineBreakMode = NSLineBreakByTruncatingTail;
    }else{
        label.numberOfLines = 0;
        label.lineBreakMode = NSLineBreakByWordWrapping;
    }
    return label;
}

+(UIButton *)buildButtonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor fontSize:(CGFloat)fontSize backgrondColor:(UIColor *)backgroundColor cornerRadius:(CGFloat)cornerRadius {
    UIButton *button = [[UIButton alloc] init];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitle:title forState:UIControlStateHighlighted];
    [button setTitleColor:titleColor forState:UIControlStateNormal];
    [button setTitleColor:titleColor forState:UIControlStateHighlighted];
    button.titleLabel.font = [UIFont systemFontOfSize:fontSize];
    button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    button.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    button.backgroundColor = backgroundColor;
    if (cornerRadius > 0) {
        button.layer.cornerRadius = cornerRadius;
        button.layer.masksToBounds = YES;
    }
    return button;
}

+(UIView *)buildLineView {
    UIView *lineView = [[UIView alloc] init];
    lineView.backgroundColor = [UIColor lightGrayColor];
    lineView.alpha = 0.5;
    return lineView;
}

+(UIImageView *)buildImageViewWithMasksToBounds:(BOOL)masksToBounds
                                   cornerRadius:(CGFloat)cornerRadius
                         userInteractionEnabled:(BOOL)userInteractionEnabled{
    UIImageView *imageView = [[UIImageView alloc]init];
    imageView.layer.masksToBounds = masksToBounds;
    imageView.layer.cornerRadius = cornerRadius;
    imageView.userInteractionEnabled = userInteractionEnabled;
    return imageView;
}


@end
