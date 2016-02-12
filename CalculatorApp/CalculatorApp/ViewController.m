//
//  ViewController.m
//  CalculatorApp
//
//  Created by Nebula on 2015. 9. 26..
//  Copyright © 2015년 Nebula. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize curValue;
@synthesize totalCurValue;
@synthesize curStatusCode;
@synthesize displayLabel;

//리소스를 초기화하거나 초기화면을 구성할때 사용함
- (void)viewDidLoad {
    
    [self ClearCalculation];//계산기 화면을 초기화 할때 사용
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];//메모리가 부족할대 사용
    // Dispose of any resources that can be recreated.
}

-(BOOL)shouldAutorotate{ //화면 회전할때 사용
    return YES;
}
-(NSUInteger)supportedIntegerfaceOrientations{
    
    return UIInterfaceOrientationMaskPortrait;
}


//라벨에 문자열을 출력하는 메소드
-(void)DisplayInputValue:(NSString *)displayText
{
    NSString *CommaText;
    CommaText = [self ConvertComma:displayText];
    [displayLabel setText:CommaText];
}

//계산 결과를 화면에 출력
-(void)DisplayCalculationValue{
    NSString *displayText;
    displayText = [NSString stringWithFormat:@"%g", totalCurValue];
    [self DisplayInputValue:displayText];
    curInputValue = @"";
}

//계산기를 초기화
-(void)ClearCalculation{
    curInputValue = @"";
    curValue = 0;
    totalCurValue = 0;
    
    [self DisplayInputValue:curInputValue];
    
    curStatusCode = STATUS_DEFAULT;
}

//천 단위마다 ','가 추가됨
-(NSString *) ConvertComma:(NSString *)data
{
    
    if(data == nil) {
        return nil;
    }
    if ([data length] <= 3) {
        return data;
    }
    
    NSString *integerString = nil;
    NSString *floatString = nil;
    NSString *minusString = nil;
    
    //소수점을 찾음
    NSRange pointRange = [data rangeOfString:@"."];
    if (pointRange.location == NSNotFound) {
        //소수점이 없을때
        integerString = data;
    }
    else{
        //소수점 이하 영역을 찾음
        NSRange r;
        r.location = pointRange.location;
        r.length = [data length] - pointRange.location;
        floatString = [data substringWithRange:r];
        
        //정수부 영역을 찾음
        r.location = 0;
        r.length = pointRange.location;
        integerString = [data substringWithRange:r];
    }
    
    //음수 부호를 찾음
    NSRange minusRange = [integerString rangeOfString:@"-"];
    if (minusRange.location != NSNotFound) { //음수 부호가 있을때
        minusString = @"-";
        integerString  = [integerString stringByReplacingOccurrencesOfString:@"-" withString:@""];
    }
    
    //세 자리 단위로 콤마를 찍음
    NSMutableString *integerStringCommaInserted = [[NSMutableString alloc] init];
    long integerStringLength = [integerString length];
    int idx = 0;
    while (idx < integerStringLength) {
        [integerStringCommaInserted appendFormat:@"%C", [integerString characterAtIndex:idx]];
        
        if ((integerStringLength - (idx + 1)) % 3 == 0 && integerStringLength != (idx +1))
        {
            [integerStringCommaInserted appendString:@","];
        }
        idx++;
    }
    
    NSMutableString *returnString = [[NSMutableString alloc] init];
    
    if (minusString  != nil) {
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


//숫자와 소수점 버튼을 누르면 호출되는 메소드
-(IBAction)digitPressed:(UIButton *)sender
{
    NSString *numPoint = [[sender titleLabel] text];
    curInputValue = [curInputValue stringByAppendingString:numPoint];
    [self DisplayCalculationValue];
}

//기능 버튼을 누르면 호출되는 메소드
-(IBAction)operationPressed:(UIButton *)sender
{
    NSString *operationText = [[sender titleLabel] text];
    
    if ([@"+" isEqualToString:operationText])
    {
        [self Calculation:curStatusCode CurStatusCode:STATUS_PLUS];
    }
    else if([@"-" isEqualToString:operationText])
    {
        [self Calculation:curStatusCode CurStatusCode:STATUS_MINUS];
    }
    else if([@"X" isEqualToString:operationText])
    {
        [self Calculation:curStatusCode CurStatusCode:STATUS_MULTIPLY];
    }
    else if ([@"/" isEqualToString:operationText])
    {
        [self Calculation:curStatusCode CurStatusCode:STATUS_DIVISION];
    }
    else if ([@"C" isEqualToString:operationText])
    {
        [self ClearCalculation];
    }
    else if ([@"=" isEqualToString:operationText])
    {
        [self Calculation:curStatusCode CurStatusCode:STATUS_RETURN];
    }
    
}

//현재 상태에 해당되는 분기 처리 메소드
-(void)Calculation:(kStatusCode)StatusCode CurStatusCode:(kStatusCode)cStatusCode;
{
    switch (STATUS_DEFAULT) {
            
        case STATUS_DEFAULT:
            [self DefaultCaculation];
            break;
        case STATUS_DIVISION:
            [self DivisionCalculation];
            break;
        case  STATUS_MULTIPLY:
            [self MultiplyCalculation];
        case STATUS_MINUS:
            [self MinusCalculation];
        case STATUS_PLUS:
            [self PlusCalculation];
            break;
    }
    curStatusCode = cStatusCode;
}

//초기화 이후 처음 입력된 값에 대한 처리
-(void)DefaultCaculation
{
    curValue = [curInputValue doubleValue];
    totalCurValue = curValue;
    
    [self DisplayCalculationValue];
}

//입력된 값에 대한 덧셈 처리
-(void)PlusCalculation
{
    curValue = [curInputValue doubleValue];
    totalCurValue = totalCurValue + curValue;
    
    [self DisplayCalculationValue];
}

//입력된 값에 대한 뺄셈 처리
-(void)MinusCalculation
{
    curValue = [curInputValue doubleValue];
    totalCurValue = totalCurValue - curValue;
    
    [self DisplayCalculationValue];
}

//입력된 값에 대한 곱셈 처리
-(void)MultiplyCalculation
{
    curValue = [curInputValue doubleValue];
    totalCurValue = totalCurValue * curValue;
    
    [self DisplayCalculationValue];
}

//입력된 값에 대한 나눗셈 처리
-(void)DivisionCalculation
{
    curValue = [curInputValue doubleValue];
    totalCurValue = totalCurValue / curValue;
    
    [self DisplayCalculationValue];
}
@end




