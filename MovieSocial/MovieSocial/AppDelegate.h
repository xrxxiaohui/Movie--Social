//
//  AppDelegate.h
//  MovieSocial
//
//  Created by Apple on 13-12-25.
//  Copyright (c) 2013年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (nonatomic, retain) UITabBarController *tabBarController;
@property (retain, nonatomic) UIWindow *window;
@property (retain, nonatomic) UIButton *movieTab;
@property (retain, nonatomic) UIButton *friendsTab;
@property (retain, nonatomic) UIButton *messageTab;
@property (retain, nonatomic) UIButton *propsTab;
@property (retain, nonatomic) UIButton *settingTab;

@end
