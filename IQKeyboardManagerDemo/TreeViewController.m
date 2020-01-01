//
//  TreeViewController.m
//  IQKeyboardManagerDemo
//
//  Created by hello on 2019/10/5.
//  Copyright © 2019 Dio. All rights reserved.
//

#import "TreeViewController.h"
#import <IQKeyboardManager/IQKeyboardManager.h>

@interface TreeViewController (){
    IQKeyboardReturnKeyHandler *returnKeyHandler;
}

@end

@implementation TreeViewController

/*
 键盘的回车键处理
 创建一个实例变量实例化IQKeyboardReturnKeyHandler 在 ViewController 的 viewDidLoad 中
 **/
- (void)viewDidLoad {
    [super viewDidLoad];
    UITextField *tf = [[UITextField alloc] initWithFrame:CGRectMake(20, self.view.bounds.size.height - 140, self.view.bounds.size.width - 40, 40)];
    tf.backgroundColor = [UIColor lightGrayColor];
    tf.placeholder = @"this is a test";
    [self.view addSubview:tf];
    
    returnKeyHandler = [[IQKeyboardReturnKeyHandler alloc] initWithViewController:self];
}

-(void)dealloc {
    returnKeyHandler = nil;
}

@end
