//
//  main.m
//  DataTypeExample
//
//  Created by Nebula_MAC on 2016. 1. 19..
//  Copyright © 2016년 Nebula_MAC. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		int integerVar = 100;
		float floatingVar = 344.33;
		double doubleVar = 8.44e+11;
		char charVar = 'W';
		
		NSLog(@"integerVar = %i", integerVar);
		NSLog(@"floatingVar = %f", floatingVar);
		NSLog(@"doubleVar = %e", doubleVar);
		NSLog(@"doubleVar = %g", doubleVar);
		NSLog(@"charVar = %c", charVar);
		
	}
	return 0;
}
