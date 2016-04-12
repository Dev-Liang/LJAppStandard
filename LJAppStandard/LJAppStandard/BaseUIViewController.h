//
//  BaseUIViewController.h
//  LJAppStandard
//
//  Created by liang on 16/4/10.
//  Copyright © 2016年 liang. All rights reserved.
//

#import <UIKit/UIKit.h>
/**
 *  viewController的父类，提供UI
 */
@interface BaseUIViewController : UIViewController
@property (nonatomic, weak) UILabel *navTitleLabel;/** 导航条的自定义titleLabel*/
@property (nonatomic, copy) NSString *navTitleText;/** 导航条的文字*/
@property (nonatomic, assign) BOOL isSupportSingleTapHideKeyboard;/** 点击屏幕隐藏键盘*/
/**
 *  设置title的数据（子类重写
 */
- (void)setupTitleData;
/**
 *  添加通知来监听用户登录状态的改变(子类重写)
 */
- (void)addNotiToObserveUserLogInfomation;
/**
 *  返回按钮事件（子类重写)
 */
- (void)backButtonItemClick;
/**
 *  设置右侧BarButtonItem（子类重写）
 *
 *  @param str   文字（如果是图片，@""）
 *  @param image 图片
 */
- (void)setNavRightItemWith:(NSString *)str andImage:(UIImage *)image;
/**
 *  设置左侧BarButtonItem（子类重写）
 *
 *  @param str   文字（如果是图片，@""）
 *  @param image 图片
 */
- (void)setNavLeftItemWith:(NSString *)str andImage:(UIImage *)image;
/**
 *  左侧点击事件（子类重写）
 *
 */
- (void)leftItemClick:(id)sender;
/**
 *  右侧点击事件（子类重写
 *
 */
- (void)rightItemClick:(id)sender;

@end
