//
//  ViewController.m
//  Example
//
//  Created by Leilurong on 2017/1/22.
//  Copyright © 2017年 Leilurong. All rights reserved.
//

#import "ViewController.h"
#import "LRCircleMenuView.h"
#import "LRCircleMenuItem.h"

@interface ViewController ()<LRCircleMenuViewDelegate>

@end

@implementation ViewController

#pragma mark - Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    LRCircleMenuView *menuView = [[LRCircleMenuView alloc] init];
    menuView.frame = CGRectMake(0.0, 0.0, 300.0, 300.0);
    menuView.center = self.view.center;
    menuView.backgroundColor = [UIColor orangeColor];
    menuView.innerCircleRadius = 40.0;
//    menuView.borderLayoutMargin = 40.0;
//    menuView.autoAdjustPosition = NO;
//    menuView.defaultOffsetRadians = M_PI/3;//设置第一个item初始位置
    menuView.delegate = self;
    menuView.menuTextColor = [UIColor redColor];
    menuView.menuItems = @[
                           [LRCircleMenuItem itemWithIcon:@"gclive_favordeco_1_mt@2x.png" title:@"菜单1"],
                           [LRCircleMenuItem itemWithIcon:@"gclive_favordeco_2_mt@2x.png" title:@"菜单2"],
                           [LRCircleMenuItem itemWithIcon:@"gclive_favordeco_3_mt@2x.png" title:@"菜单3"],
                           [LRCircleMenuItem itemWithIcon:@"gclive_favordeco_4_mt@2x.png" title:@"菜单4"],
                           [LRCircleMenuItem itemWithIcon:@"gclive_favordeco_5_mt@2x.png" title:@"菜单5"],
                           [LRCircleMenuItem itemWithIcon:@"gclive_favordeco_6_mt@2x.png" title:@"我的检测"],
                           ];
    menuView.identifierImageView.layer.borderColor = [[UIColor purpleColor] CGColor];
    menuView.identifierImageView.layer.borderWidth = 2.0;
    NSString *icon = [[NSBundle mainBundle] pathForResource:@"avatar.jpg" ofType:nil];
    menuView.identifierImageView.image = [UIImage imageWithContentsOfFile:icon];
    menuView.layer.borderWidth = 2.0;
    menuView.layer.borderColor = [[UIColor purpleColor] CGColor];
    [self.view addSubview:menuView];
}


#pragma mark - <LRCircleMenuViewDelegate> -

- (void)circleMenuView:(LRCircleMenuView *)menuView didSelectedAtIndex:(NSInteger)index {
    LRCircleMenuItem *item = menuView.menuItems[index];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:[NSString stringWithFormat:@"select at %ld, %@",index,item.title] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
}


@end

