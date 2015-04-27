//
//  BaseViewController.m
//  SpeechProject
//
//  Created by wendongsheng on 15/4/27.
//  Copyright (c) 2015年 etiantian. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor colorWithRed:arc4random()%256/255.0 green:arc4random()%256/255.0 blue:arc4random()%256/255.0 alpha:1];
    
    //set title
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 300, 30)];
    titleLabel.text = [self setNavTitle];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    self.navigationItem.titleView = titleLabel;
    
    //push
    UIButton *pushButton = [[UIButton alloc] initWithFrame:CGRectMake(50, self.view.frame.size.height-50-49, self.view.frame.size.width-2*50, 30)];
    [pushButton setTitle:[self setPushButtonTitle] forState:UIControlStateNormal];
    pushButton.layer.borderColor = [UIColor whiteColor].CGColor;
    [pushButton addTarget:self action:@selector(push:) forControlEvents:UIControlEventTouchUpInside];
    [pushButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    pushButton.layer.borderWidth = 1.0;
    pushButton.layer.cornerRadius = 5;
    [self.view addSubview:pushButton];
}

- (NSString *)setNavTitle{
    return nil;
}

- (NSString *)setPushButtonTitle{
    return nil;
}

- (void)push:(UIButton *)push
{
    
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
