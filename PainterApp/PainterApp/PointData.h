//
//  PointData.h
//  PainterApp
//
//  Created by Nebula on 2015. 11. 8..
//  Copyright © 2015년 Nebula. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>    

typedef enum {
    PEN = 0,
    LINE = 1,
    CIRCLE = 2,
    RECTANGLE = 3,
    ERASE = 4
} TYPES;

@interface PointData : NSObject


@property (strong, nonatomic) UIColor* pColor;
@property float pWidth;
@property TYPES pType;
@property (readonly, nonatomic) NSMutableArray *points;

- (void)addPoint:(CGPoint)point;


@end