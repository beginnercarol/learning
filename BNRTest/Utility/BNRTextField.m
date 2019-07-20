//
//  BNRTextField.m
//  BNRTest
//
//  Created by carolpang(庞瑶瑶) on 2019/7/20.
//  Copyright © 2019 carolpang(庞瑶瑶). All rights reserved.
//

#import "BNRTextField.h"

@implementation BNRTextField

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)initWithPlaceholderString:(NSString *)str {
    self = [super init];
    if (self) {
        NSDictionary *attributedDic = @{NSFontAttributeName: [UIFont fontWithName:@"Helvetica" size:12]};
        NSAttributedString *nsstring = [[NSAttributedString alloc] initWithString:@"placeholder" attributes:attributedDic];
        [self.layer setBorderWidth: 3];
        [self.layer setBorderColor:UIColor.grayColor.CGColor];
        [self.layer setCornerRadius:5];
        CGSize size = [nsstring size];
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, size.width, size.height);
    }
    return self;
}


@end
