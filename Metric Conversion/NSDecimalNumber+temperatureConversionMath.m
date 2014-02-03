//
//  NSDecimalNumber+temperatureConversionMath.m
//  Metric Conversion
//
//  Created by Ryan J Dobrynski on 2/1/14.
//  Copyright (c) 2014 Ryan J Dobrynski. All rights reserved.
//

#import "NSDecimalNumber+temperatureConversionMath.h"

@implementation NSDecimalNumber (temperatureConversionMath)





//
// convert Kelvin to Fahrenheit
//
+ (NSDecimalNumber *)kelvinToFahrenheit:(NSDecimalNumber *)inputTemperature
{
    NSDecimalNumber *thirtyTwo = [[NSDecimalNumber alloc] initWithString:@"32.0"];
    NSDecimalNumber *nine = [[NSDecimalNumber alloc] initWithString:@"9.0"];
    NSDecimalNumber *five = [[NSDecimalNumber alloc] initWithString:@"5.0"];
    NSDecimalNumber *kelvin273_15 = [[NSDecimalNumber alloc] initWithString:@"273.15"];
    NSDecimalNumberHandler *nearestFullInteger = [[NSDecimalNumberHandler alloc] initWithRoundingMode:NSRoundPlain
                                                                                                scale:(0)
                                                                                     raiseOnExactness:(NO)
                                                                                      raiseOnOverflow:(NO)
                                                                                     raiseOnUnderflow:(NO)
                                                                                  raiseOnDivideByZero:(NO)];

    return [[[[[inputTemperature decimalNumberByAdding:kelvin273_15]
                          decimalNumberByMultiplyingBy:nine]
                             decimalNumberByDividingBy:five]
                                 decimalNumberByAdding:thirtyTwo]
            decimalNumberByRoundingAccordingToBehavior:nearestFullInteger];
}





//
// convert Kelvin to Celsius
//
+ (NSDecimalNumber *)kelvinToCelsius:(NSDecimalNumber *)inputTemperature;
{
    NSDecimalNumber *kelvin273_15 = [[NSDecimalNumber alloc] initWithString:@"273.15"];
    NSDecimalNumberHandler *nearestFullInteger = [[NSDecimalNumberHandler alloc] initWithRoundingMode:NSRoundPlain
                                                                                                scale:(0)
                                                                                     raiseOnExactness:(NO)
                                                                                      raiseOnOverflow:(NO)
                                                                                     raiseOnUnderflow:(NO)
                                                                                  raiseOnDivideByZero:(NO)];

    return [[inputTemperature decimalNumberByAdding:kelvin273_15]
         decimalNumberByRoundingAccordingToBehavior:nearestFullInteger];
}





//
// convert Fahrenheit to Kelvin
//
+ (NSDecimalNumber *)fahrenheitToKelvin:(NSDecimalNumber *)inputTemperature;
{
    NSDecimalNumber *thirtyTwo = [[NSDecimalNumber alloc] initWithString:@"32.0"];
    NSDecimalNumber *nine = [[NSDecimalNumber alloc] initWithString:@"9.0"];
    NSDecimalNumber *five = [[NSDecimalNumber alloc] initWithString:@"5.0"];
    NSDecimalNumber *kelvin273_15 = [[NSDecimalNumber alloc] initWithString:@"273.15"];
    NSDecimalNumberHandler *nearestFullInteger = [[NSDecimalNumberHandler alloc] initWithRoundingMode:NSRoundPlain
                                                                                                scale:(0)
                                                                                     raiseOnExactness:(NO)
                                                                                      raiseOnOverflow:(NO)
                                                                                     raiseOnUnderflow:(NO)
                                                                                  raiseOnDivideByZero:(NO)];

    return [[[[[inputTemperature decimalNumberBySubtracting:thirtyTwo]
                               decimalNumberByMultiplyingBy:five]
                                  decimalNumberByDividingBy:nine]
                                 decimalNumberBySubtracting:kelvin273_15]
                 decimalNumberByRoundingAccordingToBehavior:nearestFullInteger];
}





//
// convert Fahrenheit to Celsius
//
+ (NSDecimalNumber *)fahrenheitToCelsius:(NSDecimalNumber *)inputTemperature;
{
    NSDecimalNumber *thirtyTwo = [[NSDecimalNumber alloc] initWithString:@"32.0"];
    NSDecimalNumber *nine = [[NSDecimalNumber alloc] initWithString:@"9.0"];
    NSDecimalNumber *five = [[NSDecimalNumber alloc] initWithString:@"5.0"];
    NSDecimalNumberHandler *nearestFullInteger = [[NSDecimalNumberHandler alloc] initWithRoundingMode:NSRoundPlain
                                                                                                scale:(0)
                                                                                     raiseOnExactness:(NO)
                                                                                      raiseOnOverflow:(NO)
                                                                                     raiseOnUnderflow:(NO)
                                                                                  raiseOnDivideByZero:(NO)];

    return [[[[inputTemperature decimalNumberBySubtracting:thirtyTwo]
                              decimalNumberByMultiplyingBy:five]
                                 decimalNumberByDividingBy:nine]
                decimalNumberByRoundingAccordingToBehavior:nearestFullInteger];
}





//
// convert Celsius to Kelvin
//
+(NSDecimalNumber *)celsiusToKelvin:(NSDecimalNumber *)inputTemperature;
{
    NSDecimalNumber *kelvin273_15 = [[NSDecimalNumber alloc] initWithString:@"273.15"];
    NSDecimalNumberHandler *nearestFullInteger = [[NSDecimalNumberHandler alloc] initWithRoundingMode:NSRoundPlain
                                                                                                scale:(0)
                                                                                     raiseOnExactness:(NO)
                                                                                      raiseOnOverflow:(NO)
                                                                                     raiseOnUnderflow:(NO)
                                                                                  raiseOnDivideByZero:(NO)];
    
    return [[inputTemperature decimalNumberBySubtracting:kelvin273_15]
              decimalNumberByRoundingAccordingToBehavior:nearestFullInteger];
}





//
// convert Celsius to Fahrenheit
//
+ (NSDecimalNumber *)celsiusToFahrenheit:(NSDecimalNumber *)inputTemperature;
{
    NSDecimalNumber *thirtyTwo = [[NSDecimalNumber alloc] initWithString:@"32.0"];
    NSDecimalNumber *nine = [[NSDecimalNumber alloc] initWithString:@"9.0"];
    NSDecimalNumber *five = [[NSDecimalNumber alloc] initWithString:@"5.0"];
    NSDecimalNumberHandler *nearestFullInteger = [[NSDecimalNumberHandler alloc] initWithRoundingMode:NSRoundPlain
                                                                                                scale:(0)
                                                                                     raiseOnExactness:(NO)
                                                                                      raiseOnOverflow:(NO)
                                                                                     raiseOnUnderflow:(NO)
                                                                                  raiseOnDivideByZero:(NO)];

    return [[[[inputTemperature decimalNumberByMultiplyingBy:nine]
                                   decimalNumberByDividingBy:five]
                                       decimalNumberByAdding:thirtyTwo]
                  decimalNumberByRoundingAccordingToBehavior:nearestFullInteger];
}





@end
