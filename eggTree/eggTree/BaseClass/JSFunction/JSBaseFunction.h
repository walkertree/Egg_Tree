//
//  JSBaseFunction.h
//  ChatProject
//
//  Created by jiangshu.fu on 15/5/4.
//  Copyright (c) 2015年 傅水木. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JSBaseFunction : NSObject

+ (instancetype) sharedInstance;


/**
 *  获取屏幕方向
 *
 *  @return 方向
 */
- (JSDeviceOrientation)getDeviceOrientation;

/**
 *  传入日期和小时
 *
 *  @return date类型
 */
+ (NSDate *) dateFromData:(NSString *)date withTime:(NSString *)time;

/**
 *  传入时间和格式
 *
 *  @return 字符串
 */
+ (NSString *)stringFromDate:(NSDate *)date withFormatter:(NSDateFormatter *)formatter;

/**
 *  传入时间
 *
 *  @return 间隔时间string
 */
+ (NSString *)timeFromNow:(NSDate *)date;


@end
