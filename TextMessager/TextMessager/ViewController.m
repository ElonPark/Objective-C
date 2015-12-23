//
//  ViewController.m
//  TextMessager
//
//  Created by Nebula_MAC on 2015. 12. 13..
//  Copyright © 2015년 Nebula_MAC. All rights reserved.
//

#import "ViewController.h"
#import "ChatViewController.h"
#import "NetWorkController.h"

@implementation ViewController

@synthesize UserID;
@synthesize pUserIDField;
@synthesize pChatViewController;
@synthesize pNetWorkController;

- (void)viewDidLoad {
    [self NetWorkinit];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)ServerConnect:(NSString *)pUserID
{
    if (pNetWorkController.pStatus) {
        return;
    }
    
        //아이디 설정
    [pNetWorkController setMyUserInformation:UserID];
    [pNetWorkController getServerConnect];//서버 로그인 설정
    
}

-(void)ChatViewShow
{ //대화창으로 화면을 전환
    [self presentViewController:self.pChatViewController animated:YES completion:nil];
}

-(void)NetWorkinit
{
    pNetWorkController = [[NetWorkController alloc]init];
    
    
    if (pChatViewController == nil) { //chat .xib파일을 로드하여 객체를 생성
        pChatViewController = [[ChatViewController alloc]initWithNibName:@"ChatViewController" bundle:nil];
        
        pChatViewController.pNetWorkController = pNetWorkController;
        pNetWorkController.pChatViewController = pChatViewController;
        
    }
}

-(IBAction)Login
{
    [self.pUserIDField resignFirstResponder];
    [self ChatViewShow];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
