//
//  TimeButtonController.m
//  LJAppStandard
//
//  Created by liang on 16/4/18.
//  Copyright © 2016年 liang. All rights reserved.
//

#import "TimeButtonController.h"
#import "TimeButton.h"
@interface TimeButtonController ()

@end

@implementation TimeButtonController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    TimeButton *btn = [[TimeButton alloc] init];
    btn.frame = CGRectMake((DeviceWidth - 150) / 2, (DeviceHeight - 60) / 2, 150, 30);
    btn.layer.cornerRadius = 10;
    [btn setBackgroundColor:[UIColor greenColor]];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnClick:(TimeButton *)btn{
    [btn timerWithSecond:60];
}

@end
