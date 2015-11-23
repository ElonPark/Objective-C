//
//  ViewController.h
//  ImageViewTest001
//
//  Created by Nebula on 2015. 9. 17..
//  Copyright © 2015년 Nebula. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UISwitch *switchButton;
- (IBAction)switchTouch:(id)sender;


@end

