//
//  LJNetWorkingTools.h
//  LJAppStandard
//
//  Created by liang on 16/4/20.
//  Copyright © 2016年 liang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LJNetWorkingTools : NSObject
/** 检查网络状态*/
+ (void)checkNetWorkStatus;
/** 添加通知实时检测网络（如果不需要实时检测可以不添加该代码）*/
+ (void)addNetWorkChangeNotification;
/** 停止检测网络状态*/
+ (void)stopCheckNetWorkStatus;
@end
