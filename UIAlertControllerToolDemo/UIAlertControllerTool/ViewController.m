//
//  ViewController.m
//  UIAlertControllerTool
//
//  Created by LuzhiChao on 16/6/15.
//  Copyright © 2016年 LuzhiChao. All rights reserved.
//

#import "ViewController.h"
#import "UIAlertControllerTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    // 两种创建方式都可以
    //UIAlertControllerTool *alert = [[UIAlertControllerTool alloc]init];
    
    UIAlertControllerTool *alert = [UIAlertControllerTool alertController];
    
    [alert showAlertView:self title:@"提示" message:@"我是UIAlertController" cancleButtonTitle:@"取消" otherButtonTitle:@"确定" confirm:^{
        NSLog(@"确定");
    } cancle:^{
        NSLog(@"取消");
    }];
    
}

@end
