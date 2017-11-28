//
//  HomeViewController.m
//  Target-Demo
//
//  Created by yq on 2017/11/28.
//  Copyright © 2017年 XZ. All rights reserved.
//

#import "HomeViewController.h"
#import "TargetViewController.h"
#import "Target2ViewController.h"
#import "TargetManager.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    ///共用控制器，不同的target执行不同的操作
#ifdef Target2
    NSLog(@"现在是target2..");
#else
    NSLog(@"现在是target1..");
#endif
    
    ///不同的环境变量执行不同的操作
#if DEBUG
    NSLog(@"debug..");
#elif RELEASE   
    NSLog(@"release..");
#else
    NSLog(@"release test..");
#endif
    
    ///写成单例使用起来更方便
    
    NSString *baseUrl = [TargetManager shareTarget].baseUrl;
    if ([TargetManager shareTarget].target == XZDebug) {
        NSLog(@"debug..%@",baseUrl);
    }
    else if ([TargetManager shareTarget].target == XZRelease) {
        NSLog(@"release..%@",baseUrl);
    }
    else if ([TargetManager shareTarget].target == XZRelease_test) {
        NSLog(@"release test..%@",baseUrl);
    }
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
#ifdef Target1
    TargetViewController *vc = [TargetViewController new];
    [self.navigationController pushViewController:vc animated:YES];
#else
    Target2ViewController *vc = [Target2ViewController new];
    [self.navigationController pushViewController:vc animated:YES];
#endif
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
