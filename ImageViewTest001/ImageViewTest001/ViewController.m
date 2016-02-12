//
//  ViewController.m
//  ImageViewTest001
//
//  Created by Nebula on 2015. 9. 17..
//  Copyright © 2015년 Nebula. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [_imageView setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"Photo001" ofType:@"jpg"]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)switchTouch:(id)sender {
    if ([_switchButton isOn]) {
        [_imageView setAlpha:1.0f];
    }
    else{
        [_imageView setAlpha:0.0f];
    }
}
@end
