//
//  OCPP.m
//  CrossingTheDivide
//
//  Created by Shawn Campbell on 1/29/17.
//  Copyright © 2017 Shawn Campbell. All rights reserved.
//


#include "OCPP.h"
#include "CPP.hpp"
#include "CrossingTheDivideLib.hpp"

@implementation CPP_Wrapper
- (NSString*)hello_cpp_wrapped:(NSString *)name {
	CPP cpp;
	return [[NSString alloc] initWithCString: cpp.hello_cpp([name cStringUsingEncoding:NSUTF8StringEncoding]).c_str() encoding:NSUTF8StringEncoding];
}
- (NSString*)hello_cpp_lib_wrapped:(NSString *)name {
	CrossingTheDivideLib lib;
	return [[NSString alloc] initWithCString:lib.HelloWorld([name cStringUsingEncoding:NSUTF8StringEncoding]).c_str() encoding:NSUTF8StringEncoding];
}
- (NSArray*)sort_ints:(NSArray *)arr {
	int cArray[[arr count]];
	int count = [arr count];
	for(int i = 0; i < count; i++) {
		cArray[i] = [[arr objectAtIndex:i] intValue];
	}
	CrossingTheDivideLib lib;
	lib.quickSort(cArray, 0, count);
	NSMutableArray* ret = [[NSMutableArray alloc] init];
	for(int j = 0; j < count; j++) {
		[ret addObject:[[NSNumber alloc] initWithInt: cArray[j]]];
	}
	return (NSArray*)ret;
}
@end
