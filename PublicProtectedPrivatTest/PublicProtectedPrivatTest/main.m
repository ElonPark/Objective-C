//
//  main.m
//  PublicProtectedPrivatTest
//
//  Created by Nebula on 2015. 9. 23..
//  Copyright © 2015년 Nebula. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <stdio.h>
#import <objc/Object.h>

@interface AClass : NSObject{
    
@public
    int a;
@protected
    int b;
@private
    int c;

}

-(id)initWithA:(int)a int:(int)b int:(int)c;
-(void)WriteA;

@end

@interface B : AClass
-(void)WriteB;
@end

@implementation AClass

-(id)initWithA:(int)a int:(int)b int:(int)c{
    self -> a = a;
    self -> b = b;
    self -> c = c;
    return self;
}
-(void)WriteA{
    printf("[A Write Method, a = %d, b = %d, c = %d]\n", a, b, c);
}
@end

@implementation B

-(void)WriteB{
    printf("[B Write Method, a = %d, b = %d]\n", a, b);
}
@end

int main(int argc, const char * argv[]) {
    B * objb = [[B new]initWithA:1000 int:100 int:10];
    
    printf("[main() scope,  a=%d]\n", objb->a);
    [objb WriteB];
    [objb WriteA];
   // [objb free]; //free를 찾을수 없다고 에러
    
    return 0;
}
