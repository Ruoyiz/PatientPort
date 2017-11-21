//
//  RYConstant.h
//  BasicProject
//
//  Created by mac on 2017/11/21.
//  Copyright © 2017年 mac. All rights reserved.
//

#ifndef RYConstant_h
#define RYConstant_h

#define APP_DELEGATE (AppDelegate *)[[UIApplication sharedApplication] delegate]//获得Appdelegate
#define SCREEN_WIDTH    ([UIScreen mainScreen].bounds.size.width)  //获取屏幕 宽度
#define SCREEN_HEIGHT   ([UIScreen mainScreen].bounds.size.height) //获取屏幕 高度

#define GETPLUSHEIGHTFONTSIZE(fontSize) (SCREEN_HEIGHT/736*fontSize)
#define GETPLUSWIDTH(num)          (SCREEN_WIDTH/414*num)
#define GETPLUSWIDTHFONTSIZE(num)          (SCREEN_WIDTH/414*num)
#define GETPLUSHEIGHT(num)        (SCREEN_HEIGHT == 812.0 ? 736.0/590:SCREEN_HEIGHT/736.0)*num

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
#define UICOLOR(R, G, B, A)[UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:A]

#define NavigationBarHeigh  self.navigationController.navigationBar.frame.size.height
#define StatusBarHeight  [[UIApplication sharedApplication] statusBarFrame].size.height
#define TabBarHeight     self.tabBarController.tabBar.frame.size.height

#endif /* RYConstant_h */
