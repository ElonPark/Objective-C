    //
    //  main.m
    //  ObjcStudy01
    //
    //  Created by Nebula_MAC on 2016. 1. 15..
    //  Copyright © 2016년 Nebula_MAC. All rights reserved.
    //

#import <Foundation/Foundation.h>
#import <objc/Object.h>
#import <stdio.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSError *err = nil;
        
        NSString *path = [NSHomeDirectory() stringByAppendingPathComponent:@"Desktop/data.txt"];
        NSString *str = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:&err];
        
        NSLog(@"%@", str);
        str = [str stringByAppendingString:@"** add test**\n"];
        NSString *path2 = [NSHomeDirectory() stringByAppendingPathComponent:@"Desktop/saved.txt"];
        
        [str writeToFile:path2 atomically:YES encoding:NSUTF8StringEncoding error:&err];
    }
    return 0;
}

/*
 @interface point : NSObject
 {
 int x, y;
 }
 -(void)setPoint : (int)ptX int:(int)ptY;
 -(int)getX;
 -(int)getY;
 @end
 
 @implementation point
 
 -(void)setPoint:(int)ptX int:(int)ptY{
 self-> x = ptX;
 self-> y = ptY;
 }
 -(int)getX {
 return x;
 }
 -(int)getY {
 return y;
 }
 @end
 
 
 
 int main(int argc, const char * argv[]) {
 @autoreleasepool {
 id point1, point2;
 
 point1 = [point alloc];
 point2 = [point alloc];
 
 [point1 setPoint:16 int:32];
 [point2 setPoint:256 int:128];
 
 printf("point1: X = %d, y =%d\n", [point1 getX], [point1 getY]);
 printf("point2: X = %d, y =%d\n", [point2 getX], [point2 getY]);
 }
 return 0;
 }
 */

/*
 @interface Test : NSObject
 -(void)methodA;
 -(void)methodB;
 @end
 
 @implementation Test
 -(void)methodA {
 printf("method A\n");
 [self methodB];
 }
 -(void)methodB {
 printf("method B\n");
 }
 
 @end
 
 int main(int argc, const char * argv[]) {
 @autoreleasepool {
 [[Test alloc] methodA];
 }
 return 0;
 }
 */

/*
 @interface SuperClass : NSObject
 -(void)methodA;
 
 @end
 
 @interface SubClass : SuperClass
 -(void)methodB;
 @end
 
 @implementation SuperClass
 
 -(void)methodA {
 printf("superclass.methodA\n");
 }
 
 @end
 
 @implementation SubClass
 
 -(void)methodB {
 printf("subclass.methodB");
 }
 
 @end
 
 int main(int argc, const char * argv[]) {
 @autoreleasepool {
 id obj = [SubClass alloc];
 
 [obj methodA];
 [obj methodB];
 }
 return 0;
 }
 */

/*
 @interface SuperClass : NSObject {
 int x;
 }
 -(void)method;
 
 @end
 
 @interface SubClass : SuperClass
 -(void)method;
 @end
 
 @implementation SuperClass
 
 -(void)method {
 printf("superclass.method\n");
 }
 
 @end
 
 @implementation SubClass
 
 -(void)method {
 printf("subclass.method %d\n", x);
 [super method];
 }
 
 @end
 
 void CallMethod(id obj) {
 [obj method];
 }
 
 
 int main(int argc, const char * argv[]) {
 @autoreleasepool {
 
 //[[SuperClass alloc] method];
 [[SubClass alloc] method];
 
 //CallMethod([SuperClass alloc]);
 //CallMethod([SubClass alloc]);
 }
 return 0;
 }
 */

/*
 @interface point : NSObject {
 int x, y;
 }
 
 -(id)init;
 -(int)getX;
 -(int)getY;
 
 @end
 
 @implementation point
 
 -(id)init {
 self = [super init];
 x = y = 0;
 printf("init method\n");
 return self;
 }
 
 -(int)getX {
 return x;
 }
 -(int)getY {
 return y;
 }
 @end
 
 
 int main(int argc, const char * argv[]) {
 @autoreleasepool {
 id pt = [point new];
 printf("x = %d, y= %d\n", [pt getX], [pt getY]);
 NSLog(@"hello, World!");
 }
 return 0;
 }
 
 */

