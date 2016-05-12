//
//  JSButton.m
//  eggTree
//
//  Created by jiangshu-fu on 16/5/12.
//  Copyright © 2016年 jiangshu-fu. All rights reserved.
//

#import "JSButton.h"

@implementation JSButton

- (instancetype) init
{
    self = [super init];
    if(self)
    {
    }
    return self;
}


- (void) addEventTouchUpInside
{
    [self addTarget:self
             action:@selector(buttonPress:)
   forControlEvents:UIControlEventTouchUpInside];
}

- (void) buttonPress:(id)sender
{
    if(self.eventTouchUpInside)
    {
        self.eventTouchUpInside(sender);
    }
}

@end
