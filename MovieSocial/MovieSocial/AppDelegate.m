//
//  AppDelegate.m
//  MovieSocial
//
//  Created by Apple on 13-12-25.
//  Copyright (c) 2013年 Apple. All rights reserved.
//

#import "AppDelegate.h"
#import "MovieViewController.h"
#import "FriendsViewController.h"
#import "MessageViewController.h"
#import "PropsViewController.h"
#import "SettingViewController.h"

enum {
	TagForMovie = 0,
	TagForFriend,
	TagForMessage,
	TagForProps,
    TagForSetting
};

@implementation AppDelegate
@synthesize movieTab;
@synthesize messageTab;
@synthesize friendsTab;
@synthesize propsTab;
@synthesize settingTab;
@synthesize tabBarController;
@synthesize window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [self initTabControllerViews];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = tabBarController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)initTabControllerViews{
    
    UINavigationController *movieNavigation = [[[UINavigationController alloc]initWithRootViewController:[[MovieViewController alloc] init]] autorelease];
    movieNavigation.tabBarItem.title = @"电影";
    movieNavigation.navigationBarHidden = YES;
    
    UINavigationController *friendsNavigation = [[UINavigationController alloc]initWithRootViewController:[[FriendsViewController alloc] init]];
    friendsNavigation.tabBarItem.title = @"朋友";
    //  [[ConstObject instance]setAccountNavigationController:forumNav];
    
    UINavigationController *messageNavigation = [[[UINavigationController alloc]initWithRootViewController:[[MessageViewController alloc] init]] autorelease];
    messageNavigation.tabBarItem.title = @"消息";
    
    UINavigationController *propsNavigation = [[[UINavigationController alloc]initWithRootViewController:[[PropsViewController alloc] init]] autorelease];
//    [[ConstObject instance] setMsgNavigationController:messageNav];
    
    propsNavigation.tabBarItem.title = @"道具";
    
    UINavigationController *settingNavigation = [[[UINavigationController alloc]initWithRootViewController:[[SettingViewController alloc] init]] autorelease];
    settingNavigation.tabBarItem.title = @"设置";
    
    
    tabBarController = [[UITabBarController alloc] init];
    [tabBarController setViewControllers:[NSArray arrayWithObjects:movieNavigation,friendsNavigation,messageNavigation,propsNavigation,settingNavigation,nil]];
    
    
    
    UIImageView *imgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"tabBarBg.png"]];
    imgView.backgroundColor = [UIColor clearColor];
    imgView.userInteractionEnabled = YES;
    imgView.multipleTouchEnabled = YES;
    imgView.frame = CGRectMake(0,-1, 320,50);
    
    
    movieTab = [UIButton buttonWithType:UIButtonTypeCustom];
    movieTab.adjustsImageWhenHighlighted = NO;
    movieTab.frame = CGRectMake(0.0f, 0.0f, 64.0f, 50.0f);
    movieTab.backgroundColor = [UIColor clearColor];
    [movieTab setImage:[UIImage imageNamed:@"homeSelected.png"] forState:UIControlStateNormal];
    [movieTab addTarget:self action:@selector(tabClickAction:) forControlEvents:UIControlEventTouchUpInside];
    movieTab.tag = TagForMovie;
    [imgView addSubview:movieTab];
    
    friendsTab = [UIButton buttonWithType:UIButtonTypeCustom];
    friendsTab.adjustsImageWhenHighlighted = NO;
    friendsTab.frame = CGRectMake(64.0f, 0.0f, 64.0f, 50.0f);
    friendsTab.backgroundColor = [UIColor clearColor];
    [friendsTab setImage:[UIImage imageNamed:@"form.png"] forState:UIControlStateNormal];
    [friendsTab addTarget:self action:@selector(tabClickAction:) forControlEvents:UIControlEventTouchUpInside];
    friendsTab.tag = TagForFriend;
    [imgView addSubview:friendsTab];
    
    
    messageTab = [UIButton buttonWithType:UIButtonTypeCustom];
    messageTab.adjustsImageWhenHighlighted = NO;
    messageTab.frame = CGRectMake(128.0f, 0.0f, 64.0f, 50.0f);
    messageTab.backgroundColor = [UIColor clearColor];
    [messageTab setImage:[UIImage imageNamed:@"mine.png"] forState:UIControlStateNormal];
    [messageTab addTarget:self action:@selector(tabClickAction:) forControlEvents:UIControlEventTouchUpInside];
    messageTab.tag = TagForMessage;
    [imgView addSubview:messageTab];
    
    propsTab = [UIButton buttonWithType:UIButtonTypeCustom];
    propsTab.adjustsImageWhenHighlighted = NO;
    propsTab.frame = CGRectMake(192.0f, 0.0f, 64.0f, 50.0f);
    propsTab.backgroundColor = [UIColor clearColor];
    [propsTab setImage:[UIImage imageNamed:@"message.png"] forState:UIControlStateNormal];
    [propsTab addTarget:self action:@selector(tabClickAction:) forControlEvents:UIControlEventTouchUpInside];
    propsTab.tag = TagForProps;
    [imgView addSubview:propsTab];
    
    settingTab = [UIButton buttonWithType:UIButtonTypeCustom];
    settingTab.adjustsImageWhenHighlighted = NO;
    settingTab.frame = CGRectMake(256.0f, 0.0f, 64.0f, 50.0f);
    settingTab.backgroundColor = [UIColor clearColor];
    [settingTab setImage:[UIImage imageNamed:@"more.png"] forState:UIControlStateNormal];
    [settingTab addTarget:self action:@selector(tabClickAction:) forControlEvents:UIControlEventTouchUpInside];
    settingTab.tag = TagForSetting;
    [imgView addSubview:settingTab];
    
    
    [self.tabBarController.tabBar addSubview:imgView];
    [imgView release];
    
    for (UIView * v in [self.tabBarController.tabBar subviews]) {
        if(v && [NSStringFromClass([v class]) isEqualToString:@"UITabBarButton"])
            [v removeFromSuperview];
    }
    
    
}

