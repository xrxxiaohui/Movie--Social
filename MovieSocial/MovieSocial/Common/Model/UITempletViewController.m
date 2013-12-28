//
//  UITempletViewController.m
//  MovieSocial
//
//  Created by Apple on 13-12-25.
//  Copyright (c) 2013年 Apple. All rights reserved.
//

#import "UITempletViewController.h"
#import "MBProgressHUD.h"

@interface UITempletViewController ()

@end

@implementation UITempletViewController
@synthesize rightButton;
@synthesize returnButton;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBar.translucent = NO;
    
    //设置导航背景图片
    if (kSystemIsIOS7) {
        [[UINavigationBar appearance] setBackgroundImage:[UIImage imageNamed:@"topBarBg.png"] forBarMetrics:UIBarMetricsDefault];
    }
    else{
        [[UINavigationBar appearance] setBackgroundImage:[UIImage imageNamed:@"topBarBg6.png"] forBarMetrics:UIBarMetricsDefault];
    }
}

#pragma --mark Functions
- (void)hideNavBarItems
{
    self.navigationController.navigationBarHidden = YES;
}

- (void)noHideNavBarItems
{
    self.navigationController.navigationBarHidden = NO;
}

- (void)initNavBarItems:(NSString *)titlename
{
    self.navigationItem.hidesBackButton = YES;
    // 隐藏掉系统的返回键 自己定义
    //修改背景图
    UIView *backgroundView =[[UIView alloc]initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 66.0f)];
    backgroundView.backgroundColor = [UIColor clearColor];
    backgroundView.tag = 1011;
    
    //设置标题
    UILabel *aTitle = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 3.0f, 10.0f, 40.0f)];
    aTitle.text = titlename;
    aTitle.font = [UIFont boldSystemFontOfSize:22.0f];
    aTitle.textAlignment = NSTextAlignmentCenter;
    aTitle.backgroundColor = [UIColor clearColor];
    aTitle.textColor = [UIColor whiteColor];
    aTitle.frame = CGRectMake(85.0f, 8.0f, 132.0f, 48.0f);
    
    [backgroundView addSubview:aTitle];
    
    [self.navigationItem setTitleView:backgroundView];
    [backgroundView release];
    [aTitle release];
}

- (void)addButtonReturn:(NSString *)image lightedImage:(NSString *) aLightedImage selector:(SEL)buttonClicked
{
    returnButton = [UIButton  buttonWithType:UIButtonTypeCustom];
    [returnButton setTintColor:[UIColor whiteColor]];
    returnButton.titleLabel.font = [UIFont boldSystemFontOfSize:14.0f];
    [returnButton setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [returnButton setImage:[UIImage imageNamed:aLightedImage] forState:UIControlStateHighlighted];
    [returnButton addTarget:self action:buttonClicked forControlEvents:UIControlEventTouchUpInside];
    returnButton.frame = CGRectMake(1.0f, 9.0f, [UIImage imageNamed:image].size.width,[UIImage imageNamed:image].size.height);
    returnButton.tag = NAME_MAX;
    [self.navigationItem.titleView addSubview:returnButton];
    
}

- (void)addRightButton:(NSString *)image  lightedImage:(NSString *) aLightedImage selector:(SEL)pushPastView
{
    rightButton = [UIButton  buttonWithType:UIButtonTypeCustom];
    [rightButton setTintColor:[UIColor whiteColor]];
    rightButton.titleLabel.font = [UIFont boldSystemFontOfSize:14.0f];
    [rightButton setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [rightButton setImage:[UIImage imageNamed:aLightedImage] forState:UIControlStateHighlighted];
    [rightButton addTarget:self action:pushPastView forControlEvents:UIControlEventTouchUpInside];
    rightButton.frame = CGRectMake(250.0f, 9.0f, [UIImage imageNamed:image].size.width,[UIImage imageNamed:image].size.height);
    rightButton.tag = 10009;
    [self.navigationItem.titleView addSubview:rightButton];
}

#pragma parseJsonRequest

- (NSDictionary *)parseJsonRequest:(ASIHTTPRequest *) request{
    
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    NSData *data = [request responseData];
    NSString *response = [[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding] autorelease];
    //打印请求返回的原串
    //    NSLog(@"response string=%@",response);
    NSDictionary *message = [response JSONValue];
    return message;
}

- (void)showMBProgressHUD:(NSString *)title{
    MBProgressHUD *HUD = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    HUD.labelText = title;
}

- (void)hideMBProgressHUD{
    [MBProgressHUD hideHUDForView:self.view animated:YES];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

-(void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
