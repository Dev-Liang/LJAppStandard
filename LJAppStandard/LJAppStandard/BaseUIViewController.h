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
@end
