//
//  RootTabBarControllerViewController.m
//  SpeechProject
//
//  Created by wendongsheng on 15/4/27.
//  Copyright (c) 2015年 etiantian. All rights reserved.
//

#import "RootTabBarController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FouthViewController.h"

@interface RootTabBarController ()

@end

@implementation RootTabBarController

- (instancetype)init{
    if (self = [super init]) {
        //set viewControllers
        
        NSArray *tabArray = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"RootTabBar" ofType:@"plist"]];
        NSMutableArray *controllers = [NSMutableArray arrayWithCapacity:tabArray.count];

        BaseNavigationController *firstNC = [[BaseNavigationController alloc] initWithRootViewController:[FirstViewController new]];
        BaseNavigationController *secondNC = [[BaseNavigationController alloc] initWithRootViewController:[SecondViewController new]];
        BaseNavigationController *thirdNC = [[BaseNavigationController alloc] initWithRootViewController:[ThirdViewController new]];
        BaseNavigationController *fouthNC = [[BaseNavigationController alloc] initWithRootViewController:[FouthViewController new]];
        [controllers addObject:firstNC];
        [controllers addObject:secondNC];
        [controllers addObject:thirdNC];
        [controllers addObject:fouthNC];
        [self setViewControllers:controllers];
        
        //setTabBar
        for (int i = 0; i < tabArray.count; i++) {
            NSDictionary *dic = tabArray[i];
            NSString *title = dic[@"title"];
            UIViewController *vc = controllers[i];
            vc.tabBarItem = [[UITabBarItem alloc] initWithTitle:title image:nil selectedImage:nil];
        }
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
