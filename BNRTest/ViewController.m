//
//  ViewController.m
//  BNRTest
//
//  Created by carolpang(庞瑶瑶) on 2019/7/19.
//  Copyright © 2019 carolpang(庞瑶瑶). All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, weak)UIButton *takePhotoBtn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _takePhotoBtn = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2-50, self.view.frame.size.height/2 - 40, 100, 80)];
    
    [self.view addSubview:_takePhotoBtn];
    
    [self.takePhotoBtn addTarget:self action:@selector(clickToShowPhotoCamera:) forControlEvents:UIControlEventTouchUpInside];
    // Do any additional setup after loading the view.
}

- (void)clickToShowPhotoCamera:(UIButton *)btn {
    
}

@end