#pragma -mark Functions;

- (void)tabClickAction:(id)sender{
    
    UIButton *btn = (UIButton*)sender;
    
//    if ((![[LoadingView sharedManager] isLogin] && btn.tag == TagForMine) || (![[LoadingView sharedManager] isLogin] && btn.tag == TagForMessage)) {
//        [AppDelegate shareAppDelegate].isInto1 = NO;
//        [[AppDelegate shareAppDelegate] isUserLogin:nil];
//        return;
//    }
    
    
    self.tabBarController.selectedIndex = btn.tag;
    
    switch (btn.tag) {
        case TagForMovie:
           
            [movieTab setImage:[UIImage imageNamed:@"homeSelected.png"] forState:UIControlStateNormal];
            [friendsTab setImage:[UIImage imageNamed:@"form.png"] forState:UIControlStateNormal];
            [messageTab setImage:[UIImage imageNamed:@"mine.png"] forState:UIControlStateNormal];
            [propsTab setImage:[UIImage imageNamed:@"message.png"] forState:UIControlStateNormal];
            [settingTab setImage:[UIImage imageNamed:@"more.png"] forState:UIControlStateNormal];
            break;
        case TagForFriend:
           
            [movieTab setImage:[UIImage imageNamed:@"home.png"] forState:UIControlStateNormal];
            [friendsTab setImage:[UIImage imageNamed:@"formSelected.png"] forState:UIControlStateNormal];
            [messageTab setImage:[UIImage imageNamed:@"mine.png"] forState:UIControlStateNormal];
            [propsTab setImage:[UIImage imageNamed:@"message.png"] forState:UIControlStateNormal];
            [settingTab setImage:[UIImage imageNamed:@"more.png"] forState:UIControlStateNormal];
            break;
        case TagForMessage:
            [movieTab setImage:[UIImage imageNamed:@"home.png"] forState:UIControlStateNormal];
            [friendsTab setImage:[UIImage imageNamed:@"form.png"] forState:UIControlStateNormal];
            [messageTab setImage:[UIImage imageNamed:@"mineSelected.png"] forState:UIControlStateNormal];
            [propsTab setImage:[UIImage imageNamed:@"message.png"] forState:UIControlStateNormal];
            [settingTab setImage:[UIImage imageNamed:@"more.png"] forState:UIControlStateNormal];
            break;
        case TagForProps:
            [movieTab setImage:[UIImage imageNamed:@"home.png"] forState:UIControlStateNormal];
            [friendsTab setImage:[UIImage imageNamed:@"form.png"] forState:UIControlStateNormal];
            [messageTab setImage:[UIImage imageNamed:@"mine.png"] forState:UIControlStateNormal];
            [propsTab setImage:[UIImage imageNamed:@"messageSelected.png"] forState:UIControlStateNormal];
            [settingTab setImage:[UIImage imageNamed:@"more.png"] forState:UIControlStateNormal];
            break;
        case TagForSetting:
            [movieTab setImage:[UIImage imageNamed:@"home.png"] forState:UIControlStateNormal];
            [friendsTab setImage:[UIImage imageNamed:@"form.png"] forState:UIControlStateNormal];
            [messageTab setImage:[UIImage imageNamed:@"mine.png"] forState:UIControlStateNormal];
            [propsTab setImage:[UIImage imageNamed:@"message.png"] forState:UIControlStateNormal];
            [settingTab setImage:[UIImage imageNamed:@"moreSelected.png"] forState:UIControlStateNormal];
            break;
            
        default:
            break;
    }
    
}

+ (AppDelegate *)shareAppDelegate {
    return (AppDelegate *)[UIApplication sharedApplication].delegate;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
