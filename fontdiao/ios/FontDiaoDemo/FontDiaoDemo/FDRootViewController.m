//
//  FDRootViewController.m
//  FontDiaoDemo
//
//  Created by Lex on 10/7/13.
//  Copyright (c) 2013 FontDiao. All rights reserved.
//

#import "FDRootViewController.h"
#import "FontDiao.h"
#import "FDCollectionViewCell.h"

@interface FDRootViewController ()<UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic, strong) NSArray *icons;

@end

@implementation FDRootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Font屌 Demo", nil);
        
        UIImageView *leftButtonImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 32, 32)];
        leftButtonImageView.icon = FDIconBaidu;
        UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithCustomView:leftButtonImageView];
        self.navigationItem.leftBarButtonItem = leftButton;
        
        UIImageView *rightButtonImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 32, 32)];
        rightButtonImageView.icon = FDIconAlipay;
        UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithCustomView:rightButtonImageView];
        self.navigationItem.rightBarButtonItem = rightButton;
        
        [self.collectionView registerNib:[UINib nibWithNibName:@"FDRootViewController" bundle:nil] forCellWithReuseIdentifier:kFDCollectionViewCellIdentifier];
        
        self.icons = [[NSString fontDiaoIconsDictionary] allKeys];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.title = NSLocalizedString(@"Font屌 Demo", nil);
        
        UIImageView *leftButtonImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 32, 32)];
        leftButtonImageView.icon = FDIconBaidu;
        UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithCustomView:leftButtonImageView];
        self.navigationItem.leftBarButtonItem = leftButton;
        
        UIImageView *rightButtonImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 32, 32)];
        rightButtonImageView.icon = FDIconAlipay;
        UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithCustomView:rightButtonImageView];
        self.navigationItem.rightBarButtonItem = rightButton;

//        [self.collectionView registerClass:[FDCollectionViewCell class] forCellWithReuseIdentifier:kFDCollectionViewCellIdentifier];
        
        self.icons = [[NSString fontDiaoIconsDictionary] allKeys];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UICollectionViewDatasource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.icons.count;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (FDCollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    FDCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kFDCollectionViewCellIdentifier
                                                                           forIndexPath:indexPath];
    
    [cell configureWithIconIdentifier:self.icons[indexPath.row]];
    
    return cell;
}

@end
