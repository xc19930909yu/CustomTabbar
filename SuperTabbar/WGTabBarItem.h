//
//  WGTabBarItem.h
//  WeiGuo
//
//  Created by YY on 2019/1/16.
//  Copyright © 2019 WeiGuo. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WGTabBarItem : UIView

@property (nonatomic, copy) NSString *title;
/// 当前的 Image
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) UIImage *selectImage;
@property (nonatomic, assign) BOOL isSelect;
@property (nonatomic, strong) UIImageView *icomImgView;
@property (nonatomic, strong) UILabel *titleLab;

@end

NS_ASSUME_NONNULL_END
