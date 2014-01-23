//
//  RJDtempConversion.h
//  Metric Conversion
//
//  Created by Ryan J Dobrynski on 1/20/14.
//  Copyright (c) 2014 Ryan J Dobrynski. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RJDtempConversion : NSObject
+ (NSString *)RJDconvertTemp:(long)tempFcSelector withArg2:(long)tempPosNegSelector withArg3:(NSString *)tempUserInput;
@end
