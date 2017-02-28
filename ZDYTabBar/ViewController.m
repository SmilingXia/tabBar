//
//  ViewController.m
//  ZDYTabBar
//
//  Created by xia on 2017/2/24.
//  Copyright © 2017年 cn.bkw. All rights reserved.
//

#import "ViewController.h"
#import "XJFCommonmacro.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tabView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;//加入UINavigationController后防止子控件下偏移
    self.title = @"练习";
    
    _tabView = [[UITableView alloc] initWithFrame:CGRectMake(0, DH_ZT_H, SCREEN_W, SCREEN_TabBar_H - DH_ZT_H) style:UITableViewStylePlain];
    _tabView.delegate = self;
    _tabView.rowHeight = 100.0f;
    _tabView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_tabView];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    cell.backgroundColor = SUIJI_COLOR(1);
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
