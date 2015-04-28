//
//  SecondOneViewController.m
//  SpeechProject
//
//  Created by wendongsheng on 15/4/28.
//  Copyright (c) 2015年 etiantian. All rights reserved.
//

#import "SecondOneViewController.h"

@interface SecondOneViewController ()

@end

@implementation SecondOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIView *view1 = [UIView new];
    view1.backgroundColor = [UIColor redColor];
    [self.view addSubview:view1];
    
    UIView *view2 = [UIView new];
    view2.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:view2];
    
    [view1 makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.right.equalTo(self.view).offset(10);
        make.bottom.equalTo(self.pushButton.top).offset(-10);
    }];
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
