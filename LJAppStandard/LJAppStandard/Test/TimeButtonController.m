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
    btn.frame = CGRectMake(self.view.center.x, self.view.center.y, 150, 50);
    [btn setBackgroundColor:[UIColor grayColor]];
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnClick:(TimeButton *)btn{
    [btn timerWithSecond:60];
}

@end
