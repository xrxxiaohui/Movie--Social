//
//  CommonModel.m
//  MovieSocial
//
//  Created by Apple on 13-12-25.
//  Copyright (c) 2013年 Apple. All rights reserved.
//

#import "CommonModel.h"
#import "StringUtil.h"
#import "JSON.h"
#import "StringUtil.h"

@implementation CommonModel

-(id)initWithTarget:(id)aDelegate
{
    if ( self = [super initWithDelegate:aDelegate]){
        
    }
    return self;
}

//版本检查
- (void)checkVersion:(SEL)httpRequestSucceed
   httpRequestFailed:(SEL)httpRequestFailed{
    NSString *urlString = [kCheckVersion stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    [super get:urlString httpRequestSuccess:httpRequestSucceed httpRequestFailed:httpRequestFailed];
}


@end
