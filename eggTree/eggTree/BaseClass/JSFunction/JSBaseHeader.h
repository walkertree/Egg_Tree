//
//  JSBaseHeader.h
//  ChatProject
//
//  Created by jiangshu.fu on 15/5/4.
//  Copyright (c) 2015年 傅水木. All rights reserved.
//

#ifndef JSChatProject_BaseHeader_h
#define JSChatProject_BaseHeader_h

#define JSDEBUG 1


// LTS(@"test")  本地化文件
#define JSLTS(a) NSLocalizedStringFromTable(a, @"Localizable",@"")
#define JSIMAGE(a) ([UIImage imageNamed:(a)])
#define JSFONTWITHSIZE(a) ([UIFont systemFontOfSize:(a)])
#define JSFONTWITHBLODSIZE(a)  ([UIFont boldSystemFontOfSize:(a)])

#pragma mark - ---  程序定义的宽高  ---
//定义程序的界面的高宽
#define JSSTATUS_BAR_HEIGHT  [[UIApplication sharedApplication] statusBarFrame].size.height
#define JSiOS7_D  ((float)NSFoundationVersionNumber > NSFoundationVersionNumber_iOS_6_1)
//导航条的高度
#define JSNAVIGATION_BAR_HEGITH  44.0f
#define JSDIFFERENT_STATUS_HEIGHT  (iOS7_D ?  20.0f : 0.0f)

#pragma mark -  ---  枚举  ---
/**
 *  横竖屏枚举类型
 */
typedef enum{
    JS_DEVICE_VERTICAL =  0 ,  //竖屏
    JS_DEVICE_HORIZONTAL = 1,   //横屏
}JSDeviceOrientation;

//定义程序屏幕的方向
#define JSDEVICE_ORIENTATION ([[BaseFunciton sharedInstance] getDeviceOrientation])

//定义屏幕的宽高
#define JSSCREENHEIGHT [UIScreen mainScreen].bounds.size.height
#define JSSCREENWIDTH  [UIScreen mainScreen].bounds.size.width

//颜色值
#define JSRGBCOLOR(r,g,b) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1]
#define JSRGBACOLOR(r,g,b,a) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]

//判断设备型号
#define JSiPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) : NO)

#define JSiPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)

#define JSiPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) : NO)

#define JSiPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) : NO)


#pragma mark - ---  程序相关  ---

//数据存储plist
#define JSDocumentsPath     ([NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES) objectAtIndex:0])

#define JSSoundFold [JSDocumentsPath stringByAppendingPathComponent:@"Sound"]
#define JSVedioFold [JSDocumentsPath stringByAppendingPathComponent:@"Vidio"]

#define JSChatListPlistPath [JSDocumentsPath stringByAppendingPathComponent:@"ChatListData.plist"]

//常用颜色
#define Cell_Gray_Detail_Color  [UIColor grayColor]
#define Cell_Black_Title_Color  [UIColor blackColor]
#define Cell_Green_Name_Color  JSRGBCOLOR(109.f,139.0f,1860.f)

#pragma mark - ---  自定义 block  ---
typedef void(^EventTouchUpInside)(id);

#endif

