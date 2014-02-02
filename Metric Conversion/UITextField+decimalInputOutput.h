//
//  UITextField+decimalInputOutput.h
//  Metric Conversion
//
//  Created by Ryan J Dobrynski on 2/1/14.
//  Copyright (c) 2014 Ryan J Dobrynski. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (decimalInputOutput)

- (NSDecimalNumber *)decimalNumberFromUserInput;

- (void) setTextFromDecimalNumber:(NSDecimalNumber *)displayTemperature;

@end
