//
//  ChatViewCell.h
//  TextMessager
//
//  Created by Nebula_MAC on 2015. 12. 13..
//  Copyright © 2015년 Nebula_MAC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChatViewCell : UITableViewCell

@property(weak, nonatomic) IBOutlet UILabel *pTimeView; //대화 시간
@property(weak, nonatomic) IBOutlet UITextView *pContextView; //대화 내용
@property(weak, nonatomic) IBOutlet UIImageView *pBackImageView;


@end
