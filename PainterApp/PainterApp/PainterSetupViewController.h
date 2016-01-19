//
//  PainterSetupViewController.h
//  PainterApp
//
//  Created by Nebula on 2015. 11. 8..
//  Copyright © 2015년 Nebula. All rights reserved.
//


#import <UIKit/UIKit.h>
@protocol PainterSetupViewDelegate;
@interface PainterSetupViewController : UIViewController


@property(weak, nonatomic) IBOutlet UIView *colorPreView;
@property(weak, nonatomic) IBOutlet UISlider *redBar;
@property(weak, nonatomic) IBOutlet UISlider *greenBar;
@property(weak, nonatomic) IBOutlet UISlider *blueBar;
@property(weak, nonatomic) IBOutlet UISlider *widthBar;


@property (unsafe_unretained) id <PainterSetupViewDelegate> delegate;

-(IBAction)PushBackClick;
-(IBAction)ValueChange:(id)sender;

@end


@protocol PainterSetupViewDelegate<NSObject>

- (void)painterSetupViewController:(PainterSetupViewController *)
controller setColor:(UIColor *)color;
- (void)painterSetupViewController:(PainterSetupViewController *)
controller setWidth:(float)width;
@end
