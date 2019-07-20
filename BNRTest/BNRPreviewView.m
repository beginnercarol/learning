//
//  BNRPreviewView.m
//  BNRTest
//
//  Created by carolpang(庞瑶瑶) on 2019/7/19.
//  Copyright © 2019 carolpang(庞瑶瑶). All rights reserved.
//

#import "BNRPreviewView.h"
#import <AVFoundation/AVFoundation.h>
@implementation BNRPreviewView
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
+ (Class)layerClass {
    return [AVCaptureVideoPreviewLayer class];
}

- (AVCaptureVideoPreviewLayer *)videoPreviewLayer {
    return (AVCaptureVideoPreviewLayer *)self.layer; //readonly所以只能通过getter访问
}
@end
