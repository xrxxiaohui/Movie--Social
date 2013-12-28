//
//  FatherModel.m
//  MovieSocial
//
//  Created by Apple on 13-12-25.
//  Copyright (c) 2013年 Apple. All rights reserved.
//

#import "FatherModel.h"
#import "ASINetworkQueue.h"
#import "Define.h"


@implementation FatherModel
@synthesize modelDelegate = _modelDelegate;
@synthesize queue = _queue;
@synthesize request = _request;
@synthesize formDataRequest = _formDataRequest;

- (id)initWithDelegate:(id)_delegate
{
    if ( self = [super init] ) {
        _modelDelegate = _delegate;
        [ASIHTTPRequest setDefaultCache:[ASIDownloadCache sharedCache]];
    }
    return self;
}
- (void)dealloc
{
    if(_modelDelegate){
        _modelDelegate = nil;
    }
    [self cancel];
    
    [super dealloc];
}

- (void)cancel
{
    [[self queue]cancelAllOperations];
    [[self request] clearDelegatesAndCancel];
    [[self formDataRequest] clearDelegatesAndCancel];
    [self setRequest:nil];
    [self setFormDataRequest:nil];
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
}

- (void)get:(NSString*)aURL 
httpRequestSuccess:(SEL)httpRequestSucceed 
httpRequestFailed:(SEL)httpRequestFailed
{
    NSLog(@"url=%@",aURL);
    NSURL *url = [NSURL URLWithString:aURL];
    [self setRequest:[ASIHTTPRequest requestWithURL:url]];
    [[self request] setShouldAttemptPersistentConnection:NO];
    [[self request] setDelegate:self.modelDelegate];
    [[self request] setTimeOutSeconds:15];
    [[self request] setDidFinishSelector:httpRequestSucceed];
    [[self request] setDidFailSelector:httpRequestFailed];
    [[self request] startAsynchronous];
    
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
}

-(void)post:(NSString*)aURL 
 dataString:(NSString*)dataString
httpRequestSuccess:(SEL)httpRequestSucceed
httpRequestFailed:(SEL)httpRequestFailed;
{
    [self post:aURL 
          data:[dataString dataUsingEncoding:NSUTF8StringEncoding] 
   extraParams:nil httpRequestSuccess:httpRequestSucceed httpRequestFailed:httpRequestFailed];
}

-(void)post:(NSString*)aURL 
     params:(NSDictionary *) params
httpRequestSuccess:(SEL)httpRequestSucceed
httpRequestFailed:(SEL)httpRequestFailed
{
    NSString *URL = (NSString*)CFURLCreateStringByAddingPercentEscapes(NULL, (CFStringRef)aURL, (CFStringRef)@"%", NULL, kCFStringEncodingUTF8);
    [URL autorelease];
	NSURL *finalURL = [NSURL URLWithString:URL];
    [[self formDataRequest] cancel];
    [self setFormDataRequest:[ASIFormDataRequest requestWithURL:finalURL]];
    for (NSString *key in params.allKeys) {
        [[self formDataRequest] setPostValue:[params objectForKey:key] forKey:key];
    }
    [[self formDataRequest] setDelegate:self.modelDelegate];
    [[self formDataRequest] setDidFinishSelector:httpRequestSucceed];
    [[self formDataRequest] setDidFailSelector:httpRequestFailed];
    
    [[self formDataRequest] startAsynchronous];
    
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
}

- (void)post:(NSString*)aURL 
        data:(NSData *)data 
 extraParams:(NSDictionary *) params
httpRequestSuccess:(SEL)httpRequestSucceed
httpRequestFailed:(SEL)httpRequestFailed
{
    NSString *URL = (NSString*)CFURLCreateStringByAddingPercentEscapes(NULL, (CFStringRef)aURL, (CFStringRef)@"%", NULL, kCFStringEncodingUTF8);
    [URL autorelease];
	NSURL *finalURL = [NSURL URLWithString:URL];
    [[self formDataRequest] cancel];
    [self setFormDataRequest:[ASIFormDataRequest requestWithURL:finalURL]];
    for (NSString *key in params.allKeys) {
        [[self formDataRequest] setPostValue:[params objectForKey:key] forKey:key];
    }
    [[self formDataRequest] setData:data withFileName:@"avatar.jpg" andContentType:@"image/jpeg" forKey:@"filename"];
    
    [[self formDataRequest] setDelegate:self.modelDelegate];
    [[self formDataRequest] setDidFinishSelector:httpRequestSucceed];
    [[self formDataRequest] setDidFailSelector:httpRequestFailed];
    
    [[self formDataRequest] startAsynchronous];
    
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
}

- (void)post:(NSString*)aURL 
   dataArray:(NSArray *)data 
 extraParams:(NSDictionary *)params
httpRequestSuccess:(SEL)httpRequestSucceed
httpRequestFailed:(SEL)httpRequestFailed
{
    NSString *URL = (NSString*)CFURLCreateStringByAddingPercentEscapes(NULL, (CFStringRef)aURL, (CFStringRef)@"%", NULL, kCFStringEncodingUTF8);
    [URL autorelease];
	NSURL *finalURL = [NSURL URLWithString:URL];
    [[self formDataRequest] cancel];
    [self setFormDataRequest:[ASIFormDataRequest requestWithURL:finalURL]];
    for (NSString *key in params.allKeys) {
        [[self formDataRequest] setPostValue:[params objectForKey:key] forKey:key];
    }
    for (NSData *imageData in data) {
        [[self formDataRequest] addData:imageData withFileName:@"ImageFromiPhone.jpg" andContentType:@"image/jpeg" forKey:@"filename[]"];
    }
    
    
    [[self formDataRequest] setDelegate:self.modelDelegate];
    [[self formDataRequest] setDidFinishSelector:httpRequestSucceed];
    [[self formDataRequest] setDidFailSelector:httpRequestFailed];
    
    [[self formDataRequest] startAsynchronous];
    
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
}

//今日私服发布
- (void)post1:(NSString*)aURL
        data:(NSData *)data
 extraParams:(NSDictionary *) params
httpRequestSuccess:(SEL)httpRequestSucceed
httpRequestFailed:(SEL)httpRequestFailed
{
    NSString *URL = (NSString*)CFURLCreateStringByAddingPercentEscapes(NULL, (CFStringRef)aURL, (CFStringRef)@"%", NULL, kCFStringEncodingUTF8);
    [URL autorelease];
	NSURL *finalURL = [NSURL URLWithString:URL];
    [[self formDataRequest] cancel];
    [self setFormDataRequest:[ASIFormDataRequest requestWithURL:finalURL]];
    for (NSString *key in params.allKeys) {
        [[self formDataRequest] setPostValue:[params objectForKey:key] forKey:key];
    }
    [[self formDataRequest] setData:data withFileName:@"avatar.jpg" andContentType:@"image/jpeg" forKey:@"pic"];
    
    [[self formDataRequest] setDelegate:self.modelDelegate];
    [[self formDataRequest] setDidFinishSelector:httpRequestSucceed];
    [[self formDataRequest] setDidFailSelector:httpRequestFailed];
    
    [[self formDataRequest] startAsynchronous];
    
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
}

@end
