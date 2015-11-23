//
//  main.m
//  DeallocFreeTest
//
//  Created by Nebula on 2015. 9. 24..
//  Copyright © 2015년 Nebula. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <stdio.h>
#import <objc/Object.h>

@interface Test : NSObject

-(id)init;
-(void)dealloc;

@end

@implementation Test

-(id)init{
    id obj = [super init];
    printf("init methhod\n");
    return obj;
}

-(void)dealloc{
    printf("free method\n");
    //return   [super free];
    //ARC 때문에 에러 나는듯 하다.
}

@end
int main(int argc, const char * argv[]) {
    
    id obj = [Test new];
   // [obj dealloc];
    //여기도 ARC때문에 에러인듯 하다.
    return 0;
}
