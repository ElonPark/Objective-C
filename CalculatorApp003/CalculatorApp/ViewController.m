//
//  ViewController.m
//  CalculatorApp
//
//  Created by Broad_102-12 on 2015. 10. 5..
//  Copyright (c) 2015년 Broad_102-12. All rights reserved.
//
#import "ViewController.h"

@implementation ViewController

@synthesize  curValue;
@synthesize totalCurValue;
@synthesize curStatusCode;
@synthesize  displayLabel;

- (void)viewDidLoad {
    [self ClearCalcu];
    [super viewDidLoad];
    [_imageView setImage:[UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"logo" ofType:@"gif"]]];
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

-(void)ClearCalcu
{
    curInputValue = @"";
    curValue = 0;
    totalCurValue = 0;
    
    [self DisplayInputValue:curInputValue];
    
    curStatusCode = STATUS_DEFAULT;
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
        
        r.location = 0;
        r.length = pointRange.location;
        integerString = [data substringWithRange:r];
    }
    
    NSRange minusRange = [integerString rangeOfString:@"-"];
    if (minusRange.location != NSNotFound) {
        minusString = @"-";
        integerString = [integerString stringByReplacingOccurrencesOfString:@"-" withString:@""];
    }
    
    NSMutableString *integerStringCommaInserted = [[NSMutableString alloc] init];
    long integerStringLength = [integerString length];
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
    NSString *numPoint= [[sender titleLabel]text];
    curInputValue = [curInputValue stringByAppendingString:numPoint];
    [self DisplayInputValue:curInputValue];
}

-(IBAction)operationPressed:(UIButton *)sender
{
    
    NSString *operationText = [[sender titleLabel]text];
    
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
        [self Calculation:curStatusCode CurStatusCode:STATUS_RETURN];
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
        case STATUS_RETURN:
            
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
