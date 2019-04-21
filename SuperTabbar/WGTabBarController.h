//
//  WGTabBarController.h
//  WeiGuo
//
//  Created by YY on 2019/1/16.
//  Copyright © 2019 WeiGuo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WGTabBarView.h"

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, TabBarType) {
    TabBarTypeDefult,//默认从0开始
    TabBarTypeBPath
};

@interface WGTabBarController : UITabBarController<WGTabBarViewDelegate>
@property (nonatomic, strong) WGTabBarView *wgTabBarView;
+ (WGTabBarController *)wgTabBarController;
+ (void)destroyInstance;
@end

NS_ASSUME_NONNULL_END
