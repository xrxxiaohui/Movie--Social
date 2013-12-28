//
//  CommonModel.h
//  MovieSocial
//
//  Created by Apple on 13-12-25.
//  Copyright (c) 2013年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FatherModel.h"
#import "Define.h"

@interface CommonModel : FatherModel

- (id)initWithTarget:(id)aDelegate;

//版本检查
- (void)checkVersion:(SEL)httpRequestSucceed
   httpRequestFailed:(SEL)httpRequestFailed;

@end
