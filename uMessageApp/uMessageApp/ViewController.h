//
//  ViewController.h
//  uMessageApp
//
//  Created by Broad_102-12 on 2015. 12. 7..
//  Copyright (c) 2015년 201116041_ParkSungWoon. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MemberListViewController;
@class SetupViewController;

@interface ViewController : UITabBarController < UITabBarControllerDelegate>

-(void)LogIn:(NSString *)pUserID  PassWord:(NSString *)pPass;

@property (strong, nonatomic) MemberListViewController *pMemberListViewController;
@property (strong, nonatomic) SetupViewController      *pSetupViewController;
@property (strong, nonatomic) NSString      *UserID;
@end

