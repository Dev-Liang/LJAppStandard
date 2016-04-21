//
//  AppDelegate.m
//  LJAppStandard
//
//  Created by liang on 16/4/10.
//  Copyright © 2016年 liang. All rights reserved.
//

#import "AppDelegate.h"
#import "LJTabBarController.h"
#import "LJNetWorkingTools.h"
#import "JPUSHService.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = [[LJTabBarController alloc] init];
    [self.window makeKeyAndVisible];
    
    [self checkNetWork];
    
    
    // 注册
    if ([[UIDevice currentDevice].systemVersion floatValue] >= 8.0) {
        //可以添加自定义categories iOS8 新特性，例如快速回复
        [JPUSHService registerForRemoteNotificationTypes:(UIUserNotificationTypeBadge |
                                                          UIUserNotificationTypeSound |
                                                          UIUserNotificationTypeAlert)
                                              categories:nil];
    } else {
        //categories 必须为nil
        [JPUSHService registerForRemoteNotificationTypes:(UIRemoteNotificationTypeBadge |
                                                          UIRemoteNotificationTypeSound |
                                                          UIRemoteNotificationTypeAlert)
                                              categories:nil];
    }
    
    [JPUSHService setupWithOption:launchOptions appKey:@"3d02c654219bbf8de2849a22"
                          channel:@"appstore"
                 apsForProduction:NO // 如果为开发状态,设置为 NO; 如果为生产状态,应改为 YES.
            advertisingIdentifier:nil];// 广告 不用设置为nil
    
    return YES;
}


- (void)checkNetWork{
    [LJNetWorkingTools checkNetWorkStatus];
    [LJNetWorkingTools addNetWorkChangeEveryTime];
}

- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken {
    /// Required - 注册 DeviceToken
    [JPUSHService registerDeviceToken:deviceToken];
}

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler {
    // 收到通知就触发
    [JPUSHService handleRemoteNotification:userInfo];
    completionHandler(UIBackgroundFetchResultNewData);
    [JPUSHService resetBadge]; // 重置 脚标
}

- (void)application:(UIApplication *)application didFailToRegisterForRemoteNotificationsWithError:(NSError *)error {
    // error 处理
    NSLog(@"eorror");
}

@end
