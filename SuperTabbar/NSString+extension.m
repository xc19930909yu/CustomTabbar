//
//  NSString+extension.m
//  VChatApp
//
//  Created by LewisC on 2019/2/18.
//  Copyright © 2019年 Super. All rights reserved.
//


#import "NSString+extension.h"

@implementation NSString (extension)
- (CGFloat)widthWithConstainedheight:(CGFloat)height font:(UIFont *)font{
    CGSize sizes = CGSizeMake(CGFLOAT_MAX, height);
    NSDictionary *attrbutes = @{NSFontAttributeName:font};
    CGRect rect = [self boundingRectWithSize:sizes options:NSStringDrawingUsesLineFragmentOrigin attributes:attrbutes context:nil];
    return ceil(rect.size.width);
}
@end
