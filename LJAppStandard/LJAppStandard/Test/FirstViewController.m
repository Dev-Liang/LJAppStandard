//
//  FirstViewController.m
//  LJAppStandard
//
//  Created by liang on 16/4/10.
//  Copyright © 2016年 liang. All rights reserved.
//

#import "FirstViewController.h"
#import "TimeButtonController.h"
#import <ShareSDK/ShareSDK.h>
#import <ShareSDKUI/ShareSDK+SSUI.h>
#import "ShareManager.h"
@interface FirstViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) NSArray *titleArr;
@end

@implementation FirstViewController

- (NSArray *)titleArr{
    if (_titleArr == nil) {
        _titleArr = @[@"获取手机验证码",
                      @"ShareSDK"];
    }
    return _titleArr;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UITableView *tv = [UICreator createTableWithStyle:UITableViewStylePlain seporatorLineColor:nil headerView:nil footerView:nil delegate:self];
    tv.frame = DeviceRect;
    [self.view addSubview:tv];
}


#pragma mark - **************** UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.titleArr.count;
}

static NSString * const CellId = @"CellId";
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellId];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellId];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%ld", indexPath.row];
    cell.detailTextLabel.text = self.titleArr[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.row) {
        case 0:
            [self.navigationController pushViewController:[TimeButtonController new] animated:YES];
            break;
        case 1:
            [self share];
            break;
        default:
            break;
    }
}


- (void)setupTitleData{
    self.navTitleText = @"第一个";
}

- (void)share {
    //1、创建分享参数
//    NSArray *imageArray = @[[UIImage imageNamed:@"haimian.png"]];
//    if (imageArray) {
//        NSMutableDictionary *shareParams = [NSMutableDictionary dictionary];
//        [shareParams SSDKSetupShareParamsByText:@"分享内容"
//                                         images:imageArray
//                                            url:[NSURL URLWithString:@"https://itunes.apple.com/cn/app/jian-yi-jian-kang/id994784918?mt=8"]
//                                          title:@"分享标题"
//                                           type:SSDKContentTypeAuto];
//        
//        
//        
//        //2、分享（可以弹出我们的分享菜单和编辑界面）
//        [ShareSDK showShareActionSheet:nil
//                                 items:nil
//                           shareParams:shareParams
//                   onShareStateChanged:^(SSDKResponseState state, SSDKPlatformType platformType, NSDictionary *userData, SSDKContentEntity *contentEntity, NSError *error, BOOL end) {
//                       
//                       switch (state) {
//                           case SSDKResponseStateSuccess:
//                           {
//                               UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"分享成功"
//                                                                                   message:nil
//                                                                                  delegate:nil
//                                                                         cancelButtonTitle:@"确定"
//                                                                         otherButtonTitles:nil];
//                               [alertView show];
//                               break;
//                           }
//                           case SSDKResponseStateFail:
//                           {
//                               UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"分享失败"
//                                                                               message:[NSString stringWithFormat:@"%@",error]
//                                                                              delegate:nil
//                                                                     cancelButtonTitle:@"OK"
//                                                                     otherButtonTitles:nil, nil];
//                               [alert show];
//                               break;
//                           }
//                           default:
//                               break;
//                       }
//                   }
//         ];}

    
    //1111
//    [ShareManager noUIShareWithText:@"我是内容内容" images:[UIImage imageNamed:@"haimian.png"] url:@"https://itunes.apple.com/cn/app/jian-yi-jian-kang/id994784918?mt=8" title:@"我是标题我是标题" type:SSDKContentTypeAuto platformType:SSDKPlatformTypeSinaWeibo];
    
    
    //2222
//    [ShareManager customShareWithText:@"我是内容内容" images:[UIImage imageNamed:@"haimian.png"] url:@"https://itunes.apple.com/cn/app/jian-yi-jian-kang/id994784918?mt=8" title:@"我是标题我是标题" type:SSDKContentTypeAuto platformType:SSDKPlatformTypeSinaWeibo];
    
    //33333
    [ShareManager jumpoverEditUIShareWithText:@"我是内容内容" images:[UIImage imageNamed:@"haimian.png"] url:@"https://itunes.apple.com/cn/app/jian-yi-jian-kang/id994784918?mt=8" title:@"我是标题我是标题" type:SSDKContentTypeAuto platformType:SSDKPlatformTypeSinaWeibo];
    
}
//    [ShareSDK share:SSDKPlatformTypeSinaWeibo parameters:shareParams onStateChanged:^(SSDKResponseState state, NSDictionary *userData, SSDKContentEntity *contentEntity, NSError *error) {
//        if (state == SSDKResponseStateSuccess) {
//            NSLog(@"成功");
//        }else if (state == SSDKResponseStateFail){
//            NSLog(@"失败");
//        }else if (state == SSDKResponseStateCancel){
//            NSLog(@"取消");
//        }else if (state == SSDKResponseStateBegin){
//            NSLog(@"开始");
//        }else{
//            NSLog(@"未知");
//        }
//    }];
//}

@end
