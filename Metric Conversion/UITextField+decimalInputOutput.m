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
    return [[NSDecimalNumber alloc] initWithString:self.text];
}

- (void) setTextFromDecimalNumber:(NSDecimalNumber *)displayTemperature;
{
    self.text = [[NSString alloc] initWithString:displayTemperature.description];
}

@end