//
//  ViewController.h
//  CalculatorApp
//
//  Created by Broad_102-12 on 2015. 10. 5..
//  Copyright (c) 2015년 Broad_102-12. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    STATUS_DEFAULT = 0,
    STATUS_DIVISION,
    STATUS_MULTIPLY,
    STATUS_MINUS,
    STATUS_PLUS,
    STATUS_RETURN
}kStatusCode;
@interface ViewController : UIViewController{

double curValue;
double totalCurValue;
NSString *curInputValue;
kStatusCode curStatusCode;
}
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
-(IBAction)digitPressed:(UIButton *)sender;
-(IBAction)operationPressed:(UIButton *)sender;

@property Float64 curValue;
@property Float64 totalCurValue;
@property kStatusCode curStatusCode;
@property (weak, nonatomic) IBOutlet UILabel *displayLabel;
@end

