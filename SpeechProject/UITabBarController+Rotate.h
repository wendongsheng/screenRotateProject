//
//  UITabBarController+Rotate.h
//  BaseFramework
//
//  Created by wendongsheng on 15/4/2.
//  Copyright (c) 2015年 etiantian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITabBarController (Rotate)
- (BOOL)shouldAutorotate;
- (NSUInteger)supportedInterfaceOrientations;
@end
