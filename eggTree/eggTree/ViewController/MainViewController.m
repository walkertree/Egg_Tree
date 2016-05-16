//
//  MainViewController.m
//  eggTree
//
//  Created by jiangshu-fu on 16/4/7.
//  Copyright © 2016年 jiangshu-fu. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@property (nonatomic,strong) UIScrollView *scrollView;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
#if JSDEBUG
    self.view.backgroundColor = [UIColor whiteColor];
    [self addViews];
#endif
    self.title = JSLTS(@"MainTitle");
}

- (void) addViews
{
    //创建一个左边和右边的按钮
    [self addNavigationButton];
    //创建可滑动的 scrollview
    [self addScrollView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark - ---  创建视图界面  ---
- (void) addNavigationButton
{
    JSButton *leftbutton = [JSButton buttonWithType:UIButtonTypeCustom];
    leftbutton.frame = CGRectMake(0, 0, 60, 30);
    [leftbutton setTitle:@"登入" forState: UIControlStateNormal];
    [leftbutton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    leftbutton.eventTouchUpInside = ^(id sender){
        NSLog(@"登入 press");
    };
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftbutton];
    
    
    JSButton *rightbutton = [JSButton buttonWithType:UIButtonTypeCustom];
    [rightbutton setTitle:@"设置" forState: UIControlStateNormal];
    [rightbutton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    rightbutton.frame = CGRectMake(0, 0, 60, 30);
    rightbutton.eventTouchUpInside = ^(id sender){
        NSLog(@"设置 press");
    };
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:rightbutton];
}

- (void) addScrollView
{
    self.scrollView = [[UIScrollView alloc]initWithFrame:self.view.frame];
    self.scrollView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.scrollView];
}

@end
