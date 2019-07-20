//
//  BNRStatusManager.h
//  BNRTest
//
//  Created by carolpang(庞瑶瑶) on 2019/7/20.
//  Copyright © 2019 carolpang(庞瑶瑶). All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRStatusManager : NSObject
+ (instancetype)sharedInstance;
@property (nonatomic, strong)NSDate *appStartDate;
@property (nonatomic, strong)NSDate *appFinishLoading;
@end

NS_ASSUME_NONNULL_END
