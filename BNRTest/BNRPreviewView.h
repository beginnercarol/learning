//
//  BNRPreviewView.h
//  BNRTest
//
//  Created by carolpang(庞瑶瑶) on 2019/7/19.
//  Copyright © 2019 carolpang(庞瑶瑶). All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRPreviewView : UIView
@property (nonatomic, strong) AVCaptureVideoPreviewLayer *videoPreviewLayer;

@end

NS_ASSUME_NONNULL_END
