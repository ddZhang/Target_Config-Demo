//
//  TargetManager.h
//  Target-Demo
//
//  Created by yq on 2017/11/28.
//  Copyright © 2017年 XZ. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, XZTarget){
    
    XZDebug,
    XZRelease,
    XZRelease_test
};

@interface TargetManager : NSObject

+ (instancetype)shareTarget;

@property (nonatomic, assign) XZTarget target;
@property (nonatomic, copy) NSString *baseUrl;

@end
