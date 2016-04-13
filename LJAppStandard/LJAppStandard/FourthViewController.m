//
//  FourthViewController.m
//  LJAppStandard
//
//  Created by liang on 16/4/10.
//  Copyright © 2016年 liang. All rights reserved.
//

#import "FourthViewController.h"

@interface FourthViewController ()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation FourthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITableView *tv = [[UITableView alloc] initWithFrame:DeviceRect];
    tv.backgroundColor = [UIColor whiteColor];
    tv.dataSource = self;
    tv.delegate = self;
    [self addRefreshHeaderAndFooter:tv];
    [self.view addSubview:tv];
}

#pragma mark - **************** UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}

static NSString * const CellId = @"CellId";
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellId];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellId];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%ld", indexPath.row];
    return cell;
}

@end
