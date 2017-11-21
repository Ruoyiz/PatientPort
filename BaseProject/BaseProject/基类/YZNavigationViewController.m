//
//  YZNavigationViewController.m
//  loginDemo
//
//  Created by 若义张 on 16/1/26.
//  Copyright © 2016年 若义张. All rights reserved.
//

#import "YZNavigationViewController.h"

@interface YZNavigationViewController ()

@end

@implementation YZNavigationViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationBar.translucent = NO;
    self.navigationBar.barTintColor = UICOLOR(214, 214, 214, 1);
    self.navigationController.navigationBar.shadowImage = [[UIImage alloc] init];
}
- (void)viewWillAppear:(BOOL)animated {
    [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"导航条"]
                       forBarPosition:UIBarPositionAny
                           barMetrics:UIBarMetricsDefault];
    [self.navigationBar setShadowImage:[UIImage new]];
    [super viewWillAppear: animated];

}


//-(BOOL)shouldAutorotate
//{
//    return self.topViewController.shouldAutorotate;
//}
//- (UIInterfaceOrientationMask)supportedInterfaceOrientations
//{
//    return self.topViewController.supportedInterfaceOrientations;
//}

- (void)setWitebgColor {
    [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"白色导航图"]
                            forBarPosition:UIBarPositionAny
                                barMetrics:UIBarMetricsDefault];
    [self.navigationBar setShadowImage:[UIImage new]];

}

- (void)setbgColor:(UIColor *)bgColor {
    [self.navigationBar setBackgroundImage:[self createImageWithColor:bgColor]
                            forBarPosition:UIBarPositionAny
                                barMetrics:UIBarMetricsDefault];
    [self.navigationBar setShadowImage:[UIImage new]];

}

-(UIImage*) createImageWithColor:(UIColor*) color
{
    CGRect rect=CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
