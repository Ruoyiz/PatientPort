//
//  RootViewController.h
//  BaseProject
//
//  Created by mac on 2017/11/21.
//  Copyright © 2017年 mac. All rights reserved.
//

#import "ViewController.h"

@interface RootViewController : ViewController

@property (nonatomic, strong) NSString *myTitle;

- (void)setLeftItemWithImage:(UIImage *)aImage andSelectImage:(UIImage *)sImage;
- (void)setLeftItemWithText:(NSString *)aString andColor:(UIColor *)aColor;
- (void)setRightItemWithImage:(UIImage *)aImage andSelectImage:(UIImage *)sImage;
- (void)setRightItemWithText:(NSString *)aString andColor:(UIColor *)aColor;
- (void)setNotClickWithText:(NSString *)aString andColor:(UIColor *)aColor;
- (void)setRightRedDotItemWithImage:(UIImage *)aImage andSelectImage:(UIImage *)sImage;
- (void)leftItemMethod;
- (void)rightItemMethod:(UIButton *)button;

@end
