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
#import "FourthViewController.h"
#import "TestViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [[UIButton alloc] init];
    btn.frame = CGRectMake(100, 100, 100, 40);
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitle:@"alert" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    
    self.view.backgroundColor = [UIColor whiteColor];;

    
    
    
}

- (void)btnClick{
//    TestViewController *thridVC = [[TestViewController alloc] init];
//    
//    
//    [self.navigationController pushViewController:thridVC animated:YES];
    
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"hello" message:@"world" preferredStyle:UIAlertControllerStyleAlert];
    [self presentViewController:alert animated:YES completion:^{
        [UIView animateWithDuration:10.0 animations:^{
            [self dismissViewControllerAnimated:YES completion:nil];
        }];
    }];

}

@end
