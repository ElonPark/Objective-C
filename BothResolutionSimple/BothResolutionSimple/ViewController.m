//
//  ViewController.m
//  BothResolutionSimple
//
//  Created by Nebula_MAC on 2016. 1. 19..
//  Copyright © 2016년 Nebula_MAC. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	
	NSString *nibName;
	if ([[UIScreen mainScreen]bounds].size.height == 568) {
		nibName = [nibNameOrNil stringByAppendingString:@"568h"];
	}else {
		nibName = nibNameOrNil;
		self = [super initWithNibName:nibName bundle:nibBundleOrNil];
		if (self) {
			
		}
	}
	return self;
}
- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
