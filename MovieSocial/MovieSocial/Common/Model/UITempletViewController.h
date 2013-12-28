//
//  UITempletViewController.h
//  MovieSocial
//
//  Created by Apple on 13-12-25.
//  Copyright (c) 2013年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CommonModel.h"

@interface UITempletViewController : UIViewController{
    
    UIButton     *returnButton;//左导航
    UIButton     *rightButton;//右导航
    CommonModel  *commonModel;
}

@property (nonatomic,retain) UIButton *returnButton;
@property (nonatomic,retain) UIButton *rightButton;

//NavBar设置
- (void)initNavBarItems:(NSString *)titlename;

//NavBar左右按钮
- (void)addButtonReturn:(NSString *)image lightedImage:(NSString *) aLightedImage selector:(SEL)buttonClicked;

- (void)addRightButton:(NSString *)image  lightedImage:(NSString *) aLightedImage selector:(SEL)pushPastView;

//隐藏navigation bar
- (void)hideNavBarItems;

//显示navigation bar
- (void)noHideNavBarItems;

//解析数据
- (NSDictionary *)parseJsonRequest:(ASIHTTPRequest *) request;

//显示文字加载提示
- (void)showMBProgressHUD:(NSString *)title;

//隐藏加载提示
- (void)hideMBProgressHUD;


@end