/*
 
 @interface point : NSObject {
 int x, y;
 }
 
 -(id)init;
 -(id)initWithPoint:(int)x int:(int)y;
 -(int)getX;
 -(int)getY;
 
 @end
 
 @implementation point
 
 -(id)init {
 self = [super init];
 
 return [self initWithPoint:0 int:0];
 }
 
 -(id)initWithPoint:(int)x int:(int)y {
 self->x = x;
 self->y = y;
 return  self;
 }
 
 -(int)getX {
 return x;
 }
 -(int)getY {
 return y;
 }
 @end
 
 
 int main(int argc, const char * argv[]) {
 @autoreleasepool {
 id pt1 = [point new];
 id pt2 = [[point alloc] initWithPoint:400 int:300];
 
 printf("pt1 x = %d, y= %d\n", [pt1 getX], [pt1 getY]);
 printf("pt2 x = %d, y= %d\n", [pt2 getX], [pt2 getY]);
 
 }
 return 0;
 }
*/
/*
 @interface AClass: NSObject {
 
 
 @public
 int a; //->public
 
 @protected
 int b; //->protected
 
 @private
 int c;  //->private
 
 
 }
 -(id)initWithA:(int)a int:(int)b int:(int)c;
 -(void)WriteA;
 @end
 
 @interface B : AClass
 -(void)WriteB;
 @end
 
 @implementation AClass
 -(id)initWithA:(int)a int:(int)b int:(int)c {
 self->a = a;
 self->b = b;
 self->c = c;
 
 return self;
 }
 -(void)WriteA {
 printf("[A Write Method, a=%d, b=%d, c=%d]\n", a, b, c);
 }
 
 @end
 
 @implementation B
 
 -(void)WriteB {
 printf("[B Write Method, a=%d, b=%d]\n", a, b);
 }
 
 @end
 
 int main(int argc, const char * argv[]) {
 @autoreleasepool {
 B *objb = [[B new]initWithA:1000 int:100 int:10];
 
 printf("[main() scope, a = %d]\n", objb->a);
 [objb WriteB];
 [objb WriteA];
 
 }
 return 0;
 }
*/
/*
 
 @interface Test : NSObject
 +(void)Write;
 @end
 
 @implementation Test
 
 +(void)Write {
 printf("l love you...so please do not love me.\n");
 }
 
 @end
 
 int main(int argc, const char * argv[]) {
 @autoreleasepool {
 [Test Write];
 }
 return 0;
 }
*/
/*
 @interface Test : NSObject
 +(void)Write;
 -(id)init;
 @end
 
 @implementation Test
 
 +(void)Write {
 printf("l love you...so please do not love me.\n");
 }
 -(id)init {
 printf("You can be whatever\n");
 return  [super init];
 }
 @end
 
 int main(int argc, const char * argv[]) {
 @autoreleasepool {
 Class testClass = [Test class];
 
 id tc = [testClass new];
 }
 return 0;
 }
*/
/*
 @interface Test : NSObject
 -(void)Write;
 
 @end
 
 @implementation Test
 
 -(void)Write {
 printf("l love you...so please do not love me.\n");
 }
 
 @end
 
 int main(int argc, const char * argv[]) {
 @autoreleasepool {
 id obj;
 SEL method;
 
 obj = [Test new];
 
 method = @selector(Write);
 [obj performSelector:method];
 }
 return 0;
 }*/
/*@interface Test : NSObject
 -(void)Write;
 @end
 
 @implementation Test
 
 -(void) Write {
 printf("Hello, World!\n");
 }
 
 @end
 int main(int argc, const char * argv[]) {
 @autoreleasepool {
 //id obj;
 SEL method;
 IMP func;
 
 //obj = [Test new];
 method = @selector(Write);
 
 func = [Test instanceMethodForSelector:method];
 
 func();
 }
 return 0;
 }
*/
/*
 @interface Test : NSObject
 -(void)WriteA;
 @end
 
 @interface Test (Hello)
 -(void)WriteB;
 @end
 @implementation Test
 
 -(void) WriteA {
 printf("Hello, World!\n");
 }
 @end
 
 @implementation Test (Hello)
 
 -(void) WriteB {
 printf("헬로우, 월드!\n");
 }
 @end
 
 int main(int argc, const char * argv[]) {
 @autoreleasepool {
 id obj = [Test new];
 
 [obj WriteA];
 [obj WriteB];
 
 }
 return 0;
 }
 
*/

/*@interface NSObject (World)
 -(void)Write;
 @end
 @implementation NSObject (World)
 -(void) Write {
 printf("Hello, World!\n");
 }
 @end
 
 int main(int argc, const char * argv[]) {
 @autoreleasepool {
 id obj = [NSObject new];
 
 [obj Write];
 
 
 }
 return 0;
 }*/
