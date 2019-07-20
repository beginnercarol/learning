//
//  LCWordSearch.h
//  BNRTest
//
//  Created by carolpang(庞瑶瑶) on 2019/7/20.
//  Copyright © 2019 carolpang(庞瑶瑶). All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LCWordSearch : NSObject
@property (nonatomic) NSArray *wordPanel;
@property (nonatomic) NSString *searchWord;
- (instancetype)init:(NSArray<NSArray *> *)wordPanel andSearchWord: (NSString *)searchWord;
@end

NS_ASSUME_NONNULL_END
