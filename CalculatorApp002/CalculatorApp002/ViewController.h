//
//  ViewController.h
//  CalculatorApp002
//
//  Created by Nebula on 2015. 9. 28..
//  Copyright © 2015년 Nebula. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum
{
    STATUS_DEFAULT  = 0,
    STATUS_DIVISION,
    STATUS_MULTIPLY,
    STATUS_MINUS,
    STATUS_PLUS,
    STATUS_RETURN
    
}kStatusCode;

@interface ViewController : UIViewController
{
double curValue;
double totalCurValue;
NSString *curInputValue;
kStatusCode curStatusCode;
}

-(IBAction)digitPressed:(UIButton*)sender;
-(IBAction)operationPressed:(UIButton*)sender;

@property Float64 curValue;
@property Float64 totalCurValue;
@property kStatusCode curStatusCode;

@property(weak, nonatomic) IBOutlet UILabel *displayLabel;
@property(weak, nonatomic) IBOutlet UILabel *displayInput;
@end

