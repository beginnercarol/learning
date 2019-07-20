//
//  BNRStatusManager.m
//  BNRTest
//
//  Created by carolpang(庞瑶瑶) on 2019/7/20.
//  Copyright © 2019 carolpang(庞瑶瑶). All rights reserved.
//

#import "BNRStatusManager.h"

@implementation BNRStatusManager
+ (instancetype)sharedInstance {
    static BNRStatusManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[BNRStatusManager alloc] init];
    });
    return manager;
}
@end
