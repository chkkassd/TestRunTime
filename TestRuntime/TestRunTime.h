//
//  TestRunTime.h
//  SSFAnalysis
//
//  Created by 赛峰 施 on 16/4/22.
//  Copyright © 2016年 赛峰 施. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestRunTime : UIView<UITableViewDelegate,UITableViewDataSource>
{
    NSInteger age;
    NSString *address;
}

@property (nonatomic, strong) NSString *name;
@property (nonatomic,strong) NSArray *cars;

- (void)showAllMyCars;
- (void)buyClothes;
- (void)test;
- (void)yellOut:(NSString *)some;
@end
