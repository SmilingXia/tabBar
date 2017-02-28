//
//  ViewController1.m
//  ZDYTabBar
//
//  Created by xia on 2017/2/27.
//  Copyright © 2017年 cn.bkw. All rights reserved.
//

#import "ViewController1.h"
#import "XJFCommonmacro.h"

@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;//加入UINavigationController后防止子控件下偏移
    self.title = @"测验";
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
