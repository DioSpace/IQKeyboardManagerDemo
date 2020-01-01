//
//  TwoViewController.m
//  IQKeyboardManagerDemo
//
//  Created by hello on 2019/10/5.
//  Copyright © 2019 Dio. All rights reserved.
//

#import "TwoViewController.h"
#import <IQKeyboardManager/IQKeyboardManager.h>

@interface TwoViewController (){
    BOOL _wasKeyboardManagerEnabled;
}

@end

@implementation TwoViewController

/*
 如果你想在某个 viewcontroller 禁用 IQKeyboardManager 你应该在 ViewDidAppear 中禁用IQKeyboardManager，而在ViewWillDisappear启用它
 **/
-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    //视图将要出现时 IQKeyboardManager 是否可用
    _wasKeyboardManagerEnabled = [[IQKeyboardManager sharedManager] isEnabled];
    //视图将要出现时 禁用IQKeyboardManager
    [[IQKeyboardManager sharedManager] setEnable:NO];
}

-(void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    //视图将要消失时 IQKeyboardManager 恢复到原来的状态
    [[IQKeyboardManager sharedManager] setEnable:_wasKeyboardManagerEnabled];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    UITextField *tf = [[UITextField alloc] initWithFrame:CGRectMake(20, self.view.bounds.size.height - 140, self.view.bounds.size.width - 40, 40)];
    tf.backgroundColor = [UIColor lightGrayColor];
    tf.placeholder = @"this is a test";
    [self.view addSubview:tf];
}

@end
