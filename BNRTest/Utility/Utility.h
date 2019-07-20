//
//  Utility.h
//  BNRTest
//
//  Created by carolpang(庞瑶瑶) on 2019/7/20.
//  Copyright © 2019 carolpang(庞瑶瑶). All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Utility : NSObject
+ (instancetype)sharedInstance;
- (CGFloat)getStatusBarHeight;
- (CGRect)getViewRect: (UIView *)view;
@end

NS_ASSUME_NONNULL_END
