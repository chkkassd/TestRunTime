//
//  TestRunTime+AddProperty.h
//  TestRuntime
//
//  Created by 赛峰 施 on 16/5/11.
//  Copyright © 2016年 赛峰 施. All rights reserved.
//这个类别是利用runtime动态给类添加属性，对于一些三方框架要修改属性时有比较好的效果。

#import "TestRunTime.h"

@interface TestRunTime (AddProperty)
@property (nonatomic, copy) NSString *travel;
@end