/*@protocol InstanceListener
 
 -(void) InstanceFree:(id)object;
 
 @end
 
 @interface Test : NSObject {
 id <InstanceListener> listener;
 }
 -(id)init;
 -(void)dealloc;
 -(void)SetInstanceListener:(id <InstanceListener>)l;
 -(id <InstanceListener>)GetInstanceListener;
 @end
 
 @implementation Test
 -(id) init {
 self = [super init];
 listener = NULL;
 return self;
 }
 -(void)dealloc {
 if (listener) {
 [listener InstanceFree:self];
 }
 }
 -(void)SetInstanceListener:(id<InstanceListener>)l {
 listener = l;
 }
 -(id <InstanceListener>)GetInstanceListener {
 return listener;
 }
 @end
 @interface WriteInstanceFree : NSObject <InstanceListener>
 @end
 
 @implementation WriteInstanceFree
 
 -(void)InstanceFree:(id)object {
 printf("%x:인스턴스가 해방되었습니다.\n", object);
 }
 
 @end
 int main(int argc, const char * argv[]) {
 @autoreleasepool {
 id obj1 = [Test new], obj2 = [Test new];
 id<InstanceListener> listener = [WriteInstanceFree new];
 
 [obj1 SetInstanceListener:listener];
 [obj2 SetInstanceListener:listener];
 
 }
 return 0;
 }
*/
/*@protocol ProtocolA
 
 -(void)MethodA;
 
 @end
 
 @protocol ProtocolB
 
 -(void)MethodB;
 
 @end
 
 @protocol ProtocolC <ProtocolA>
 
 -(void)MethodC;
 
 @end
 
 @interface Test : NSObject <ProtocolB, ProtocolC>
 @end
 
 @implementation Test
 
 -(void)MethodA {
 printf("Method A\n");
 }
 -(void)MethodB {
 printf("Method B\n");
 }
 -(void)MethodC {
 printf("Method C\n");
 }
 @end
 
 int main(int argc, const char * argv[]) {
 @autoreleasepool {
 id obj = [Test new];
 
 [obj MethodA];
 [obj MethodB];
 [obj MethodC];
 }
 return 0;
 }
*/
/*
 int main(int argc, const char * argv[]) {
 @autoreleasepool {
 NSString *path = NSHomeDirectory();
 path = [path stringByAppendingPathComponent:@"Desktop"];
 
 NSString *fullpath = [path stringByExpandingTildeInPath];
 
 NSString *shortpath = [path stringByAbbreviatingWithTildeInPath];
 
 NSString *dlpath = [path stringByDeletingPathExtension];
 
 NSString *newpath = [path stringByAppendingPathComponent:@"newfile"];
 
 NSLog(@"%@", path);
 NSLog(@"%@", fullpath);
 NSLog(@"%@", shortpath);
 NSLog(@"%@", dlpath);
 NSLog(@"%@", newpath);
 }
 return 0;
 }
*/

/*
 int main(int argc, const char * argv[]) {
 @autoreleasepool {
 NSFileManager *manager = [NSFileManager defaultManager];
 NSError *err = nil;
 
 NSString *path = [NSHomeDirectory() stringByAppendingPathComponent:@"data.txt"];
 
 NSString *tpath = [NSHomeDirectory() stringByAppendingPathComponent:@"Desktop/copyed.txt"];
 
 [manager copyItemAtPath:path toPath:tpath error:&err];
 
 if (err == nil) {
 NSLog(@"copyed.");
 }else {
 NSLog(@"%@.", [err localizedDescription]);
 }
 NSLog(@"%@", path);
 NSLog(@"%@", tpath);
 }
 return 0;
 }
*/
/*
 int main(int argc, const char * argv[]) {
 @autoreleasepool {
 NSFileManager *manager = [NSFileManager defaultManager];
 NSError *err = nil;
 
 NSString *path = [NSHomeDirectory() stringByAppendingPathComponent:@"Desktop/copyed.txt"];
 
 BOOL isdir;
 NSLog(@"exists:%@", [manager fileExistsAtPath:path isDirectory:&isdir] ? @"YES" : @"NO");
 
 NSLog(@"isDir:%@", isdir ? @"YES" : @"NO");
 
 NSLog(@"canRead:%@", [manager isReadableFileAtPath:path] ? @"YES" : @"NO");
 NSLog(@"canSave:%@", [manager isWritableFileAtPath:path] ? @"YES" : @"NO");
 NSLog(@"canExec:%@", [manager isExecutableFileAtPath:path] ? @"YES" : @"NO");
 NSLog(@"canDele:%@", [manager isDeletableFileAtPath:path] ? @"YES" : @"NO");
 }
 return 0;
 }
*/
/*int main(int argc, const char * argv[]) {
 @autoreleasepool {
 
 NSError *err = nil;
 
 NSString *path = [NSHomeDirectory() stringByAppendingPathComponent:@"Desktop/data.txt"];
 NSString *str = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:&err];
 
 NSLog(@"%@", str);
 str = [str stringByAppendingString:@"** add test**\n"];
 NSString *path2 = [NSHomeDirectory() stringByAppendingPathComponent:@"Desktop/saved.txt"];
 
 [str writeToFile:path2 atomically:YES encoding:NSUTF8StringEncoding error:&err];
 }
 return 0;
 }
*/