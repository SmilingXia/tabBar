//
//  ZDYTabBar.m
//  ZDYTabBar
//
//  Created by xia on 2017/2/27.
//  Copyright © 2017年 cn.bkw. All rights reserved.
//

#import "ZDYTabBar.h"
#import "ZDYTabBarItem.h"
#import "XJFCommonmacro.h"

@interface ZDYTabBar()<UIGestureRecognizerDelegate>{
    NSArray *tabBarItemTitle;
    NSArray *tabBarItemImages;
}

@property (nonatomic, strong) ZDYTabBarItem *tabBarItem;

@end

@implementation ZDYTabBar

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor yellowColor];
    }
    return self;
}

- (void)setItemsInfoArray:(NSArray *)itemsInfoArray{
    _itemsInfoArray = itemsInfoArray;
    tabBarItemTitle = [_itemsInfoArray objectAtIndex:0];
    tabBarItemImages = [_itemsInfoArray objectAtIndex:1];
    
    CGFloat itemWidth = self.bounds.size.width/tabBarItemTitle.count;
    CGFloat itemHeight = self.bounds.size.height;
    
    for (int index = 0; index < tabBarItemTitle.count; index++) {
        
        ZDYTabBarItem *barItem = [[ZDYTabBarItem alloc] initWithFrame:CGRectMake(index * itemWidth, 0, itemWidth, itemHeight)];
        UIImage *selectedimage = [UIImage imageNamed:[NSString stringWithFormat:@"%@_height@2x",[tabBarItemImages objectAtIndex:index]]];
        UIImage *unselectedimage = [UIImage imageNamed:[NSString stringWithFormat:@"%@_normal@2x",[tabBarItemImages objectAtIndex:index]]];
        [self addSubview:barItem];
        barItem.tag = index + 1000;
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapOnclick:)];
        tap.delegate = self;
        [barItem addGestureRecognizer:tap];
        
        if (index == 0) {
            [barItem setImage:selectedimage andSelect:YES];
            _tabBarItem = barItem;
        }else{
            [barItem setImage:unselectedimage andSelect:NO];
        }
        [barItem setTitleLabtext:[tabBarItemTitle objectAtIndex:index]];
    }
}

- (void)tapOnclick:(UITapGestureRecognizer *)tap{
    ZDYTabBarItem *barItem = (ZDYTabBarItem *)tap.view;
    if (barItem.tag != self.tabBarItem.tag) {
        UIImage *selectedimage = [UIImage imageNamed:[NSString stringWithFormat:@"%@_height@2x",[tabBarItemImages objectAtIndex:barItem.tag - 1000]]];
        [barItem setImage:selectedimage andSelect:YES];
        
        UIImage *unselectedimage = [UIImage imageNamed:[NSString stringWithFormat:@"%@_normal@2x",[tabBarItemImages objectAtIndex:_tabBarItem.tag - 1000]]];
        [_tabBarItem setImage:unselectedimage andSelect:NO];
        
        [_tabBarDelegate fromIndex:(int)self.tabBarItem.tag - 1000 toIndex:(int)barItem.tag - 1000];
    }
    _tabBarItem = barItem;
}

- (void)setTabBarDelegate:(id<ZDYTabBarDelegate>)tabBarDelegate{
    _tabBarDelegate = tabBarDelegate;
    
    if ([_tabBarDelegate respondsToSelector:@selector(fromIndex:toIndex:)]) {
        
        [_tabBarDelegate fromIndex:0 toIndex:0];
        //[_tabBarDelegate leftMenuViewButtonClcikFrom:(ZDYleftButtonType)self.starButton.tag to:(ZDYleftButtonType)senderBut.tag];
    }
}

@end
