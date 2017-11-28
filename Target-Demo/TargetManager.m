//
//  TargetManager.m
//  Target-Demo
//
//  Created by yq on 2017/11/28.
//  Copyright © 2017年 XZ. All rights reserved.
//

#import "TargetManager.h"

static id target = nil;
@implementation TargetManager

+ (instancetype)shareTarget {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        target = [[self alloc] init];
    });
    return target;
}

- (XZTarget)target {
#if DEBUG
    _target = XZDebug;
#elif RELEASE
    _target = XZRelease;
#else
    _target = XZRelease_test;
#endif
    return _target;
}

- (NSString *)baseUrl {
    
    switch (self.target) {
        case XZDebug:
            return @"debug~url";
            break;
        case XZRelease:
            return @"release~url";
            break;
        case XZRelease_test:
            return @"release_test~url";
            break;
    }
}

@end
