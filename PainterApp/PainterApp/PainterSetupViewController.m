//
//  PainterSetupViewController.m
//  PainterApp
//
//  Created by Nebula on 2015. 11. 8..
//  Copyright © 2015년 Nebula. All rights reserved.
//

#import "PainterSetupViewController.h"

@implementation PainterSetupViewController


@synthesize delegate;


-(IBAction)ValueChange:(id)sender
{
    UIColor * tColor = [[UIColor alloc] initWithRed:[self.redBar value]
                                              green:[self.greenBar value]
                                               blue:[self.blueBar value]
                                              alpha:1];
    
    [self.colorPreView setBackgroundColor:tColor];
    
}


-(IBAction)PushBackClick
{
    
    UIColor * tColor = [[UIColor alloc] initWithRed:[self.redBar value]
                                              green:[self.greenBar value]
                                               blue:[self.blueBar value]
                                              alpha:1];
    
    [delegate painterSetupViewController:self setColor:tColor];
    [delegate painterSetupViewController:self setWidth:[self.widthBar value]];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
