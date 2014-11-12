//
//  UIButton+FontDiao.m
//  FontDiao
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

#import "UIButton+FontDiao.h"
#import "UIImageView+FontDiao.h"
#import <objc/runtime.h>

const static char kIconImageViewKey;
const static CGFloat kIconEdgeInset = 5.0f;

@implementation UIButton (FontDiao)

- (UIImageView*)iconImageView
{
    UIImageView *iconImageView = objc_getAssociatedObject(self, &kIconImageViewKey);
    if (!iconImageView) {
        iconImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.bounds.size.height, self.bounds.size.height)];
        iconImageView.backgroundColor = [UIColor clearColor];
        objc_setAssociatedObject(self, &kIconImageViewKey, iconImageView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return iconImageView;
}

- (void)updateIconView
{
    [self setImageEdgeInsets:UIEdgeInsetsMake(kIconEdgeInset, kIconEdgeInset, kIconEdgeInset, kIconEdgeInset)];
    [self setImage:self.iconImageView.iconImage forState:UIControlStateNormal];
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
}

- (FDIcon)icon
{
    return self.iconImageView.icon;
}

- (void)setIcon:(FDIcon)icon
{
    self.iconImageView.icon = icon;
    [self updateIconView];
}

- (void)setIconWithIconIdentifier:(NSString *)iconIdentifier
{
    self.iconImageView.iconIdentifier = iconIdentifier;
    [self updateIconView];
}

@end
