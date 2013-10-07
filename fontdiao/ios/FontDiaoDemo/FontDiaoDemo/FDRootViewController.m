//
//  FDRootViewController.m
//  FontDiaoDemo
//
//  Created by Lex on 10/7/13.
//  Copyright (c) 2013 FontDiao. All rights reserved.
//

#import "FDRootViewController.h"
#import "FontDiao.h"

@interface FDRootViewController ()

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
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.imageView1.icon = FDIconTmall;
    self.imageView2.icon = FDIconJd;
    self.imageView3.icon = FDIconDazhong;
    self.imageView4.icon = FDIconTudou;
    self.imageView5.icon = FDIconCtrip;
    self.imageView6.icon = FDIconYixun;
    self.imageView7.icon = FDIconYoudao;
    self.imageView8.icon = FDIconDouban;
    self.imageView9.icon = FDIconWangyi;
    
    self.imageView1.iconColor = [UIColor redColor];
    self.imageView2.iconColor = [UIColor blueColor];
    self.imageView3.iconColor = [UIColor orangeColor];
    self.imageView4.iconColor = [UIColor greenColor];
    self.imageView5.iconColor = [UIColor purpleColor];
    self.imageView6.iconColor = [UIColor darkGrayColor];
    self.imageView7.iconColor = [UIColor orangeColor];
    self.imageView8.iconColor = [UIColor blueColor];
    self.imageView9.iconColor = [UIColor redColor];
    
    self.button1.icon = FDIconDianxin;
    self.button2.icon = FDIconTaobao;
    self.button3.icon = FDIconFenghuangweishi;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
