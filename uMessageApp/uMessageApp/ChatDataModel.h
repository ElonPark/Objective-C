//
//  ChatDataModel.h
//  uMessageApp
//
//  Created by Broad_102-12 on 2015. 12. 7..
//  Copyright (c) 2015년 201116041_ParkSungWoon. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ChatDataModel : NSObject
{
    NSString *pTime;
    NSString *pContext;
    UIImage *pUserImage;
    BOOL     LeftYN;

    
}
@property(nonatomic, copy) NSString *pTime;
@property(nonatomic, copy) NSString *pContext;
@property(nonatomic, retain) UIImage *pUserImage;
@property(nonatomic, assign) BOOL LeftYN;

@end
