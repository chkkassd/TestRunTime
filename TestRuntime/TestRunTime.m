//
//  TestRunTime.m
//  SSFAnalysis
//
//  Created by 赛峰 施 on 16/4/22.
//  Copyright © 2016年 赛峰 施. All rights reserved.
//

#import "TestRunTime.h"
#import <objc/runtime.h>

@implementation TestRunTime
void functionA(id self,SEL _cmd,NSString *saySomething) {
    NSLog(@"hahahaha,I say %@",saySomething);
}

//获取一个类的相关属性，方法，成员变量，协议等等（归档，接档，model属性赋值）
- (void)test {
    unsigned int count;
    //获取属性列表
    objc_property_t *propertyList = class_copyPropertyList([self class], &count);
    for (unsigned int i=0; i<count; i++) {
        const char *propertyName = property_getName(propertyList[i]);
        NSLog(@"property---->%@", [NSString stringWithUTF8String:propertyName]);
    }
    
    //获取方法列表
    Method *methodList = class_copyMethodList([self class], &count);
    for (unsigned int i; i<count; i++) {
        Method method = methodList[i];
        NSLog(@"method---->%@", NSStringFromSelector(method_getName(method)));
    }
    
    //获取成员变量列表
    Ivar *ivarList = class_copyIvarList([self class], &count);
    for (unsigned int i; i<count; i++) {
        Ivar myIvar = ivarList[i];
        const char *ivarName = ivar_getName(myIvar);
        NSLog(@"Ivar---->%@", [NSString stringWithUTF8String:ivarName]);
    }
    
    //获取协议列表
    __unsafe_unretained Protocol **protocolList = class_copyProtocolList([self class], &count);
    for (unsigned int i; i<count; i++) {
        Protocol *myProtocal = protocolList[i];
        const char *protocolName = protocol_getName(myProtocal);
        NSLog(@"protocol---->%@", [NSString stringWithUTF8String:protocolName]);
    }
}

//动态方法,在调用未实现的类方法或者实例方法时会crash，实现nsobject的动态方法协议，可以在runtime时为未实现的方法动态添加实现方法
+ (BOOL)resolveInstanceMethod:(SEL)sel {
    NSLog(@"this selector is :%@",NSStringFromSelector(sel));
    if (sel == @selector(yellOut:)) {
        class_addMethod([self class], sel, (IMP)functionA, "v@:@");
        return YES;
    } else return [super resolveInstanceMethod:sel];
}
@end
