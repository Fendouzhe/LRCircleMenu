//
//  LRCircleMenuItem.h
//
//  Created by Leilurong on 2017/2/4.
//  Copyright © 2017年 Leilurong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LRCircleMenuItem : NSObject

@property (nonatomic, copy) NSString *icon;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, strong)Class cls;

+ (instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title class:(Class)cls;

@end
