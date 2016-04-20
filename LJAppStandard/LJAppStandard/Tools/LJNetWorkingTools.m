//
//  LJNetWorkingTools.m
//  LJAppStandard
//
//  Created by liang on 16/4/20.
//  Copyright © 2016年 liang. All rights reserved.
//

#import "LJNetWorkingTools.h"
#import "AFNetworkReachabilityManager.h"

@implementation LJNetWorkingTools
/** 检查网络状态*/
+ (void)checkNetWorkStatus {
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
    
    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        switch (status) {
            case AFNetworkReachabilityStatusUnknown:
                NSLog(@"未知网络");
                break;
            case AFNetworkReachabilityStatusNotReachable:
                NSLog(@"无网络");
                break;
            case AFNetworkReachabilityStatusReachableViaWWAN:
                NSLog(@"有线网络");
                break;
            case AFNetworkReachabilityStatusReachableViaWiFi:
                NSLog(@"WIFI网络");
                break;
            default:
                break;
        }
    }];
}

/** 添加通知实时检测网络（如果不需要实时检测可以不添加该代码）*/
+ (void)addNetWorkChangeNotification {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(reachabilityChanged:) name:AFNetworkingReachabilityDidChangeNotification object:nil];
}

/** 当网络变化时调用*/
+ (void)reachabilityChanged:(NSNotification *)note {
    NSDictionary *userinfo = note.userInfo;
    AFNetworkReachabilityStatus status = (AFNetworkReachabilityStatus)userinfo[AFNetworkingReachabilityNotificationStatusItem];
    switch (status) {
        case AFNetworkReachabilityStatusUnknown:
            NSLog(@"未知网络");
            break;
        case AFNetworkReachabilityStatusNotReachable:
            NSLog(@"无网络");
            break;
        case AFNetworkReachabilityStatusReachableViaWWAN:
            NSLog(@"有线网络");
            break;
        case AFNetworkReachabilityStatusReachableViaWiFi:
            NSLog(@"WIFI网络");
            break;
        default:
            break;
    }
    
}

/** 停止检测网络状态*/
+ (void)stopCheckNetWorkStatus {
    [[AFNetworkReachabilityManager sharedManager] stopMonitoring];
}

@end
