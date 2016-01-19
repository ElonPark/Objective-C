//
//  ViewController.h
//  TextViewTest001
//
//  Created by Nebula on 2015. 9. 17..
//  Copyright (c) 2015년 Nebula. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UISwitch *switchButton;
- (IBAction)switchTouch:(id)sender;
@property (weak, nonatomic) IBOutlet UITextView *textView;
- (IBAction)inputTextToTextView:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textField;

- (IBAction)buttonTouch:(id)sender;



@end

