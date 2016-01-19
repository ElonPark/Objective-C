//
//  ViewController.h
//  PainterApp
//
//  Created by Nebula on 2015. 11. 8..
//  Copyright © 2015년 Nebula. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PointData.h"
#import "MainPainterView.h"
#import "PainterSetupViewController.h"


@interface ViewController : UIViewController<PainterSetupViewDelegate>
{
    PainterSetupViewController * pPainterSetupViewController;
    
}


-(IBAction)PenClick;        //  Pen Type
-(IBAction)LineClick;       // Line Type
-(IBAction)CircleClick;     // Circle Type
-(IBAction)EraseClick;      // 지우개 Type
-(IBAction)RectangleClick; // 사각형 Type
-(IBAction)SetupClick;      // 설정화면으로 전환

@end


