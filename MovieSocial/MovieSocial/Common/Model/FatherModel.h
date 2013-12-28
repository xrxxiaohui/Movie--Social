//
//  FatherModel.h
//  MovieSocial
//
//  Created by Apple on 13-12-25.
//  Copyright (c) 2013年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ASIFormDataRequest.h"
#import "ASIDownloadCache.h"
#import "JSON.h"

@interface FatherModel : NSObject

@property (nonatomic,retain) id modelDelegate;
@property (nonatomic,retain) NSOperationQueue *queue;
@property (nonatomic,retain) ASIHTTPRequest *request;
@property (nonatomic,retain) ASIFormDataRequest *formDataRequest;

- (id)initWithDelegate:(id)delegate;

- (void)cancel; 

- (void)get:(NSString*)aURL 
httpRequestSuccess:(SEL)httpRequestSucceed 
httpRequestFailed:(SEL)httpRequestFailed;


//普通post数据用的
-(void)post:(NSString*)aURL 
 dataString:(NSString*)dataString
httpRequestSuccess:(SEL)httpRequestSucceed
httpRequestFailed:(SEL)httpRequestFailed;

//普通post数据用的
-(void)post:(NSString*)aURL 
     params:(NSDictionary *) params
httpRequestSuccess:(SEL)httpRequestSucceed
httpRequestFailed:(SEL)httpRequestFailed;


//传图片用的
- (void)post:(NSString*)aURL 
        data:(NSData*)data 
 extraParams:(NSDictionary *) params
httpRequestSuccess:(SEL)httpRequestSucceed
httpRequestFailed:(SEL)httpRequestFailed;

//传图片用的
- (void)post:(NSString*)aURL 
   dataArray:(NSArray *)data 
 extraParams:(NSDictionary *)params
httpRequestSuccess:(SEL)httpRequestSucceed
httpRequestFailed:(SEL)httpRequestFailed;
//今日私服发布 传图片用的
- (void)post1:(NSString*)aURL
         data:(NSData *)data
  extraParams:(NSDictionary *) params
httpRequestSuccess:(SEL)httpRequestSucceed
httpRequestFailed:(SEL)httpRequestFailed;

@end
