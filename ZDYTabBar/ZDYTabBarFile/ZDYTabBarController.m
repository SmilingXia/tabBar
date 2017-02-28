//
//  ZDYTabBarController.m
//  ZDYTabBar
//
//  Created by xia on 2017/2/27.
//  Copyright © 2017年 cn.bkw. All rights reserved.
//

#import "ZDYTabBarController.h"

@interface ZDYTabBarController ()<ZDYTabBarDelegate>

@property (nonatomic, strong) ZDYTabBar *tabBar;

@property (nonatomic, strong) UIView *contentView;

@end

@implementation ZDYTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
}


- (void)setViewControllers:(NSArray *)viewControllers{
    _viewControllers = viewControllers;
    if (_viewControllers && _viewControllers.count) {
        for (UIViewController *viewController in viewControllers) {
            [self addChildViewController:viewController];
        }
    }
}

- (void)setTabBarInfoArray:(NSArray *)tabBarInfoArray{
    _tabBarInfoArray = tabBarInfoArray;
    _contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_W, SCREEN_TabBar_H)];
    [self.view addSubview:_contentView];
    
    _tabBar = [[ZDYTabBar alloc] initWithFrame:CGRectMake(0, SCREEN_TabBar_H, SCREEN_W, TabBar_H)];
    [self.view addSubview:_tabBar];
    _tabBar.tabBarDelegate = self;
    _tabBar.itemsInfoArray = tabBarInfoArray;
}

- (void)fromIndex:(int)fromIndex toIndex:(int)toIndex{
    UIViewController *toVC = self.childViewControllers[toIndex];
    toVC.view.backgroundColor = [UIColor whiteColor];
    UIViewController *fromVC = self.childViewControllers[fromIndex];
    [fromVC.view removeFromSuperview];
    [_contentView addSubview:toVC.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
