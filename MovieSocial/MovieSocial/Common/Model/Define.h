//
//  Define.h
//  MovieSocial
//
//  Created by Apple on 13-12-25.
//  Copyright (c) 2013年 Apple. All rights reserved.
//

//定义屏幕
#define kScreenBounds          [[UIScreen mainScreen] applicationFrame]

//iPhone5 定义
#define iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)

//判断是否是ios7系统
#define kSystemIsIOS7 [[[UIDevice currentDevice] systemVersion] floatValue] >= 7

//appStore 地址
#define kAppStore               @"https://itunes.apple.com/us/app/mei-zhuang-wen-da/id762139320?ls=1&mt=8"

//评分
#define kAppStoreReview         @"itms-apps://ax.itunes.apple.com/WebObjects/MZStore.woa/wa/viewContentsUserReviews?type=Purple+Software&id=762139320"

//评分for ios 7
#define kAppStoreReviewForIos7  @"itms-apps://itunes.apple.com/app/i762139320"

//版本检查
#define kCheckVersion           @"http://wenda.hers.com.cn/mobile/ios_version"

#pragma mark---
#pragma mark--- QQLogin

#define qqAppKey             @"100584329"  //AppID

#define kGifView                    @"gifInfo"                      //登录后返回到登录页面时gif动画重新加载
#define kGetUserInfoResponse        @"getUserInfoResponse"          //获取登录用户个人信息
#define kGetBindUserInfoResponse    @"getBindUserInfoResponse"      //获取设置绑定用户个人信息
#define kGetShareUserInfoResponse   @"getShareUserInfoResponse"     //获取分享绑定用户个人信息
#define kGetSynUserInfoResponse     @"getSynUserInfoResponse"       //获取同步绑定用户个人信息
#define kGetInviteUserInfoResponse  @"getInviteUserInfoResponse"    //获取邀请好友绑定用户个人信息
#define kResponse                   @"kResponse"                    //获取用户个人信息回调key值
#define kUpdateLastedQusetionCount  @"kUpdateLastedQusetionCount"   //更新最新提问数量
#define kShowNewestNumber           @"kShowNewestNumber"            //展示最新提问数的条数

#pragma mark---
#pragma mark---SinaLogin

#define kAppKey          @"2531069770"      //新浪微博AppKey
#define kSinaScheme      @"wb2531069770"    //新浪微博APPSecret
#define kRedirectURI     @"http://bbs.hers.com.cn/xwb.php?m=xwbAuth.authCallBack" //@"http:
#define kAppSecret       @"a038b541ba296b4a8494a229cf092a92" //美妆客户端 appSecret bc2bac2e35da7d24f739006b83c769a3

#pragma mark
#pragma mark -- Third CallBack 通知

#define kOAuthPrivateKey         @"hers.wenda.mobile.key"   //登录秘钥 md5 key

#define kSinaServeLogin          @"sinaServeLogin"          //sina登录回调

#define kSinaServeBind           @"sinaServeBind"           //sina设置视图绑定回调

#define kSinaShareBind           @"sinaShareBind"           //sina分享绑定回调

#define kSinaSynBind             @"sinaSynBind"             //sina同步绑定回调

#define kSinaInvitedBind         @"sinaInvitedBind"         //sina邀请好友绑定回调

#define kQQBindSuccessed         @"qqBindSuccessed"         //qq设置视图绑定成功回调

#define kQQBindFailed            @"qqBindFailed"            //qq设置视图绑定失败回调

#define kQQShareBindSuccessed    @"qqShareBindSuccessed"    //qq分享绑定成功回调

#define kQQShareBindFailed       @"qqShareBindFailed"       //qq分享绑定失败回调

#define kQQInviteBindSuccessed   @"qqInviteBindSuccessed"   //qq邀请好友分享绑定成功回调

#define kQQInviteBindFailed      @"qqInviteBindFailed"      //qq邀请好友分享绑定失败回调

#define kTencentSynBindSuccessed @"tencentSynBindSuccessed" //qq同步绑定成功回调

#define kTencentSynBindFailed    @"tencentSynBindFailed"    //qq同步绑定失败回调

#define kLoginSuccessed          @"qqLoginSuccessed"        //qq登录成功回调

#define kLoginFailed             @"qqLoginFailed"           //qq登录失败回调

#define kChangeInvitedFriendsNum @"changeNum"               //邀请好友的数目更改

#define kAddLoginView         @"toAddLoginView"       //移除登录视图


#define kRemoveLoginView         @"toRemoveLoginView"       //移除登录视图

