//
//  RootViewController.m
//  BaseProject
//
//  Created by mac on 2017/11/21.
//  Copyright © 2017年 mac. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}


- (void)setMyTitle:(NSString *)myTitle {
    _myTitle = myTitle;
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 120, 42)];
    [label setFont:[UIFont systemFontOfSize:20]];
    [label setBackgroundColor:[UIColor clearColor]];
    [label setTextColor:[UIColor whiteColor]];
    [label setTextAlignment:NSTextAlignmentCenter];
    self.navigationItem.titleView = label;
    
    [label setText:_myTitle];
}

- (void)setLeftItemWithImage:(UIImage *)aImage andSelectImage:(UIImage *)sImage {
    
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    if (aImage) {
        [backButton setImage:aImage forState:UIControlStateNormal];
    }else{
        [backButton setImage:[[UIImage imageNamed:@"返回"] imageWithTintColor:[UIColor whiteColor]] forState:UIControlStateNormal];
    }
    backButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [backButton addTarget:self action:@selector(leftItemMethod) forControlEvents:UIControlEventTouchUpInside];
    [backButton setFrame:CGRectMake(0, 0, 12, 20)];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
}
- (void)setRightItemWithImage:(UIImage *)aImage
               andSelectImage:(UIImage *)sImage
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    //    [button setBackgroundColor:[UIColor purpleColor]];
    [button setImage:aImage forState:UIControlStateNormal];
    [button setImage:sImage forState:UIControlStateHighlighted];
    [button addTarget:self action:@selector(rightItemMethod:) forControlEvents:UIControlEventTouchUpInside];
    //    [button setBackgroundColor:[UIColor brrlueColor]];
    [button setFrame:CGRectMake(0, 0, 29, 29+4)];
    [button setImageEdgeInsets:UIEdgeInsetsMake(0, 4, 0, -4)];
    
    //    UIView *customView = [[UIView alloc] initWithFrame:CGRectMake(0,0, 29, 29 + 4)];
    ////    [customView setBackgroundColor:[UIColor redColor]];
    //    [customView addSubview:button];
    
    UIBarButtonItem *rightButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    
    self.navigationItem.rightBarButtonItem = rightButtonItem;
}

- (void)setRightRedDotItemWithImage:(UIImage *)aImage
                     andSelectImage:(UIImage *)sImage{
    //    UIView *rightView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 29, 28)];
    //    rightView.userInteractionEnabled = YES;
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:aImage forState:UIControlStateNormal];
    [button setImage:sImage forState:UIControlStateHighlighted];
    [button addTarget:self action:@selector(rightItemMethod:) forControlEvents:UIControlEventTouchUpInside];
    [button setFrame:CGRectMake(0, 0, 29, 29 + 4)];
    [button setImageEdgeInsets:UIEdgeInsetsMake(0, 4, 0, -4)];
    //    [rightView addSubview:button];
    
    UIView *redDotView = [[UIView alloc] initWithFrame:CGRectMake(25, 5, 8, 8)];
    redDotView.backgroundColor = [UIColor redColor];
    redDotView.layer.cornerRadius = 4;
    redDotView.layer.masksToBounds = YES;
    [button addSubview:redDotView];
    
    UIBarButtonItem *rightButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    self.navigationItem.rightBarButtonItem = rightButtonItem;
}

- (void)setRightItemWithText:(NSString *)aString andColor:(UIColor *)aColor {
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:aString forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:20];
    [button addTarget:self action:@selector(rightItemMethod:) forControlEvents:UIControlEventTouchUpInside];
    [button setFrame:CGRectMake(0, 0, 86, 30)];
    [button setTitleEdgeInsets:UIEdgeInsetsMake(0, 6, 0, -6)];
    [button setTitleColor:aColor forState:UIControlStateNormal];
    UIBarButtonItem *rightButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    
    self.navigationItem.rightBarButtonItem = rightButtonItem;
    
}

- (void)setLeftItemWithText:(NSString *)aString andColor:(UIColor *)aColor {
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:aString forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:20];
    [button addTarget:self action:@selector(leftItemMethod) forControlEvents:UIControlEventTouchUpInside];
    [button setFrame:CGRectMake(0, 0, 46, 30)];
    [button setTitleEdgeInsets:UIEdgeInsetsMake(0, 6, 0, -6)];
    [button setTitleColor:aColor forState:UIControlStateNormal];
    UIBarButtonItem *rightButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    
    self.navigationItem.leftBarButtonItem = rightButtonItem;
    
}


- (void)setNotClickWithText:(NSString *)aString andColor:(UIColor *)aColor {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:aString forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:20];
    button.userInteractionEnabled = NO;
    //    [button addTarget:self action:@selector(rightItemMethod:) forControlEvents:UIControlEventTouchUpInside];
    [button setFrame:CGRectMake(0, 0, 66, 30)];
    [button setTitleEdgeInsets:UIEdgeInsetsMake(0, 6, 0, -6)];
    [button setTitleColor:aColor forState:UIControlStateNormal];
    UIBarButtonItem *rightButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    self.navigationItem.rightBarButtonItem = rightButtonItem;
}

- (void)leftItemMethod{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)rightItemMethod:(UIButton *)button{}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
