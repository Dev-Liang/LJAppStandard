//
//  BaseUIViewController.m
//  LJAppStandard
//
//  Created by liang on 16/4/10.
//  Copyright © 2016年 liang. All rights reserved.
//

#import "BaseUIViewController.h"

@interface BaseUIViewController ()

@end

@implementation BaseUIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupTitleData];
    
    [self setupTitleView];
    [self setupTitleTextAndBarButtonItem];
    
}

/**
 *  设置title的数据（子类重写）
 */
- (void)setupTitleData{
    
}

/**
 *  设置titleView的样式
 */
- (void)setupTitleView{
    if (![self.navTitleText isEmpty] && [self.navigationController.viewControllers count] > 1) {
        UILabel *lb = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 160, 44)];
        self.navTitleLabel = lb;
        self.navTitleLabel.text = self.navTitleText;
        self.navTitleLabel.backgroundColor = [UIColor clearColor];
        self.navTitleLabel.font = themeFont17;
        self.navTitleLabel.textAlignment = NSTextAlignmentCenter;
        // push出来的为灰色字体
        self.navTitleLabel.textColor = [UIColor colorWithHexString:@"#333333"];
        self.navigationItem.titleView = self.navTitleLabel;
    }else if (![self.navTitleText isEmpty] && [self.navigationController.viewControllers count] == 1){
        UILabel *lb = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 160, 44)];
        self.navTitleLabel = lb;
        self.navTitleLabel.text = self.navTitleText;
        self.navTitleLabel.backgroundColor = [UIColor clearColor];
        self.navTitleLabel.font = themeFont17;
        self.navTitleLabel.textAlignment = NSTextAlignmentCenter;
        // 基础的为白色字体
        self.navTitleLabel.textColor = [UIColor colorWithHexString:@"#ffffff"];
        self.navigationItem.titleView = self.navTitleLabel;
    }
}

/**
 *  设置标题的文字和标题的按钮
 */
- (void)setupTitleTextAndBarButtonItem{
    self.title = self.navTitleText;
    
}

@end
