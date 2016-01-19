//
//  ViewController.h
//  CalculatorApp
//
//  Created by Nebula on 2015. 9. 26..
//  Copyright © 2015년 Nebula. All rights reserved.
//

#import <UIKit/UIKit.h>

//현재 상태에 대한 열거형 선언
typedef enum{
    STATUS_DEFAULT = 0,
    STATUS_DIVISION,
    STATUS_MULTIPLY,
    STATUS_MINUS,
    STATUS_PLUS,
    STATUS_RETURN
    
}kStatusCode;

@interface ViewController : UIViewController{
    
    double curValue; //현재 입력된 값을 저장하는 프로퍼티
    double totalCurValue; //최종 계산 값을 저장하는 프로터피
    NSString *curInputValue; //현재 입력된 문자열을 저장하는 프로퍼티
    kStatusCode curStatusCode;
    
}

//숫자 버튼을 클릭할 경우 발생하는 이벤트를 처리하는 메서드
-(IBAction)digitPressed:(UIButton *)sender;

//기능 버튼을 클릭할 경우 발생하는 이벤트를 처리하는 메서드
-(IBAction)operationPressed:(UIButton *)sender;

    @property Float64 curValue; //현재 입력된 값을 프로퍼티로 선언
    @property Float64 totalCurValue; //최종 결과값을 프로퍼티로 선언
    @property kStatusCode curStatusCode; //현재 상태를 저장하는 값을 프로퍼티로 선언

//표시 Label을 참조하기 위한 아웃렛 선언
@property(weak, nonatomic)IBOutlet UILabel *displayLabel;

@end

