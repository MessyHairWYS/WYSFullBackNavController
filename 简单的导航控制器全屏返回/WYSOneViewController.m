//
//  WYSOneViewController.m
//  简单的导航控制器全屏返回
//
//  Created by tianwan_mac2 on 16/2/25.
//  Copyright © 2016年 WYS. All rights reserved.
//

#import "WYSOneViewController.h"
#import "WYSTwoViewController.h"

@implementation WYSOneViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"控制器一";
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"push" style:UIBarButtonItemStyleDone target:self action:@selector(pushTo)];
}

- (void)pushTo{
    WYSTwoViewController *twoVc = [[WYSTwoViewController alloc] init];
    [self.navigationController pushViewController:twoVc animated:YES];
}
@end
