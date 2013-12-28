//
//  ConstObject.m
//  MovieSocial
//
//  Created by Apple on 13-12-25.
//  Copyright (c) 2013年 Apple. All rights reserved.
//

#import "ConstObject.h"

@implementation ConstObject
@synthesize homeViewController;

@synthesize isLogin;

+ (id)instance {
	static id obj = nil;
	if( nil == obj ) {
		obj = [[self alloc] init];
	}
	return obj;	
}

- (id)init {
	if ((self = [super init])) {
	}
  
  return self;
}

- (BOOL)isLogin{
    return [[[NSUserDefaults standardUserDefaults] objectForKey:@"isLogin"] boolValue];
}

-(void)dealloc
{

    [super dealloc];
}

@end
