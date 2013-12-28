//
//  ConstObject.h
//  ChuanDaZhi
//
//  Created by Lee xiaohui on 12-5-10.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ConstObject : NSObject{
    BOOL  isLogin;//判断是否登录
   
}

@property (nonatomic, retain) UIViewController *homeViewController;
@property (nonatomic, assign) BOOL isLogin;

+ (id)instance;

@end
