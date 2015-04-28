//
//  SecondTwoViewController.m
//  SpeechProject
//
//  Created by wendongsheng on 15/4/28.
//  Copyright (c) 2015年 etiantian. All rights reserved.
//

#import "SecondTwoViewController.h"

@interface SecondTwoViewController ()

@end

@implementation SecondTwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIView *lastView = self.view;
    for (int i = 0; i < 10; i++) {
        UIView *view = [UIView new];
        view.backgroundColor = [self randomColor];
        [self.view addSubview:view];
        
        [view makeConstraints:^(MASConstraintMaker *make) {
//            make.edges.equalTo(lastView).width.insets(UIEdgeInsetsMake(20, 20, 20, 20));
            if (i == 0) {
                make.top.left.equalTo(lastView).offset(20);
                make.right.equalTo(lastView).offset(-20);
                make.bottom.equalTo(self.pushButton.top).offset(-20);
            }
            else{
                make.edges.equalTo(lastView).with.insets(UIEdgeInsetsMake(20, 20, 20, 20));
            }
        }];
        
        lastView = view;
    }
}

- (UIColor *)randomColor {
    CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    return [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
}

- (NSString *)setPushButtonTitle{
    return @"middle";
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
