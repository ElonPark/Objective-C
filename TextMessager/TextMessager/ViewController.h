//
//  ViewController.h
//  TextMessager
//
//  Created by Nebula_MAC on 2015. 12. 13..
//  Copyright © 2015년 Nebula_MAC. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ChatViewController;
@class NetWorkController;

@interface ViewController : UIViewController
{
    ChatViewController *pChatViewController;
    NetWorkController *pNetWorkController;
}



-(IBAction)Login; //로그인 요청
-(void)ChatViewShow; //대화 화면 전환
-(void)ServerConnect:(NSString *)pUserID;
@property(strong, nonatomic) NSString *UserID;
@property(weak, nonatomic)IBOutlet UITextField *pUserIDField;
@property(strong, nonatomic)NetWorkController *pNetWorkController;
@property(strong, nonatomic)ChatViewController *pChatViewController;

@end

