//
//  FirstViewController.m
//  LJAppStandard
//
//  Created by liang on 16/4/10.
//  Copyright © 2016年 liang. All rights reserved.
//

#import "FirstViewController.h"
#import "TimeButtonController.h"
@interface FirstViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) NSArray *titleArr;
@end

@implementation FirstViewController

- (NSArray *)titleArr{
    if (_titleArr == nil) {
        _titleArr = @[@"获取手机验证码"];
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
    if (indexPath.row == 0) {
        [self.navigationController pushViewController:[TimeButtonController new] animated:YES];
    }
}


- (void)setupTitleData{
    self.navTitleText = @"第一个";
}


@end
