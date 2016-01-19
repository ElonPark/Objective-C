//
//  NetWorkController.h
//  uMessageApp
//
//  Created by Broad_102-12 on 2015. 12. 7..
//  Copyright (c) 2015년 201116041_ParkSungWoon. All rights reserved.
//

#import <UIKit/UIKit.h>

//#import "CharDataBase.h"


@class MemberListViewController;
@class CharViewController;

@interface NetWorkController : UIViewController
{
    
    NSString *pMyUserID;
    NSString *pMyPassword;
    
    NSMutableArray *pMemeberListdata;     // 전체 회원정보 리스트
    NSMutableArray *pChatData;            // 송수신된 메시지 정보
  //  ChatDataBase *pDataBase;            // 데이터베이스 제어 클래스
    NetWorkController *pNetWorkController;
    MemberListViewController *pMemberListViewController;
    CharViewController  *pCharViewController;
    
    CFSocketRef pSocket;
    CFRunLoopSourceRef pRunSource;
    
    NSMutableData *pReturnData;     // 수신된 데이터
    int pStatus;      // 현재 상태변수
    int pChatTargetIndex;
}

@property(nonatomic, strong) UITableView *pListView;

@property(nonatomic, retain) NSMutableArray * pMemeberListdata;
@property(nonatomic, retain) NSMutableArray * pChatData;
@property(nonatomic, retain) NetWorkController * pNetWorkController;
@property(nonatomic, retain)  NSMutableData *pReturnData;
@property(nonatomic, retain)  MemberListViewController *pMemberListViewController;
@property(nonatomic, retain)  CharViewController  *pCharViewController;
@property(nonatomic, retain)  NSString *pMyUserID;
@property(nonatomic, retain)  NSString *pMyPassword;


@property(nonatomic, assign) int pStatus;


-(void)setMyUserInformation:(NSString *)strUserID PassWord:(NSString *) strPassWord;
-(void)getServerConnect;
//-(void)SendLoginCommand;
//-(void)SendListCommand;
-(void)SendChatTextCommand;
//-(void)SendChatText;
//-(void)ReceiveChatText:(NSString *) strMessage;
-(void)SendReqvCommand:(int)index;
//-(void)ReceiveReqvCommand:(NSString *)strMessage;
//-(void)startChart;
//-(void)SendDataString:(NSString *)strMessage;
//-(void)setMemberList:(NSString *)strMessage;
//-(void)setMemberInfomation:(NSArray *)memberInfo;
//- (int)searchUserID:(NSString *) str;
//-(void)addChatMessage:(NSString *)strMessage DisTime:(NSString *) time forDirection:(bool)derection ReLoadData:(bool)forRefresh;
//-(NSString *)getTime;
@end
