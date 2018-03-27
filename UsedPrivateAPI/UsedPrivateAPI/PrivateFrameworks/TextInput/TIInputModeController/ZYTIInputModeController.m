//
//  ZYTIInputModeController.m
//  UsedPrivateAPI
//
//  Created by 航汇聚科技 on 2018/3/27.
//  Copyright © 2018年 Yi Zhou. All rights reserved.
//

#import "ZYTIInputModeController.h"
#import <objc/runtime.h>

@implementation ZYTIInputModeController

+ (BOOL)isSupportZH_HA {
    Class lsawsc = objc_getClass("TIInputModeController");
    
    NSObject *workspace = [lsawsc performSelector:NSSelectorFromString(@"sharedInputModeController")];
    
    //允许输入类型的标识符
    NSArray *array = [workspace performSelector:NSSelectorFromString(@"enabledInputModeIdentifiers")];
    
    NSLog(@"键盘类型: %@",array);
    
    for (NSString *item in array) {
        if ([item hasPrefix:@"zh_Ha"]) {
            //zh_Hans中文简体 zh_Hant中文繁体
            return YES;
        }
    }
    
    return NO;
}

@end
