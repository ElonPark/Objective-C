//
//  NetWorkController.h
//  TextMessager
//
//  Created by Nebula_MAC on 2015. 12. 13..
//  Copyright © 2015년 Nebula_MAC. All rights reserved.
//

#import <UIKit/UIKit.h>



@class MemberListViewController;
@class ChatViewController;

@interface NetWorkController : UIViewController
{
    
    NSString *pMyUserID;
    
    NSMutableArray *pChatData;            // 송수신된 메시지 정보
    NetWorkController *pNetWorkController;
    ChatViewController  *pChatViewController;
    
    CFSocketRef pSocket;
    CFRunLoopSourceRef pRunSource;
    
    NSMutableData *pReturnData;     // 수신된 데이터
    int pStatus;      // 현재 상태변수
    int pChatTargetIndex;
}

@property(nonatomic, strong) UITableView *pListView;

@property(nonatomic, retain) NSMutableArray * pChatData;
@property(nonatomic, retain) NetWorkController * pNetWorkController;
@property(nonatomic, retain)  NSMutableData *pReturnData;
@property(nonatomic, retain)  ChatViewController  *pChatViewController;
@property(nonatomic, retain)  NSString *pMyUserID;


@property(nonatomic, assign) int pStatus;


-(void)setMyUserInformation:(NSString *)strUserID;
-(void)getServerConnect;
-(void)SendChatTextCommand;
-(void)SendReqvCommand:(int)index;
@end
