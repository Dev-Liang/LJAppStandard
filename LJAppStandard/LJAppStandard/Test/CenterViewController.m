//
//  CenterViewController.m
//  LJAppStandard
//
//  Created by liang on 16/4/10.
//  Copyright © 2016年 liang. All rights reserved.
//

#import "CenterViewController.h"

@interface CenterViewController ()

@end

@implementation CenterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btn = [UICreator createButtonWithTitle:@"dismiss" titleColor:[UIColor redColor] font:[UIFont systemFontOfSize:14] target:self action:@selector(btnclick)];
    btn.frame = CGRectMake(100, 100, 100, 40);
    [self.view addSubview:btn];
}

- (void)btnclick{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
