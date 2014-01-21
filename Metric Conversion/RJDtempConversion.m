//
//  RJDtempConversion.m
//  Metric Conversion
//
//  Created by Ryan J Dobrynski on 1/20/14.
//  Copyright (c) 2014 Ryan J Dobrynski. All rights reserved.
//

#import "RJDtempConversion.h"

@implementation RJDtempConversion

+ (NSString *)logger:(long)tempFcSelector withArg2:(long)tempPosNegSelector withArg3:(NSString *)tempUserInput
{
    
    //declare numbers to be used for conversion process.
    NSDecimalNumber *tempUnsignedNumber;
    NSDecimalNumber *tempDoubleUnsignedNumber;
    NSDecimalNumber *tempSignedNumber;
    
    //check for Positive or Negative number.
    switch (tempPosNegSelector)
    {
        case 0:
            tempUnsignedNumber = [[NSDecimalNumber alloc] initWithString:tempUserInput];
            tempSignedNumber = tempUnsignedNumber;
            break;
            
        case 1:
            tempUnsignedNumber = [[NSDecimalNumber alloc] initWithString:tempUserInput];
            tempDoubleUnsignedNumber = [[NSDecimalNumber alloc] decimalNumberByAdding:tempUnsignedNumber];
            tempSignedNumber = [[NSDecimalNumber alloc] decimalNumberBySubtracting:tempDoubleUnsignedNumber];
            break;
    
    }
   
    //declare NSObjects to be used for results
    NSDecimalNumber *tempResultsNumber;
    NSString *tempResultsString;
    NSDecimalNumber *tempThirtyTwo = [[NSDecimalNumber alloc] initWithString:@"32.0"];
    NSDecimalNumber *tempNine = [[NSDecimalNumber alloc] initWithString:@"9.0"];
    NSDecimalNumber *tempFive = [[NSDecimalNumber alloc] initWithString:@"5.0"];
    
    //check for F or C selection.
    switch (tempFcSelector)
    {
    
        case 0:
            tempResultsNumber = [[[[NSDecimalNumber alloc] decimalNumberBySubtracting:tempThirtyTwo] decimalNumberByMultiplyingBy:tempFive] decimalNumberByDividingBy:tempNine];
            tempResultsString = [[[NSString alloc] initWithString:[tempResultsNumber description]] stringByAppendingString:@" C"];
            break;

        case 1:
            tempResultsNumber = [[[[NSDecimalNumber alloc] decimalNumberByMultiplyingBy:tempNine] decimalNumberByDividingBy:tempFive] decimalNumberByAdding:tempThirtyTwo];
            tempResultsString = [[[NSString alloc] initWithString:[tempResultsNumber description]] stringByAppendingString:@" F"];
            break;
    
    }

    return tempResultsString;

}


@end
