//
//  ChatViewCell.h
//  uMessageApp
//
//  Created by Broad_102-12 on 2015. 12. 7..
//  Copyright (c) 2015년 201116041_ParkSungWoon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChatViewCell : UITableViewCell

@property(nonatomic, retain) IBOutlet UILabel *pTimeView;            // 대화 시간
@property(nonatomic, retain) IBOutlet UITextView *pContextView;      // 대화 내용
@property(nonatomic, retain) IBOutlet UIImageView *pBackImageView;

@end
