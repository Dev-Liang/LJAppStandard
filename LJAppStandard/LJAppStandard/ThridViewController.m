//
//  ThridViewController.m
//  LJAppStandard
//
//  Created by liang on 16/4/10.
//  Copyright © 2016年 liang. All rights reserved.
//

#import "ThridViewController.h"
#import "MessagesViewController.h"
@interface ThridViewController ()

@end

@implementation ThridViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [[UIButton alloc] init];
    btn.frame = CGRectMake(100, 100, 100, 40);
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitle:@"按钮" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    
}

- (void)dealloc{
    NSLog(@"ThridViewController.m");
}

- (void)btnClick{
    MessagesViewController *thridVC = [[MessagesViewController alloc] init];
    thridVC.view.backgroundColor = [UIColor blueColor];
    
    [self.navigationController pushViewController:thridVC animated:YES];
}

@end
