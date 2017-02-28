//
//  XJFCommonmacro.h
//  ManView
//
//  Created by xia on 2017/1/4.
//  Copyright © 2017年 cn.bkw. All rights reserved.
//

#ifndef XJFCommonmacro_h
#define XJFCommonmacro_h

//状态栏的高度
#define STATUS_BAR_H 20
//导航栏的高度
#define NAVIGATION_BAR_H 44

//导航状态栏的高度
#define DH_ZT_H 64

//窗体的大小
#define SCREEN ([UIScreen mainScreen].bounds)
//屏幕的高度
#define SCREEN_H ([UIScreen mainScreen].bounds.size.height)
//屏幕的宽
#define SCREEN_W ([UIScreen mainScreen].bounds.size.width)

//内容的高度 - 减去了导航栏的高度
#define CONTENT_H (SCREEN_H - STATUS_BAR_H - NAVIGATION_BAR_H)

//底部导航栏的高度
#define TabBar_H 60

//内容的高度 - 减去了底部导航栏的高度
#define SCREEN_TabBar_H (SCREEN_H - TabBar_H)

//主窗体的代理
#define SharedDelegate  ((AppDelegate*)[UIApplication sharedApplication].delegate)

//自定义 cell时用的字体大小
#define ZDYTextFont(a) [UIFont systemFontOfSize:a]
//自定义color
#define ZDYColor(r, g, b, a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]

//block回调weak
#define WEAK_SELF __weak typeof(self) weakSelf = self
#define STRONG_SELF __strong typeof(self) strongSelf = weakSelf

//随机颜色
#define SUIJI_COLOR(a) [UIColor colorWithRed:(arc4random_uniform(256))/255.0 green:(arc4random_uniform(256))/255.0 blue:(arc4random_uniform(256))/255.0 alpha:a]


#endif /* XJFCommonmacro_h */
