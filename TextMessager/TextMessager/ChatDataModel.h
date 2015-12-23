//
//  ChatDataModel.h
//  TextMessager
//
//  Created by Nebula_MAC on 2015. 12. 13..
//  Copyright © 2015년 Nebula_MAC. All rights reserved.
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
