//
//  UITextField+decimalInputOutput.m
//  Metric Conversion
//
//  Created by Ryan J Dobrynski on 2/1/14.
//  Copyright (c) 2014 Ryan J Dobrynski. All rights reserved.
//

#import "UITextField+decimalInputOutput.h"

@implementation UITextField (decimalInputOutput)





// returns contents of UITextField.text as NSDecimalNumber
- (NSDecimalNumber *)decimalNumberFromUserInput;
{
    return [[NSDecimalNumber alloc] initWithString:self.text];
}





@end