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

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
#if Target2
    NSLog(@"现在是target2..");
#else
    NSLog(@"现在是target1..");
#endif
    
#if DEBUG
    NSLog(@"debug..");
#elif RELEASE   
    NSLog(@"release..");
#else
    NSLog(@"release test..");
#endif
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
#if Target1
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
