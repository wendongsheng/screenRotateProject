//
//  SecondOneViewController.m
//  SpeechProject
//
//  Created by wendongsheng on 15/4/28.
//  Copyright (c) 2015年 etiantian. All rights reserved.
//

#import "SecondOneViewController.h"
#import "SecondTwoViewController.h"

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
        make.left.top.equalTo(self.view).offset(10);
        make.right.equalTo(self.view).offset(-10);
        make.bottom.equalTo(self.pushButton.top).offset(-10);
    }];
    
    [view2 makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.size.equalTo(CGSizeMake(200, 100));
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)setNavTitle{
    return @"The base user";
}

- (NSString *)setPushButtonTitle{
    return @"Masonry used";
}

- (void)push:(UIButton *)push{
    SecondTwoViewController *two = [SecondTwoViewController new];
    [self.navigationController pushViewController:two animated:YES];
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
