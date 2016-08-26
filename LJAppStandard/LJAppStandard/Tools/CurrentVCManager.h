//
//  CurrentVCManager.h
//  LJAppStandard
//
//  Created by liang on 16/8/26.
//  Copyright © 2016年 liang. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BaseUIViewController;
@interface CurrentVCManager : NSObject
/** 获取当前的控制器*/
@property (nonatomic, strong) BaseUIViewController *currentViewController;
/** 生成一个当前控制器的单例*/
SingletonH(CurrentVCManager)
@end
