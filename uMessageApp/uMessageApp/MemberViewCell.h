//
//  MemberViewCell.h
//  uMessageApp
//
//  Created by Broad_102-12 on 2015. 12. 7..
//  Copyright (c) 2015년 201116041_ParkSungWoon. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface MemberViewCell : UITableViewCell

@property(weak, nonatomic) IBOutlet UIImageView *pImageView;
@property(weak,nonatomic) IBOutlet UILabel *pNameView;
@property(weak,nonatomic) IBOutlet UILabel *pContextView;
@property(weak,nonatomic) IBOutlet UIImageView *pBackImageView;


@end
