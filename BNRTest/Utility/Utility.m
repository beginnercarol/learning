//
//  Utility.m
//  BNRTest
//
//  Created by carolpang(庞瑶瑶) on 2019/7/20.
//  Copyright © 2019 carolpang(庞瑶瑶). All rights reserved.
//

#import "Utility.h"

@implementation Utility
+ (instancetype)sharedInstance {
    static Utility *utility = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        utility = [[Utility alloc] init];
    });
    return utility;
}
- (CGFloat)getStatusBarHeight {
    return [[UIApplication sharedApplication] statusBarFrame].size.height;
}
- (CGRect)getViewRect:(UIView *)view {
    return view.bounds;
}
@end
