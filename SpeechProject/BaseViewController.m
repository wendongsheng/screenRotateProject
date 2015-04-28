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
    UIButton *pushButton = [[UIButton alloc] init];
    self.pushButton = pushButton;
    [pushButton setTitle:[self setPushButtonTitle] forState:UIControlStateNormal];
    pushButton.layer.borderColor = [UIColor whiteColor].CGColor;
    [pushButton addTarget:self action:@selector(push:) forControlEvents:UIControlEventTouchUpInside];
    [pushButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    pushButton.layer.borderWidth = 1.0;
    pushButton.layer.cornerRadius = 5;
    [self.view addSubview:pushButton];
    
    [pushButton makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view.left).offset(10);
        make.right.equalTo(self.view.right).offset(-10);
        make.bottom.equalTo(self.view.bottom).offset(-10);
        make.height.equalTo (30);
    }];
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


#ifdef __IPHONE_7_0
- (UIRectEdge)edgesForExtendedLayout {
    return UIRectEdgeNone;
}
#endif


@end
