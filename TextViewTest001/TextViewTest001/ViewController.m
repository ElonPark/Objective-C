//
//  ViewController.m
//  TextViewTest001
//
//  Created by Nebula on 2015. 9. 17..
//  Copyright (c) 2015년 Nebula. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [_imageView setImage:[UIImage imageWithContentsOfFile:
                          [[NSBundle mainBundle]pathForResource:
                           @"Photo01"ofType:@"jpe"]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonTouch:(id)sender {
    NSString *str= [_textField text];
    NSURLRequest *request =
    [NSURLRequest requestWithURL:[NSURL URLWithString:str]];
    [_webView loadRequest:request];
}
- (IBAction)inputTextToTextView:(id)sender {
    [_textView setText:[_textField text]];
}
- (IBAction)switchTouch:(id)sender {
    if ([_switchButton isOn]) {
        [_imageView setAlpha:1.0f];
    }
    else
    {
        [_imageView setAlpha:0.0f];
    }
}
@end
