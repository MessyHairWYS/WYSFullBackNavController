//
//  WYSFullBackNavController.m
//  简单的导航控制器全屏返回
//
//  Created by tianwan_mac2 on 16/2/25.
//  Copyright © 2016年 WYS. All rights reserved.
//

#import "WYSFullBackNavController.h"

@interface WYSFullBackNavController()<UIGestureRecognizerDelegate>
@end

@implementation WYSFullBackNavController

- (void)viewDidLoad{
    [super viewDidLoad];
    //导航控制器内部的手势对象
//    NSLog(@"%@",self.interactivePopGestureRecognizer);
    
    id target = self.interactivePopGestureRecognizer.delegate;
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:target action:@selector(handleNavigationTransition:)];
    pan.delegate = self;
    [self.view addGestureRecognizer:pan];
    self.interactivePopGestureRecognizer.enabled = NO;
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer{
    if (self.childViewControllers.count == 1) {
        return NO;
    }
    return YES;
}
@end