#define kGetLoginUserInfo        @"getLoginUserInfo"        //拿到登录用户信息


#pragma --mark ============== 统计相关 ==============

//应用首次启动
#define kApplicationInitial     @"http://push.hers.cn/record/initial?app=iphone&type=5&uid=%@&source=%@&version=%@&os=%@&md5=%@"
//应用启动
#define kApplicationRun         @"http://push.hers.cn/record/run?app=iphone&type=5&uid=%@&source=%@&version=%@&os=%@&md5=%@"

//应用停止
#define kApplicationStop        @"http://push.hers.cn/record/stop?app=iphone&type=5&uid=%@&md5=%@"

//应用挂起
#define kApplicationBack        @"http://push.hers.cn/record/back?app=iphone&type=5&uid=%@&md5=%@"

//应用激活
#define kApplicationFront       @"http://push.hers.cn/record/front?app=iphone&type=5&uid=%@&md5=%@"

//统计事件
#define kCountEvents            @"http://push.hers.cn/record/event?app=iphone&type=5&uid=%@&event=%@&md5=%@"

#pragma --mark ============== 接口数据请求 ==============

//定义请求数据长度
#define kCount @"10"

//首页 最新
#define kHomePageNeweest        @"http://wenda.hers.com.cn/mobile/questions?type=%@&page=%@&pagesize=%@"

//首页的最热 关注 抢答
#define kHomePageOtherThree     @"http://wenda.hers.com.cn/mobile/questions?type=%@&page=%@&pagesize=%@"

//问题详情
#define kQuestionDetail         @"http://wenda.hers.com.cn/mobile/question?id=%@&page=%@&pagesize=%@"

//取消对问题赞
#define kCancleVoteTheQuestion  @"http://wenda.hers.com.cn/mobile/unvote?id=%@"

//对问题赞
#define kVoteTheQuestion        @"http://wenda.hers.com.cn/mobile/vote?id=%@"

//收藏接口
#define kStoreQuestion          @"http://wenda.hers.com.cn/mobile/collect?id=%@"

//取消收藏接口
#define kCancelStoreQuestion    @"http://wenda.hers.com.cn/mobile/uncollect?id=%@"

//个人主页
#define kProfile                @"http://wenda.hers.com.cn/mobile/profile?uid=%@"

//编辑个人资料
#define kModifyProfile          @"http://wenda.hers.com.cn/mobile/update_profile"

//回答问题
#define kAnswerQuestion         @"http://wenda.hers.com.cn/mobile/answer"

//提问问题
#define kAskQuestion            @"http://wenda.hers.com.cn/mobile/ask"

//第三方登录
#define kThirdLogin             @"http://wenda.hers.com.cn/mobile/login?type=%@"

//第三方互绑
#define kThirdBind              @"http://wenda.hers.com.cn/mobile/bind?target=%@"

//第三方退出
#define kThirdLoginout          @"http://wenda.hers.com.cn/mobile/logout"

//返回个人信息
#define kReturnUserInfo         @"http://wenda.hers.com.cn/mobile/account"

//解绑
#define kRemoveBind             @"http://wenda.hers.com.cn/mobile/unbind"

//返回微博好友列表
#define kSinaFriendsList        @"http://wenda.hers.com.cn/mobile/weibofriends?page=%@&pagesize=%@"

//新浪微博好友邀请
#define kSinaFriendsInvite      @"http://wenda.hers.com.cn/mobile/weiboinvite?sinaids=%@"

//QQ或者微信好友邀请
#define kQQOrWeixinFriendsInvite @"http://wenda.hers.com.cn/mobile/txinvite?type=%@"

//财富榜
#define kTotalWealth            @"http://wenda.hers.com.cn/mobile/wealth?type=%@"

//金币详情
#define kCoinsDetail            @"http://wenda.hers.com.cn/mobile/coindetail"

//个人消息
#define kMessages               @"http://wenda.hers.com.cn/mobile/messages?page=%@&pagesize=%@"

//我的提问
#define kMyQuestions            @"http://wenda.hers.com.cn/mobile/myquestions?page=%@&pagesize=%@"

//我的回答
#define kMyAnswers              @"http://wenda.hers.com.cn/mobile/myanswers?page=%@&pagesize=%@"

//我的赞同
#define kMyLover                @"http://wenda.hers.com.cn/mobile/myvotes?page=%@&pagesize=%@"

//赞同我的
#define kLoverMe                @"http://wenda.hers.com.cn/mobile/myvoted?page=%@&pagesize=%@"

//最新提问数量
#define kNewestCount            @"http://wenda.hers.com.cn/mobile/newcount?lastid=%@"

