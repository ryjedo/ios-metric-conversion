//
//  UITextField+decimalInputOutput.m
//  Metric Conversion
//
//  Created by Ryan J Dobrynski on 2/1/14.
//  Copyright (c) 2014 Ryan J Dobrynski. All rights reserved.
//

#import "UITextField+decimalInputOutput.h"

@implementation UITextField (decimalInputOutput)

- (NSDecimalNumber *)decimalNumberFromUserInput;
{
    NSString *string = self.text;
    NSDecimalNumber *number = [[NSDecimalNumber alloc] initWithString:string];
    return number;
}

- (void) setTextFromDecimalNumber:(NSDecimalNumber *)displayTemperature;
{
    self.text = [[NSString alloc] initWithString:displayTemperature.description];
}

@end