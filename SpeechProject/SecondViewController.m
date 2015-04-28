//
//  SecondViewController.m
//  SpeechProject
//
//  Created by wendongsheng on 15/4/27.
//  Copyright (c) 2015年 etiantian. All rights reserved.
//

#import "SecondViewController.h"
#import "SecondOneViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIView *view = UIView.new;
    view.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:view];
    [view makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(10);
        make.left.equalTo(10);
        make.right.equalTo(-10);
        make.bottom.equalTo(self.pushButton.top).offset(-10);
    }];
    
}

- (NSString *)setNavTitle{
    return @"testMagicalRecord";
}

- (NSString *)setPushButtonTitle{
    return @"testMasonry";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)push:(UIButton *)push{
    SecondOneViewController *one = [SecondOneViewController new];
    [self.navigationController pushViewController:one animated:YES];
}

@end
