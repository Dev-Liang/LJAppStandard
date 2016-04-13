//
//  SecondViewController.m
//  LJAppStandard
//
//  Created by liang on 16/4/10.
//  Copyright © 2016年 liang. All rights reserved.
//

#import "SecondViewController.h"
#import "ThridViewController.h"
#import "MessagesViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
//    [super viewDidLoad];
//    UIButton *btn = [[UIButton alloc] init];
//    btn.frame = CGRectMake(100, 100, 100, 40);
//    btn.backgroundColor = [UIColor redColor];
//    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
//    [btn setTitle:@"2按钮" forState:UIControlStateNormal];
//    [self.view addSubview:btn];
    
    self.view.backgroundColor = [UIColor whiteColor];;
    [self startLoading];
    sleep(10);
    [self endLoading];
    
}

- (void)dealloc{
    NSLog(@"SecondViewController.h");
}

- (void)btnClick{
    ThridViewController *thridVC = [[ThridViewController alloc] init];
    thridVC.view.backgroundColor = [UIColor blueColor];
    
    
    [self.navigationController pushViewController:thridVC animated:YES];
}

@end
