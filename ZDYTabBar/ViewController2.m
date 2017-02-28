//
//  ViewController2.m
//  ZDYTabBar
//
//  Created by xia on 2017/2/27.
//  Copyright © 2017年 cn.bkw. All rights reserved.
//

#import "ViewController2.h"
#import "XJFCommonmacro.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;//加入UINavigationController后防止子控件下偏移
    self.title = @"个人";
    
    UILabel *lab = [[UILabel alloc] init];
    lab.frame = CGRectMake(0, DH_ZT_H, SCREEN_W, 30);
    lab.text = @"请看这里";
    lab.textAlignment = NSTextAlignmentCenter;
    lab.font = [UIFont systemFontOfSize:18.0f];
    lab.backgroundColor = [UIColor darkGrayColor];
    lab.textColor = [UIColor redColor];
    [self.view addSubview:lab];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
