//
//  NSString+extension.h
//  VChatApp
//
//  Created by LewisC on 2019/2/18.
//  Copyright © 2019年 Super. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (extension)

- (CGFloat)widthWithConstainedheight:(CGFloat)height font:(UIFont *)font;

@end

NS_ASSUME_NONNULL_END
