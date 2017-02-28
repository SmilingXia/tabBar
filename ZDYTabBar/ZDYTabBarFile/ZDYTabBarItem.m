//
//  ZDYTabBarItem.m
//  ZDYTabBar
//
//  Created by xia on 2017/2/27.
//  Copyright © 2017年 cn.bkw. All rights reserved.
//

#import "ZDYTabBarItem.h"

@interface ZDYTabBarItem()

@property (nonatomic, strong) UIImageView *imageView;

@property (nonatomic, strong) UILabel *titleLab;


@end

@implementation ZDYTabBarItem


- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        CGFloat boundsWidth = self.bounds.size.width;
        CGFloat boundsHeight = self.bounds.size.height;
        
        _imageView = [[UIImageView alloc] init];
        _imageView.frame = CGRectMake((boundsWidth - 30)/2, (boundsHeight - 50)/2, 30, 30);
        [self addSubview:_imageView];
        
        _titleLab = [[UILabel alloc] init];
        _titleLab.frame = CGRectMake(0, CGRectGetMaxY(_imageView.frame), boundsWidth, 20);
        _titleLab.textAlignment = NSTextAlignmentCenter;
        _titleLab.textColor = [UIColor darkGrayColor];
        _titleLab.font = [UIFont systemFontOfSize:16.0f];
        [self addSubview:_titleLab];
    }
    return self;
}

- (void)setTitleLabtext:(NSString *)titleLabtext{
    _titleLabtext = titleLabtext;
    _titleLab.text = titleLabtext;
}

- (void)setImage:(UIImage *)image andSelect:(BOOL)select{
    _imageView.image = image;
    if (select) {
        _titleLab.textColor = [UIColor blueColor];
    }else{
        _titleLab.textColor = [UIColor darkGrayColor];
    }
}


@end
