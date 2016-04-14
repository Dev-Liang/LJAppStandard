//
//  TestViewController.m
//  LJAppStandard
//
//  Created by liang on 16/4/14.
//  Copyright © 2016年 liang. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btn = [[UIButton alloc] init];
    btn.frame = CGRectMake(100, 100, 100, 40);
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitle:@"测试" forState:UIControlStateNormal];
    [self.view addSubview:btn];
}

- (void)btnClick{
    [self.navigationController pushViewController:[TestViewController new] animated:YES];
}

@end
