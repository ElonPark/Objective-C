//
//  ViewController.m
//  Test02_4
//
//  Created by Nebula on 2015. 9. 21..
//  Copyright © 2015년 Nebula. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonTouch:(id)sender {
    NSString *str = [_textField text];
    NSURLRequest *requset =
    [NSURLRequest requestWithURL:[NSURL URLWithString:str]];
    [_webView loadRequest:requset];
}
@end
