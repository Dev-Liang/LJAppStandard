//
//  LJTabBarController.m
//  LJAppStandard
//
//  Created by liang on 16/4/10.
//  Copyright © 2016年 liang. All rights reserved.
//

#import "LJTabBarController.h"
#import "LJNavigationController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThridViewController.h"
#import "FourthViewController.h"
#import "CenterViewController.h"
#import "MessagesViewController.h"
#import "LJTabBar.h"
@interface LJTabBarController ()

@end

@implementation LJTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 普通情况下，添加4个控制器
    [self setupTabbarItems];
    [self setupChildVCs];
    
    // 给tabbar添加中间的按钮，如微博（根据情况来使用）
    [self setupTabBar];
}

- (void)setupTabBar{
    [self setValue:[[LJTabBar alloc] init] forKeyPath:@"tabBar"];
}

/**
 *  统一设置tabbar按钮的文字样式
 */
- (void)setupTabbarItems{
    NSMutableDictionary *normalAttrs = [NSMutableDictionary dictionary];
    // 普通状态下按钮文字的颜色
    normalAttrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    normalAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    // 选中状态下按钮文字的颜色
    selectedAttrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    
    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:normalAttrs forState:UIControlStateNormal];
    [item setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
}

/**
 *  添加所有子控制器
 */
- (void)setupChildVCs{
    [self setupChildVc:[[FirstViewController alloc] init] title:@"第一个" image:@"11" selectedImage:@"12"];
    [self setupChildVc:[[SecondViewController alloc] init] title:@"第二个" image:@"21" selectedImage:@"22"];
    [self setupChildVc:[[MessagesViewController alloc] init] title:@"消息" image:@"31" selectedImage:@"32"];
    [self setupChildVc:[[FourthViewController alloc] init] title:@"第四个" image:@"41" selectedImage:@"42"];
}

/**
 * 添加一个子控制器
 * @param title 文字
 * @param image 图片
 * @param selectedImage 选中时的图片
 */
- (void)setupChildVc:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    LJNavigationController *nav = [[LJNavigationController alloc] initWithRootViewController:vc];
    [self addChildViewController:nav];
    
    nav.tabBarItem.title = title;
    nav.tabBarItem.image = [UIImage imageNamed:image];
    nav.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
}

@end
