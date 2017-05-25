//
//  LRCircleMenuItem.m
//
//  Created by Leilurong on 2017/2/4.
//  Copyright © 2017年 Leilurong. All rights reserved.
//

#import "LRCircleMenuItem.h"

@implementation LRCircleMenuItem

+ (instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title {
    LRCircleMenuItem *item = [[LRCircleMenuItem alloc] init];
    item.icon = icon;
    item.title = title;
    return item;
}

@end
