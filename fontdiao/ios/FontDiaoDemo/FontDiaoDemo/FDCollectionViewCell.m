//
//  FDCollectionViewCell.m
//  FontDiaoDemo
//
//  Created by Lex on 11/18/13.
//  Copyright (c) 2013 FontDiao. All rights reserved.
//

#import "FDCollectionViewCell.h"
#import "FontDiao.h"

NSString * const kFDCollectionViewCellIdentifier = @"FDCollectionViewCell";

@implementation FDCollectionViewCell

- (void)configureWithIconIdentifier:(NSString *)iconIdentifier
{
    self.imageView.iconIdentifier = iconIdentifier;
    self.iconNameLabel.text = [iconIdentifier substringFromIndex:5];
    self.imageView.iconColor = [UIColor colorWithRed:(arc4random() % 100 + arc4random() % 155) / 255.0
                                               green:(arc4random() % 100 + arc4random() % 155) / 255.0
                                                blue:(arc4random() % 100 + arc4random() % 155) / 255.0
                                               alpha:1];
}

@end
