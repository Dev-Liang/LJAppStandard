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
//    UIButton *btn = [[UIButton alloc] init];
//    btn.frame = CGRectMake(100, 100, 100, 40);
//    btn.backgroundColor = [UIColor redColor];
//    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
//    [btn setTitle:@"测试" forState:UIControlStateNormal];
//    [self.view addSubview:btn];
    
    

        UITextView *textView = [[UITextView alloc] initWithFrame:DeviceRect];
        NSMutableAttributedString *firstString = [[NSMutableAttributedString alloc] initWithString:@""];
        [firstString addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithHexString:kc00_333333] range:NSMakeRange(0, firstString.length-1)];
        [firstString addAttribute:NSFontAttributeName value:themeFont14 range:NSMakeRange(0, firstString.length-1)];
        
        NSMutableAttributedString *secondString = [[NSMutableAttributedString alloc] initWithString:@""];
        [secondString addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithHexString:kc00_ff0000] range:NSMakeRange(0, secondString.length-1)];
        [secondString addAttribute:NSFontAttributeName value:themeFont14 range:NSMakeRange(0, secondString.length-1)];
        
        [firstString appendAttributedString:secondString];
        textView.attributedText = firstString;
        textView.backgroundColor = [UIColor colorWithHexString:kc00_f5f5f5];
//        textView.textColor = [UIColor colorWithHexString:kc00_333333];
        textView.font = themeFont14;
        textView.userInteractionEnabled = NO;
        [self.view addSubview:textView];
    
}

- (void)btnClick{
    [self.navigationController pushViewController:[TestViewController new] animated:YES];
}

@end
