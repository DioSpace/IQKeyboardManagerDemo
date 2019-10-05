//
//  MyTabBarController.m
//  IQKeyboardManagerDemo
//
//  Created by hello on 2019/10/5.
//  Copyright © 2019 Dio. All rights reserved.
//

#import "MyTabBarController.h"
#import "OneViewController.h"
#import "TwoViewController.h"
#import "TreeViewController.h"

@interface MyTabBarController ()

@end

@implementation MyTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    OneViewController *oneVC = [[OneViewController alloc]init];
    UINavigationController *oneNav = [[UINavigationController alloc] initWithRootViewController:oneVC];
    oneNav.tabBarItem.title = @"One";
    UIImage *oneImgNormal = [UIImage imageNamed:@"tab_c2c_normal"];
    UIImage *oneImgSelected = [UIImage imageNamed:@"tab_c2c_50"];
    //加载原始图片
    oneNav.tabBarItem.image = [oneImgNormal imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    oneNav.tabBarItem.selectedImage = [oneImgSelected imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    TwoViewController *twoVC = [[TwoViewController alloc] init];
    UINavigationController *twoNav = [[UINavigationController alloc] initWithRootViewController:twoVC];
    twoNav.tabBarItem.title = @"Two";
    UIImage *twoImgNormal = [UIImage imageNamed:@"tab_home_normal"];
    UIImage *twoImgSelected = [UIImage imageNamed:@"tab_home_50"];
    //加载原始图片
    twoNav.tabBarItem.image = [twoImgNormal imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    twoNav.tabBarItem.selectedImage = [twoImgSelected imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    TreeViewController *treeVC = [[TreeViewController alloc] init];
    UINavigationController *treeNav = [[UINavigationController alloc] initWithRootViewController:treeVC];
    twoNav.tabBarItem.title = @"Two";
    UIImage *treeImgNormal = [UIImage imageNamed:@"tab_mine_normal"];
    UIImage *treeImgSelected = [UIImage imageNamed:@"tab_mine_50"];
    //加载原始图片
    treeNav.tabBarItem.image = [treeImgNormal imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    treeNav.tabBarItem.selectedImage = [treeImgSelected imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    //将UINavigationController 添国到UITabBarController 上
    [self addChildViewController:oneNav];
    [self addChildViewController:twoNav];
    [self addChildViewController:treeNav];
}

@end
