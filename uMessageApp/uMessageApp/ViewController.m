//
//  ViewController.m
//  uMessageApp
//
//  Created by Broad_102-12 on 2015. 12. 7..
//  Copyright (c) 2015년 201116041_ParkSungWoon. All rights reserved.
//

#import "ViewController.h"
#import "MemberListViewController.h"
#import "SetupViewController.h"



@implementation ViewController

@synthesize pMemberListViewController;
@synthesize pSetupViewController;
@synthesize UserID;

- (void)viewDidLoad {
    //ViewController 생성
    
    self.pMemberListViewController = [[MemberListViewController alloc] initWithNibName:@"MemberListViewController" bundle:nil];
                                      
    self.pSetupViewController = [[SetupViewController alloc] initWithNibName:@"SetupViewController" bundle:nil];
    
    self.viewControllers = @[self.pSetupViewController, self.pMemberListViewController];
    self.delegate = self;
    pSetupViewController.pRootViewController = self;
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


-(void)LogIn:(NSString *)pUserID  PassWord:(NSString *)pPass
{
    
    [pMemberListViewController ServerConnect:pUserID  PassWord:pPass];
}


@end
