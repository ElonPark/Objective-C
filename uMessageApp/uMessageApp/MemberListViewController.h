//
//  MemberListViewController.h
//  uMessageApp
//
//  Created by Broad_102-12 on 2015. 12. 7..
//  Copyright (c) 2015년 201116041_ParkSungWoon. All rights reserved.
//
#import <UIKit/UIKit.h>

@class CharViewController;
@class NetWorkController;
@interface MemberListViewController : UIViewController
{
//    IBOutlet UITableView *pListView;
    CharViewController *pCharViewController;
    NetWorkController  *pNetWorkController;
    
}


- (void)ChatViewShow;
- (void)ServerConnect:(NSString *)pUserID  PassWord:(NSString *)pPass;

@property(weak, nonatomic) IBOutlet UITableView *pListView;
@property(strong, nonatomic) NetWorkController * pNetWorkController;
@property(strong, nonatomic) CharViewController * pCharViewController;

@end
