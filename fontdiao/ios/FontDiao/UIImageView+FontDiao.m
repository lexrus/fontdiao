//
//  UIImageView+FontDiao.m
//  FontDiaoDemo
//
//  Created by Lex on 10/7/13.
//
//  The MIT License (MIT)
//  Copyright © 2013 Lex Tang, http://LexTang.com
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the “Software”), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import "UIImageView+FontDiao.h"
#import "UIFont+FontDiao.h"
#import <QuartzCore/QuartzCore.h>
#import <objc/runtime.h>

const static char kIconViewKey;
const static char kIconIdentifierKey;
const static char kIconKey;


@implementation UIImageView (FontDiao)

- (UILabel*)iconView
{
    UILabel *iconView = objc_getAssociatedObject(self, &kIconViewKey);
    if (!iconView) {
        iconView = [[UILabel alloc] init];
        iconView.frame = CGRectMake(0, 0, self.bounds.size.width ?: 14, self.bounds.size.height ?: 14);
        iconView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        iconView.font = [UIFont iconicFontOfSize:self.bounds.size.height];
        iconView.textAlignment = NSTextAlignmentCenter;
        iconView.adjustsFontSizeToFitWidth = YES;
        iconView.backgroundColor = [UIColor clearColor];
        
        iconView.hidden = YES;
        
        [self addSubview:iconView];
        
        objc_setAssociatedObject(self, &kIconViewKey, iconView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return iconView;
}

- (UIColor*)iconColor
{
    return self.iconView.textColor;
}

- (void)setIconColor:(UIColor *)iconColor
{
    self.iconView.textColor = iconColor;
}

- (NSString*)iconIdentifier
{
    return objc_getAssociatedObject(self, &kIconIdentifierKey);
}

- (void)setIconIdentifier:(NSString *)iconIdentifier
{
    self.iconView.text = [NSString fontDiaoIconStringForIconIdentifier:iconIdentifier];
    self.iconView.hidden = NO;
    objc_setAssociatedObject(self, &kIconIdentifierKey, iconIdentifier, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (FDIcon)icon
{
    NSNumber *iconNumber = objc_getAssociatedObject(self, &kIconKey);
    return iconNumber ? [iconNumber integerValue] : 0;
}

- (void)setIcon:(FDIcon)icon
{
    self.iconView.text = [NSString fontDiaoIconStringForEnum:icon];
    self.iconView.hidden = NO;
    objc_setAssociatedObject(self, &kIconKey, @(icon), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIImage*)iconImage
{
    UIGraphicsBeginImageContextWithOptions(self.iconView.bounds.size, NO, 2.0f);
    [self.iconView.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *iconImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return iconImage;
}

@end
