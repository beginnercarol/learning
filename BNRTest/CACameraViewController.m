//
//  CACameraViewController.m
//  BNRTest
//
//  Created by carolpang(庞瑶瑶) on 2019/7/19.
//  Copyright © 2019 carolpang(庞瑶瑶). All rights reserved.
//

#import "CACameraViewController.h"
#import <AVFoundation/AVFoundation.h>
#import "BNRPreviewView.h"
#import "CACamPhotoDelegate.h"

@interface CACameraViewController ()
@property (nonatomic, strong) AVCaptureSession *session;
@property (nonatomic, strong) AVCaptureDevice *device;
@property (nonatomic, strong) AVCaptureDeviceInput *deviceInput;
@property (nonatomic, strong) AVCaptureVideoDataOutput *videoOutput;
@property (nonatomic, strong) AVCapturePhotoOutput *photoOutput;
@property (nonatomic, strong) BNRPreviewView *preview;
@property (nonatomic)NSMutableDictionary<NSNumber *, CACamPhotoDelegate *> *inProgressPhotoCaptureDelegate;
@end

@implementation CACameraViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self requestForCameraAccessAuthorization];
    _preview = [[BNRPreviewView alloc] initWithFrame:[self.view bounds]];
    [self.view addSubview:_preview];
}


- (void)requestForCameraAccessAuthorization {
    switch ([AVCaptureDevice authorizationStatusForMediaType: AVMediaTypeVideo]) {
        case AVAuthorizationStatusAuthorized:
            [self setupCatureSession];
            break;
            
        case AVAuthorizationStatusNotDetermined: {
            [AVCaptureDevice requestAccessForMediaType: AVMediaTypeVideo completionHandler:^(BOOL granted) {
                if (granted) {
                    [self setupCatureSession];
                }
            }];
            break;
        }
        default:
            break;
    }
}

- (void)setupCatureSession {
    _session = [[AVCaptureSession alloc] init];
    [self.session beginConfiguration];
    [self.session setSessionPreset:AVCaptureSessionPresetPhoto];
    AVCaptureDevice *device = nil;
    device = [AVCaptureDevice defaultDeviceWithDeviceType:AVCaptureDeviceTypeBuiltInDualCamera mediaType:AVMediaTypeVideo position:AVCaptureDevicePositionBack];
    if (device != nil) {
        _device = device;
    }
    
    NSError *error = nil;
    
    AVCaptureDeviceInput *input = [[AVCaptureDeviceInput alloc] initWithDevice:_device error:&error];
    
    if (!error) {
        if ([_session canAddInput:input]) {
            [_session addInput:input];
            _deviceInput = input;
        }
    }
    
    AVCapturePhotoOutput *output = [[AVCapturePhotoOutput alloc] init];
    
    if ([_session canAddOutput:output]) {
        [_session addOutput: output];
        _photoOutput = output;
    }
    [self.session commitConfiguration];
    [self.session startRunning];
    
    self.preview.videoPreviewLayer.session = _session;
}


    
    
    

    
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
