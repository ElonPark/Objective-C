//
//  ViewController.m
//  CalculatorApp002
//
//  Created by Nebula on 2015. 9. 28..
//  Copyright © 2015년 Nebula. All rights reserved.
//

#import "ViewController.h"



@implementation ViewController

@synthesize curValue;
@synthesize totalCurValue;
@synthesize curStatusCode;
@synthesize displayLabel;
@synthesize displayInput;

- (void)viewDidLoad {
    [self ClearCalcu];
    [super viewDidLoad];
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(BOOL)shouldAutorotate
{
    return YES;
}

-(NSUInteger) supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

-(void)DisplayInputValue:(NSString*)displayText
{
    NSString *CommaText;
    CommaText = [self ConvertComma:displayText];
    [displayLabel setText:CommaText];
}

-(void)DisplayCalculationValue
{
    NSString *displayText;
    displayText = [NSString stringWithFormat:@"%g", totalCurValue];
    [self DisplayInputValue:displayText];
    curInputValue = @"";
}

-(void)DisplayInput:(NSString*)appendText //위쪽 라벨에 글을 추가하는 메소드
{
   NSMutableString *addText = [[NSMutableString alloc]initWithString:@""];
  [addText appendString:appendText];
        //[displayInput setText:addText];
    displayInput.text = [NSString stringWithFormat:@"%@%@", displayInput.text, addText];
    
}

-(void)ClearCalcu
{
    curInputValue = @"";
    curValue = 0;
    totalCurValue = 0;
    
    [self DisplayInputValue:curInputValue];
    curStatusCode = STATUS_DEFAULT;
    [displayInput setText:@""];
}

-(NSString*)ConvertComma:(NSString*)data
{
    
    if (data == nil) {
        return nil;
    }
    if ([data length] <= 3) {
        return data;
    }
    
    
    NSString *integerString = nil;
    NSString *floatString = nil;
    NSString *minusString = nil;
    
    NSRange pointRange = [data rangeOfString:@"."];
    if (pointRange.location == NSNotFound) {
        integerString = data;
    }else
    {
        NSRange r;
        r.location = pointRange.location;
        r.length = [data length] - pointRange.location;
        floatString = [data substringWithRange:r];
        
        r.location =0;
        r.length = pointRange.location;
        integerString = [data substringWithRange:r];
    }
    
    NSRange minusRange = [integerString rangeOfString:@"-"];
    if (minusRange.location != NSNotFound) {
        minusString = @"-";
        integerString = [integerString stringByReplacingOccurrencesOfString:@"-" withString:@""];
    }
    
    NSMutableString *integerStringCommaInserted = [[NSMutableString alloc] init];
    int integerStringLength = [integerString length];
    int idx = 0;
    
    while (idx < integerStringLength) {
        [integerStringCommaInserted appendFormat:@"%C", [integerString characterAtIndex:idx]];
        
        if ((integerStringLength - (idx + 1)) %3 == 0 && integerStringLength != (idx + 1)) {
            [integerStringCommaInserted appendString:@","];
        }
        idx++;
    }
    
    NSMutableString *returnString = [[NSMutableString alloc]init];
    if (minusString != nil) {
        [returnString appendString:minusString];
    }
    if (integerStringCommaInserted != nil) {
        [returnString appendString:integerStringCommaInserted];
    }
    if (floatString != nil) {
        [returnString appendString:floatString];
    }
    
    return returnString;
}


-(IBAction)digitPressed:(UIButton*)sender
{
    NSString *numPoint = [[sender titleLabel]text];
    curInputValue = [curInputValue stringByAppendingFormat:numPoint];
    [self DisplayInputValue:curInputValue];
    [self DisplayInput:numPoint];
    
    }

-(IBAction)operationPressed:(UIButton *)sender
{
    
    NSString *operationText = [[sender titleLabel]text];
    [self DisplayInput:operationText];
    
    if ([@"+" isEqualToString:operationText]) {
        [self Calculation:curStatusCode CurStatusCode:STATUS_PLUS];
    }
    else if ([@"-" isEqualToString:operationText])
    {
        [self Calculation:curStatusCode CurStatusCode:STATUS_MINUS];
    }
    else if ([@"X" isEqualToString:operationText])
    {
        [self Calculation:curStatusCode CurStatusCode:STATUS_MULTIPLY];
    }
    else if ([@"/" isEqualToString:operationText])
    {
        [self Calculation:curStatusCode CurStatusCode:STATUS_DIVISION];
    }
    else if ([@"C" isEqualToString:operationText])
    {
        [self ClearCalcu];
    }
    else if ([@"=" isEqualToString:operationText])
    {
    [self DisplayInput:@" "];

        [self Calculation:curStatusCode CurStatusCode:STATUS_RETURN];
        NSString *displayText;
        displayText = [NSString stringWithFormat:@"%g", totalCurValue];
        [self DisplayInput:displayText];
    

    }
    


}


-(void)Calculation:(kStatusCode)StatusCode CurStatusCode:(kStatusCode)cStatusCode;
{
    switch (StatusCode) {
        case STATUS_DEFAULT:
            [self DefaultCalcu];
            break;
        case STATUS_DIVISION:
            [self DivisionCalcu];
            break;
        case STATUS_MULTIPLY:
            [self MultiplyCalcu];
            break;
        case STATUS_MINUS:
            [self MinusCalcu];
            break;
        case STATUS_PLUS:
            [self PlusCalcu];
            break;
            }
    curStatusCode = cStatusCode;
}
//
-(void)DefaultCalcu
{
    curValue = [curInputValue doubleValue];
    totalCurValue = curValue;
    
    [self DisplayCalculationValue];
}
-(void)PlusCalcu
{
    curValue = [curInputValue doubleValue];
    totalCurValue = totalCurValue + curValue;
    
    [self DisplayCalculationValue];
}
-(void)MinusCalcu
{
    curValue = [curInputValue doubleValue];
    totalCurValue = totalCurValue - curValue;
    
    [self DisplayCalculationValue];
}
-(void)MultiplyCalcu
{
    curValue = [curInputValue doubleValue];
    totalCurValue = totalCurValue * curValue;
    
    [self DisplayCalculationValue];
}
-(void)DivisionCalcu
{
    curValue = [curInputValue doubleValue];
    totalCurValue = totalCurValue / curValue;
    
    [self DisplayCalculationValue];
}






@end
