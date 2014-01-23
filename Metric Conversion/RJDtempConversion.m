//
//  RJDtempConversion.m
//  Metric Conversion
//
//  Created by Ryan J Dobrynski on 1/20/14.
//  Copyright (c) 2014 Ryan J Dobrynski. All rights reserved.
//

#import "RJDtempConversion.h"

@implementation RJDtempConversion

+ (NSString *)RJDconvertTemp:(long)tempFcSelector withArg2:(long)tempPosNegSelector withArg3:(NSString *)tempUserInput
{
    
    //declare numbers to be used for conversion process.
    NSDecimalNumber *tempSignedNumber;
    
    //check for Positive or Negative number.
    switch (tempPosNegSelector)
    {
      
        case 0:
            tempSignedNumber = [[NSDecimalNumber alloc] initWithString:tempUserInput];
            break;
            
        case 1:
            tempSignedNumber = [[NSDecimalNumber alloc] decimalNumberBySubtracting:[[NSDecimalNumber alloc] initWithString:tempUserInput]];
            break;
    
    }
   
    //declare NSObjects to be used for results
    NSString *tempResultsString;
    NSDecimalNumber *tempThirtyTwo = [[NSDecimalNumber alloc] initWithString:@"32.0"];
    NSDecimalNumber *tempNine = [[NSDecimalNumber alloc] initWithString:@"9.0"];
    NSDecimalNumber *tempFive = [[NSDecimalNumber alloc] initWithString:@"5.0"];
    NSDecimalNumberHandler *RJDnumberHandler = [[NSDecimalNumberHandler alloc] initWithRoundingMode:NSRoundPlain
                                                                                              scale:(0)
                                                                                   raiseOnExactness:(NO)
                                                                                    raiseOnOverflow:(NO)
                                                                                   raiseOnUnderflow:(NO)
                                                                                raiseOnDivideByZero:(NO)];
    //check for F or C selection.
    switch (tempFcSelector)
    {
    
        case 0:
            tempResultsString = [[[NSString alloc] initWithString:[[[[[tempSignedNumber decimalNumberBySubtracting:tempThirtyTwo]
                                                                                        decimalNumberByMultiplyingBy:tempFive]
                                                                                        decimalNumberByDividingBy:tempNine]
                                                                                        decimalNumberByRoundingAccordingToBehavior:RJDnumberHandler]
                                                                                        description]]
                                                                                        stringByAppendingString:@" C"];
            break;

        case 1:
            tempResultsString = [[[NSString alloc] initWithString:[[[[[tempSignedNumber decimalNumberByMultiplyingBy:tempNine]
                                                                                        decimalNumberByDividingBy:tempFive]
                                                                                        decimalNumberByAdding:tempThirtyTwo]
                                                                                        decimalNumberByRoundingAccordingToBehavior:RJDnumberHandler]
                                                                                        description]]
                                                                                        stringByAppendingString:@" F"];
            break;
    
    }

    return tempResultsString;

}


@end


