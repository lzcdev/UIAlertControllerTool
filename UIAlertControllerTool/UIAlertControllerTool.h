//
//  UIAlertControllerTool.h
//  UIAlertControllerTool
//
//  Created by LuzhiChao on 16/6/15.
//  Copyright © 2016年 LuzhiChao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertControllerTool : NSObject

+ (instancetype)alertController;

- (void)showAlertView:(UIViewController *)viewController title:(NSString *)title message:(NSString *)message cancleButtonTitle:(NSString *)cancleButtonTitle otherButtonTitle:(NSString *)otherButtonTitle confirm:(void(^)())confirm cancle:(void(^)())cancle;

@end
