//
//  SetupViewController.h
//  uMessageApp
//
//  Created by Broad_102-12 on 2015. 12. 7..
//  Copyright (c) 2015년 201116041_ParkSungWoon. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface SetupViewController : UIViewController


-(IBAction) LogIn;     // 로그인 요청

@property(weak, nonatomic) IBOutlet UITextField  *pUserIDField;
@property(weak, nonatomic) IBOutlet UITextField  *pPassField;

@property(strong, nonatomic) ViewController *pRootViewController;

@end
