//
//  ViewController.m
//  YQLightLableDemo
//
//  Created by problemchild on 2017/7/19.
//  Copyright © 2017年 FreakyYang. All rights reserved.
//

#import "ViewController.h"

#import "YQLightLab.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithWhite:0.215 alpha:1.000];
    
    YQLightLable *lab1 = [[YQLightLable alloc]init];
    lab1.frame = CGRectMake(0, 50, self.view.frame.size.width, 25);
    lab1.text = @"默认样式，默认样式，默认样式，默认样式，默认样式，默认样式，默认样式，默认样式，默认样式，默认样式，默认样式，默认样式，默认样式，";
    [self.view addSubview:lab1];
    
    YQLightLable *lab2 = [[YQLightLable alloc]init];
    lab2.frame = CGRectMake(0, 90, self.view.frame.size.width, 25);
    lab2.textColor = [UIColor clearColor];
    lab2.DurationTime = 6;
    lab2.direction = YQLightLableDirectionToLeft;
    lab2.text = @"反向，背景透明，反向，背景透明，反向，背景透明，反向，背景透明，反向，背景透明，反向，背景透明，反向，背景透明，反向，背景透明，反向，背景透明，反向，背景透明，";
    [self.view addSubview:lab2];
    
    YQLightLable *lab3 = [[YQLightLable alloc]init];
    lab3.frame = CGRectMake(0, 130, self.view.frame.size.width, 25);
    lab3.textColor = [UIColor colorWithRed:0.250 green:0.693 blue:0.998 alpha:1.000];
    lab3.lightColor = [UIColor redColor];
    lab3.DurationTime = 1;
    lab3.LightWidth = 80;
    lab3.text = @"改颜色，改速度，改光束宽度，改颜色，改速度，改光束宽度，改颜色，改速度，改光束宽度，改颜色，改速度，改光束宽度，改颜色，改速度，改光束宽度，改颜色，改速度，改光束宽度，改颜色，改速度，改光束宽度，";
    [self.view addSubview:lab3];
    
    
    YQLightLable *lab4 = [[YQLightLable alloc]init];
    lab4.frame = CGRectMake(0, 170, self.view.frame.size.width, 100);
    lab4.numberOfLines = 0;
    lab4.direction = YQLightLableDirectionToUp;
    lab4.textAlignment = NSTextAlignmentCenter;
    lab4.text = @"向上，向上，向上，向上，向上，向上，\n向上，向上，向上，向上，向上，向上，\n向上，向上，向上，向上，向上，向上，\n向上，向上，向上，向上，向上，向上，\n向上，向上，向上，向上，向上，向上，";
    [self.view addSubview:lab4];
    
    
    YQLightLable *lab5 = [[YQLightLable alloc]init];
    lab5.frame = CGRectMake(0, 290, self.view.frame.size.width, 100);
    lab5.numberOfLines = 0;
    lab5.direction = YQLightLableDirectionToDown;
    lab5.textAlignment = NSTextAlignmentCenter;
    lab5.text = @"向下，向下，向下，向下，向下，向下，\n向下，向下，向下，向下，向下，向下，\n向下，向下，向下，向下，向下，向下，\n向下，向下，向下，向下，向下，向下，\n向下，向下，向下，向下，向下，向下，";
    [self.view addSubview:lab5];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
