//
//  ViewController.m
//  TestRuntime
//
//  Created by 赛峰 施 on 16/5/11.
//  Copyright © 2016年 赛峰 施. All rights reserved.
//

#import "ViewController.h"
#import "TestRunTime.h"
#import "TestRunTime+AddProperty.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    TestRunTime *tr = [[TestRunTime alloc] init];
    tr.travel = @"haha i am travel";
    NSLog(@"The added property is :%@",tr.travel);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
