//
//  JSBaseFunction.m
//  ChatProject
//
//  Created by jiangshu.fu on 15/5/4.
//  Copyright (c) 2015年 傅水木. All rights reserved.
//

#import "JSBaseFunction.h"
#import <UIKit/UIKit.h>

@implementation JSBaseFunction

+ (instancetype) sharedInstance
{
    static JSBaseFunction *shareInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareInstance = [[JSBaseFunction alloc] init];
    });
    return shareInstance;
}

/**
 *  获取屏幕方向
 *
 *  @return 方向
 */
-(JSDeviceOrientation)getDeviceOrientation
{
    JSDeviceOrientation value = JS_DEVICE_VERTICAL;
    UIInterfaceOrientation ori = [[UIApplication sharedApplication] statusBarOrientation];
    if (ori == UIInterfaceOrientationPortrait || ori == UIInterfaceOrientationPortraitUpsideDown)
    {
        value = JS_DEVICE_VERTICAL;
    }
    else  if (ori == UIInterfaceOrientationLandscapeLeft || ori == UIInterfaceOrientationLandscapeRight)
    {
        value = JS_DEVICE_HORIZONTAL;
    }
    return value;
}

+ (NSDate *) dateFromData:(NSString *)date withTime:(NSString *)time
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init] ;
    [formatter setDateFormat:@"yyyy－MM－dd HH:mm:ss"];
    NSDate *returndate=[formatter dateFromString:[NSString stringWithFormat:@"%@ %@",date,time]];
    return returndate;
}


+ (NSString *)stringFromDate:(NSDate *)date withFormatter:(NSDateFormatter *)formatter
{
    NSString *destDateString = [formatter stringFromDate:date];
    return destDateString;
}


+ (NSString *)timeFromNow:(NSDate *)date
{
    NSString *returnString = @"";
    NSTimeInterval nowTime = [[NSDate date] timeIntervalSinceDate:date];
    if(nowTime < 60)
    {
        returnString = [NSString stringWithFormat:@"%d秒前",(int)nowTime];
    }
    else if(nowTime < (60 * 60))
    {
        returnString = [NSString stringWithFormat:@"%d分钟前",(int)(nowTime / 60)];
    }
    else if(nowTime < (60 * 60 * 24))
    {
        returnString = [NSString stringWithFormat:@"%d小时前",(int)(nowTime / (60 * 60))];
    }
    else
    {
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init] ;
        [formatter setDateFormat:@"MM－dd"];

        returnString = [JSBaseFunction stringFromDate:date
                                        withFormatter:formatter];
    }
    return returnString;
}


//获得右上角按钮
+ (UIBarButtonItem *)getWithTitle:(NSString *)title
                        addTarget:(id)target
                       withAction:(SEL)action
{
    UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [rightButton setTitle:@"发送" forState: UIControlStateNormal];
    [rightButton addTarget:target
                    action:action
          forControlEvents:UIControlEventTouchUpInside];
    [rightButton setFrame:CGRectMake(0, 0, 60, 30)];
    return [[UIBarButtonItem alloc] initWithCustomView:rightButton];

}
//获得 string 删除 NULL 的
+ (NSString *)getStringDeleteNULL:(NSString *)string
{
    if(string == nil || [string isEqualToString:@"(null)"])
    {
        return @"";
    }
    else
    {
        return string;
    }
}


@end
