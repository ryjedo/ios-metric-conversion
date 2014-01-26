//
//  RJDtemperatureViewController+convertTemperature.m
//  Metric Conversion
//
//  Created by Ryan J Dobrynski on 1/23/14.
//  Copyright (c) 2014 Ryan J Dobrynski. All rights reserved.
//

#import "RJDtemperatureViewController+convertTemperature.h"

@implementation RJDtemperatureViewController (convertTemperature)
- (NSString *)convertTemperature:(long)fahrenheitCelsiusSelectorPosition
                        withArg2:(long)positiveNegativeSelectorPosition
                        withArg3:(NSString *)userInputData
{
    
    //holds signed user input number.
    NSDecimalNumber *signedNumber;
    
    //check for Positive or Negative number
    switch (positiveNegativeSelectorPosition)
    {
            
        case 0: // input is a positive number
            signedNumber = [[NSDecimalNumber alloc] initWithString:userInputData];
            break;
            
        case 1: // input is a negative number
            signedNumber = [[NSDecimalNumber alloc] decimalNumberBySubtracting:[NSDecimalNumber decimalNumberWithString:userInputData]];
            break;
            
    }
   
    
    
    //declare NSObjects to be used for conversion math and results
    NSString *convertedTemperature;
    NSDecimalNumber *thirtyTwo = [[NSDecimalNumber alloc] initWithString:@"32.0"];
    NSDecimalNumber *nine = [[NSDecimalNumber alloc] initWithString:@"9.0"];
    NSDecimalNumber *five = [[NSDecimalNumber alloc] initWithString:@"5.0"];
    NSDecimalNumberHandler *nearestFullInteger = [[NSDecimalNumberHandler alloc] initWithRoundingMode:NSRoundPlain
                                                                                                scale:(0)
                                                                                     raiseOnExactness:(NO)
                                                                                      raiseOnOverflow:(NO)
                                                                                     raiseOnUnderflow:(NO)
                                                                                  raiseOnDivideByZero:(NO)];
    
    //check for F or C selection and convert temp.
    switch (fahrenheitCelsiusSelectorPosition)
    {
            
        case 0: // temp was F and is converted to C
            convertedTemperature = [[[NSString alloc] initWithString:[[[[[signedNumber  decimalNumberBySubtracting:thirtyTwo]
                                                                                        decimalNumberByMultiplyingBy:five]
                                                                                        decimalNumberByDividingBy:nine]
                                                                                        decimalNumberByRoundingAccordingToBehavior:nearestFullInteger]
                                                                                        description]]
                                                                                        stringByAppendingString:@" C"];
            break;
            
        case 1: // temp was C and is converted to F
            convertedTemperature = [[[NSString alloc] initWithString:[[[[[signedNumber  decimalNumberByMultiplyingBy:nine]
                                                                                        decimalNumberByDividingBy:five]
                                                                                        decimalNumberByAdding:thirtyTwo]
                                                                                        decimalNumberByRoundingAccordingToBehavior:nearestFullInteger]
                                                                                        description]]
                                                                                        stringByAppendingString:@" F"];
            break;
            
    }
    
    //return converted temp as string with trailing F/C
    return convertedTemperature;
    
}


@end
