//
//  FirstViewController.m
//  LJAppStandard
//
//  Created by liang on 16/4/10.
//  Copyright © 2016年 liang. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.view.backgroundColor = [UIColor whiteColor];
//    UITextField *textF = [[UITextField alloc] init];
//    textF.backgroundColor = [UIColor blueColor];
//    textF.frame = CGRectMake(100, 100, 200, 50);
//    [self.view addSubview:textF];
    
    self.view.backgroundColor = [UIColor whiteColor];;
    
    sleep(10);

    
    UIButton *btn = [UICreator createButtonWithTitle:@"start" titleColor:[UIColor redColor] font:[UIFont systemFontOfSize:15] target:self action:@selector(btnclick)];
    btn.frame = CGRectMake(100, 100, 100, 20);
    [self.view addSubview:btn];
    
    UIButton *btn1 = [UICreator createButtonWithTitle:@"end" titleColor:[UIColor redColor] font:[UIFont systemFontOfSize:15] target:self action:@selector(btn1click)];
    btn1.frame = CGRectMake(100, 150, 100, 20);
    [self.view addSubview:btn1];
    
    UIButton *btn2 = [UICreator createButtonWithTitle:@"hello" titleColor:[UIColor redColor] font:[UIFont systemFontOfSize:15] target:self action:@selector(btn2click)];
    btn2.frame = CGRectMake(100, 180, 100, 20);
    [self.view addSubview:btn2];
}

- (void)btnclick{
    [self startLoading];
}

- (void)btn1click{
    [self endLoading];
}

- (void)btn2click{
    NSLog(@"哈哈哈哈哈");
}

- (void)setupTitleData{
    self.navTitleText = @"第一个";
}


@end
