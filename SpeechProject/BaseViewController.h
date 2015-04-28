//
//  BaseViewController.h
//  SpeechProject
//
//  Created by wendongsheng on 15/4/27.
//  Copyright (c) 2015年 etiantian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController

@property (nonatomic, strong) UIButton *pushButton;

- (NSString *)setNavTitle;
- (NSString *)setPushButtonTitle;
- (void)push:(UIButton *)push;
@end
