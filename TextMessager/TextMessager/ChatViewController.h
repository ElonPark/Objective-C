//
//  ChatViewController.h
//  TextMessager
//
//  Created by Nebula_MAC on 2015. 12. 13..
//  Copyright © 2015년 Nebula_MAC. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NetWorkController;

@interface ChatViewController : UIViewController <UITextViewDelegate>

    //대화 내용을 보여주는 테이블의 참조 객체
@property(weak, nonatomic) IBOutlet UITableView *pChatListView;
    //대화 내용 입력 참조 객체
@property(weak, nonatomic) IBOutlet UITextView *pTextView;
    //도움말 참조 객체
@property(weak, nonatomic) IBOutlet UIView *pBackView;
@property(strong, retain) NetWorkController *pNetWorkController;
@property (strong, nonatomic) IBOutlet UIButton *pButton;

-(IBAction)sendText;
-(IBAction)CloseClick;


@end
