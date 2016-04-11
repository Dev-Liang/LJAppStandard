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
    
    self.view.backgroundColor = [UIColor whiteColor];
    UITextField *textF = [[UITextField alloc] init];
    textF.backgroundColor = [UIColor blueColor];
    textF.frame = CGRectMake(100, 100, 200, 50);
    [self.view addSubview:textF];
    
}

- (void)setupTitleData{
    self.navTitleText = @"第一个";
}


@end
