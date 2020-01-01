//
//  OneViewController.m
//  IQKeyboardManagerDemo
//
//  Created by hello on 2019/10/5.
//  Copyright © 2019 Dio. All rights reserved.
//

#import "OneViewController.h"

@interface OneViewController ()

@end

@implementation OneViewController

/*
 使用IQKeyboardManager你只需要添加源文件到你的项目。
 主要特点
 1）无代码
 2）自动工作
 3）没有更多的UIScrollView
 4）没有更多的子类
 5）没有更多的手动工作
 6）没有更多#imports
 **/
- (void)viewDidLoad {
    [super viewDidLoad];
    UITextField *tf = [[UITextField alloc] initWithFrame:CGRectMake(20, self.view.bounds.size.height - 140, self.view.bounds.size.width - 40, 40)];
    tf.backgroundColor = [UIColor lightGrayColor];
    tf.placeholder = @"this is a test";
    [self.view addSubview:tf];
}

@end
