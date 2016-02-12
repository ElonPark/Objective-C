//
//  AppDelegate.m
//  uMessageApp
//
//  Created by Broad_102-12 on 2015. 12. 7..
//  Copyright (c) 2015년 201116041_ParkSungWoon. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //상단 StatusBar를 안보이게 한다.
    [[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:NO];
    
    
    return YES;
}


@end
