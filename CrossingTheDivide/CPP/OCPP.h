//
//  OCPP.h
//  CrossingTheDivide
//
//  Created by Shawn Campbell on 1/29/17.
//  Copyright © 2017 Shawn Campbell. All rights reserved.
//

#ifndef OCPP_h
#define OCPP_h
#import <Foundation/Foundation.h>

@interface CPP_Wrapper : NSObject
- (NSString*)hello_cpp_wrapped:(NSString *)name;
- (NSString*)hello_cpp_lib_wrapped:(NSString*)name;
- (NSArray*)sort_ints:(NSArray*)arr;
@end

#endif /* OCPP_h */
