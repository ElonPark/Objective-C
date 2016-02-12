//
//  MemberLisDataModel.h
//  uMessageApp
//
//  Created by Broad_102-12 on 2015. 12. 7..
//  Copyright (c) 2015년 201116041_ParkSungWoon. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface MemberLisDataModel : NSObject
{
    NSString *pUserName;
    NSString *pContext;
    NSString *pUserID;
    UIImage *pUserImage;
    
}
@property(nonatomic, copy) NSString *pUserName;
@property(nonatomic, copy) NSString *pContext;
@property(nonatomic, retain) NSString *pUserID;
@property(nonatomic, retain) UIImage *pUserImage;

@end
