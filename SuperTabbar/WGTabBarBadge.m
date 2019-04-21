//
//  WGTabBarBadge.m
//  WeiGuo
//
//  Created by YY on 2019/1/16.
//  Copyright © 2019 WeiGuo. All rights reserved.
//

#import "WGTabBarBadge.h"

@implementation WGTabBarBadge

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor redColor];
        self.textColor = [UIColor whiteColor];
        self.font = [UIFont boldSystemFontOfSize:10];
        
        self.textAlignment = NSTextAlignmentCenter;
        self.clipsToBounds = YES;
    }
    return self;
}
- (void)setFrame:(CGRect)frame{
    
    [super setFrame:frame];
    self.layer.cornerRadius = self.frame.size.height/2.0;
}
- (void)setBadge:(NSInteger)badge{
    NSString *badgeStr;
    if(badge>99){
        badgeStr = @"99+";
    }
    else if(badge <=0){
        //小于0,显示为红色
//        self.hidden = YES;
        self.text = @"";
//        return;
    }
    else {
        badgeStr = [NSString stringWithFormat:@"%ld",badge];
    }
    self.hidden = NO;
    CGFloat widths = 7;
    CGFloat swith = KScreenW/_itemCount;
    self.frame = CGRectMake(swith/2+8+(self.tag-10086)*swith, 5+Height_TabBarBottomBadge, widths, 7);
    self.text = badgeStr;
}

@end
