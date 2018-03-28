//
//  ZYLSApplicationWorkspace.m
//  UsedPrivateAPI
//
//  Created by 航汇聚科技 on 2018/3/27.
//  Copyright © 2018年 Yi Zhou. All rights reserved.
//

#import "ZYLSApplicationWorkspace.h"
#import <objc/runtime.h>

@implementation ZYLSApplicationWorkspace

+ (BOOL)openApplicationWithBundleID:(NSString *)bundleID {
    Class lsawsc = objc_getClass("LSApplicationWorkspace");
    
    id workspace = [lsawsc performSelector:NSSelectorFromString(@"defaultWorkspace")];
    
    //打开APP 很慢
    return [[workspace performSelector:NSSelectorFromString(@"openApplicationWithBundleID:") withObject:bundleID] boolValue];
}

@end
