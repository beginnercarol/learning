//
//  LCWordSearch.m
//  BNRTest
//
//  Created by carolpang(庞瑶瑶) on 2019/7/20.
//  Copyright © 2019 carolpang(庞瑶瑶). All rights reserved.
//

#import "LCWordSearch.h"
@interface LCWordSearch()
@property (nonatomic) NSInteger row;
@property (nonatomic) NSInteger col;
@end

@implementation LCWordSearch
- (instancetype)init:(NSArray *)wordPanel andSearchWord: (NSString *)searchWord{
    self = [super init];
    if (self) {
        _wordPanel = wordPanel;
        _searchWord = searchWord;
        _row = wordPanel.count;
        if (wordPanel.count!=0) {
            _col = ((NSArray*)wordPanel[0]).count;
        }
    }
    return self;
}
- (NSArray *)searchWord {
    NSCharacterSet *set = [NSCharacterSet characterSetWithCharactersInString:self.searchWord];
    return [self.searchWord componentsSeparatedByCharactersInSet:set];
}

- (NSMutableArray *)wordPanel {
    
}

- (void)wordSearch: (NSString *)string {
    for (int row = 0; row < self.wordPanel.count; row += 1) {
        for (int col = 0; col < ((NSArray*)self.wordPanel[0]).count; col += 1) {
            if (<#condition#>) {
                <#statements#>
            }
        }
    }
}
@end
