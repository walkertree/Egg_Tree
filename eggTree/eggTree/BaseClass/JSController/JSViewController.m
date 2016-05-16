//
//  JSViewController.m
//  eggTree
//
//  Created by jiangshu-fu on 16/4/7.
//  Copyright © 2016年 jiangshu-fu. All rights reserved.
//

#import "JSViewController.h"

@interface JSViewController ()

@end

@implementation JSViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (JSiOS7_D)
    {
        self.edgesForExtendedLayout=UIRectEdgeNone;
        self.extendedLayoutIncludesOpaqueBars=NO;
        self.automaticallyAdjustsScrollViewInsets=NO;
    }
    self.navigationController.navigationBar.barStyle = UIBarStyleDefault;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
