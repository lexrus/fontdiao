//
//  FDCollectionViewCell.h
//  FontDiaoDemo
//
//  Created by Lex on 11/18/13.
//  Copyright (c) 2013 FontDiao. All rights reserved.
//

#import <UIKit/UIKit.h>

FOUNDATION_EXPORT NSString * const kFDCollectionViewCellIdentifier;

@interface FDCollectionViewCell : UICollectionViewCell

@property (nonatomic, weak) IBOutlet UIImageView *imageView;
@property (nonatomic, weak) IBOutlet UILabel *iconNameLabel;

- (void)configureWithIconIdentifier:(NSString *)iconIdentifier;

@end
