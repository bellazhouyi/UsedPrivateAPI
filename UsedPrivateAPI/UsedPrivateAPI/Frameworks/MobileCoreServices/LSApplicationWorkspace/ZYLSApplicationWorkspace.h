//
//  ZYLSApplicationWorkspace.h
//  UsedPrivateAPI
//
//  Created by 航汇聚科技 on 2018/3/27.
//  Copyright © 2018年 Yi Zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZYLSApplicationWorkspace : NSObject


/**
 打开APP

 @param bundleID APP的bundleID
 @return 布尔值 0 不代表什么 打开或者不打开 返回值都是0
 */
+ (BOOL)openApplicationWithBundleID:(NSString *)bundleID;


@end
