//
//  ViewController.m
//  XJMediator
//
//  Created by 薛健 on 2019/12/3.
//  Copyright © 2019 薛健. All rights reserved.
//

#import "ViewController.h"
#import "XJMediator.h"
#import <objc/runtime.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeSystem];
    btn1.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:btn1];
    btn1.tag = 1;
    btn1.frame = CGRectMake(10, 100, 150, 44);
    [btn1 setTitle:@"跳转页面 Present" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(backButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeSystem];
    btn2.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:btn2];
    btn2.tag = 2;
    btn2.frame = CGRectMake(200, 100, 150, 44);
    [btn2 setTitle:@"跳转页面 Push" forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(backButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)backButtonClicked:(UIButton *)btn {

    switch (btn.tag) {
        case 1:
            [XJMediator basePresent:@"OneViewController" dic:nil];
            break;
        case 2:
            [XJMediator basePush:@"OneViewController" dic:nil];
            break;
        default:
            break;
    }
}

- (int)Param:(int)a string:(NSString *)str point:(CGPoint)point block:(int (^)(NSString *, int))block {
    NSLog(@"int参数%d", a);
    NSLog(@"NSString参数%@", str);
    NSLog(@"CGPoint：x = %f, y = %f", point.x, point.y);
    
    int ss = block(@"block: int为", 1000000);
    NSLog(@"block返回值为：%d", ss);
    
    return 100;
}
@end
