//
//  WGTabBarView.h
//  WeiGuo
//
//  Created by YY on 2019/1/16.
//  Copyright © 2019 WeiGuo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WGTabBarBadge.h"
#import "WGTabBarItem.h"

NS_ASSUME_NONNULL_BEGIN

@protocol WGTabBarViewDelegate <NSObject>

- (void)selectIndex:(NSInteger)index;

@end

@interface WGTabBarView : UIView

///tabbar
@property (nonatomic, readonly, strong) NSMutableArray <WGTabBarItem *> *tabBarItems;
///标题
@property (nonatomic, copy) NSArray <NSString *> *titles;
///默认图标 UIImage 类型 或者 NSString 类型
@property (nonatomic, strong) NSArray *itemImages;
///选中图标 UIImage 类型 或者 NSString 类型
@property (nonatomic, strong) NSArray *selectItemImages;
/// 默认标题颜色
@property (nonatomic, strong) UIColor *defColor;
/// 选中标题颜色
@property (nonatomic, strong) UIColor *tintColor;
///当前选中的下标
@property (nonatomic, assign) NSInteger selectIndex;
///当前选中的 TabBar
@property (nonatomic, strong) WGTabBarItem *tabBarItem;
@property (nonatomic, weak) id <WGTabBarViewDelegate>delegate;
/// 创建方法
- (instancetype)initWithTitles:(NSArray <NSString *> *)titles itemImages:(NSArray *)itemImgs selectImages:(NSArray *)selectImages;
/// 设置角标
- (void)setBadge:(NSInteger)count index:(NSUInteger)index;

@end

NS_ASSUME_NONNULL_END
