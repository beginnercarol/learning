//
//  ViewController.m
//  BNRTest
//
//  Created by carolpang(庞瑶瑶) on 2019/7/19.
//  Copyright © 2019 carolpang(庞瑶瑶). All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@property (nonatomic, strong)UIButton *takePhotoBtn;
@property (nonatomic)UITextField *tasknInputField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    _takePhotoBtn = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2-50, self.view.frame.size.height/2 - 40, 100, 80)];
    _takePhotoBtn = [[UIButton alloc] initWithFrame:CGRectMake(120, 20, 250, 80)];
    [_takePhotoBtn setTintColor: UIColor.brownColor];
    _tasknInputField = [[UITextField alloc] initWithFrame:CGRectMake(10, 20, 100, 80)];
    
    
//    [_tasknInputField sizeToFit];
    [_tasknInputField.layer setBorderColor:UIColor.grayColor.CGColor];
    [_tasknInputField.layer setBorderWidth:3];
    [self.takePhotoBtn setTitle:@"Take Photo" forState:UIControlStateNormal];
    self.tasknInputField.placeholder = @"Input new task";
    [self.view addSubview:_takePhotoBtn];
    [self.view addSubview:self.tasknInputField];
    [self.takePhotoBtn addTarget:self action:@selector(clickToShowPhotoCamera:) forControlEvents:UIControlEventTouchUpInside];
    // Do any additional setup after loading the view.
    
}

- (void)clickToShowPhotoCamera:(UIButton *)btn {
    _cameraVC = [[CACameraViewController alloc] init];
    [self presentViewController:self.cameraVC animated:YES completion:^{
        NSLog(@"Present camera vc successfully!");
    }];
}

@end
