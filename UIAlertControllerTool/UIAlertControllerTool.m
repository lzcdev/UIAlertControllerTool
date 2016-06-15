//
//  UIAlertControllerTool.m
//  UIAlertControllerTool
//
//  Created by LuzhiChao on 16/6/15.
//  Copyright © 2016年 LuzhiChao. All rights reserved.
//

#import "UIAlertControllerTool.h"

typedef void (^confirm)();
typedef void (^cancle)();

@interface UIAlertControllerTool ()
{
    confirm confirmParam;
    cancle cancleParam;
}
@end

@implementation UIAlertControllerTool

+ (instancetype)alertController
{
    return [[UIAlertControllerTool alloc]init];
}

- (void)showAlertView:(UIViewController *)viewController title:(NSString *)title message:(NSString *)message cancleButtonTitle:(NSString *)cancleButtonTitle otherButtonTitle:(NSString *)otherButtonTitle confirm:(void (^)())confirm cancle:(void (^)())cancle
{
    
    confirmParam = confirm;
    cancleParam = cancle;
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    // Create the actions.
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:cancleButtonTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
        cancle();
        
    }];
    
    UIAlertAction *otherAction = [UIAlertAction actionWithTitle:otherButtonTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        confirm();
    }];
    
    // Add the actions.
    [alertController addAction:cancelAction];
    [alertController addAction:otherAction];
    
    [viewController presentViewController:alertController animated:YES completion:nil];
    
}


@end
