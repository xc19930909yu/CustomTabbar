//
//  WGTabBarItem.m
//  WeiGuo
//
//  Created by YY on 2019/1/16.
//  Copyright © 2019 WeiGuo. All rights reserved.
//
//#define KScreenW [UIScreen mainScreen].bounds.size.width
//#define isPad ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
//#define IS_IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !isPad : NO)
////判断iPHoneXr
//#define IS_IPHONE_Xr ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(828, 1792), [[UIScreen mainScreen] currentMode].size) && !isPad : NO)
////判断iPhoneXs
//#define IS_IPHONE_Xs ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) && !isPad : NO)
////判断iPhoneXs Max
//#define IS_IPHONE_Xs_Max ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2688), [[UIScreen mainScreen] currentMode].size) && !isPad : NO)
//#define Height_TabBarBottomBadge ((IS_IPHONE_X==YES || IS_IPHONE_Xr ==YES || IS_IPHONE_Xs== YES || IS_IPHONE_Xs_Max== YES) ? 10 : 0.0)

#define topDistance  Height_StatusBar == 20 ? 10 : 20

#import "WGTabBarItem.h"
#import "WGTabBarBadge.h"
#import <Masonry.h>

@implementation WGTabBarItem

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self createView];
        
    }
    return self;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self createView];
    }
    return self;
}

- (void)createView{
    _isSelect = NO;
    //    WithFrame:CGRectMake(self.frame.size.width/2-10, 9, 20, 20)
    _icomImgView = [[UIImageView alloc] init];
    
    _icomImgView.contentMode = UIViewContentModeScaleAspectFit;
    [self addSubview:_icomImgView];
    [_icomImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self);
        make.top.mas_offset(topDistance);
        make.width.height.mas_offset(25);
    }];
    //    WithFrame:CGRectMake(0, 35, self.frame.size.width, 14)
    _titleLab = [[UILabel alloc] init];
    _titleLab.textAlignment = NSTextAlignmentCenter;
    _titleLab.font = [UIFont systemFontOfSize:9];
    [self addSubview:_titleLab];
    [_titleLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_offset(0);
        make.top.mas_offset(35);
        make.height.mas_offset(14);
    }];
}
- (void)setTitle:(NSString *)title{
    _title = title;
    self.titleLab.text = _title;
}
- (void)setImage:(UIImage *)image{
    _image = image;
    self.icomImgView.image = _image;
}
- (void)setIsSelect:(BOOL)isSelect{
    _isSelect = isSelect;
    if(_isSelect)
    {
        self.icomImgView.image = _selectImage;
    }else{
        self.icomImgView.image = _image;
    }
}

@end
