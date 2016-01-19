//
//  PointData.m
//  PainterApp
//
//  Created by Nebula on 2015. 11. 8..
//  Copyright © 2015년 Nebula. All rights reserved.
//

#import "PointData.h"

@implementation PointData


@synthesize points;

- (id)init
{
    if (self = [super init])
    {
        points = [[NSMutableArray alloc] init]; 
    }
    
    return self;
}



- (void)addPoint:(CGPoint)point
{
    
    [points addObject:[NSValue valueWithCGPoint:point]];
}



@end
