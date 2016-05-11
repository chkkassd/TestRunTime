//
//  TestRunTime+AddProperty.m
//  TestRuntime
//
//  Created by 赛峰 施 on 16/5/11.
//  Copyright © 2016年 赛峰 施. All rights reserved.
//

#import "TestRunTime+AddProperty.h"
#import <objc/runtime.h>

@implementation TestRunTime (AddProperty)
static char travelKey;

- (void)setTravel:(NSString *)travel {
    objc_setAssociatedObject(self, &travelKey, travel, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)travel {
    return objc_getAssociatedObject(self, &travelKey);
}

@end
