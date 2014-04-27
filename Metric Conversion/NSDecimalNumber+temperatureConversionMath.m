//
//  NSDecimalNumber+temperatureConversionMath.m
//  Metric Conversion
//
//  Created by Ryan J Dobrynski on 2/1/14.
//  Copyright (c) 2014 Ryan J Dobrynski. All rights reserved.
//


#import "NSDecimalNumber+temperatureConversionMath.h"


@implementation NSDecimalNumber (temperatureConversionMath)

#define KELVIN \
NSDecimalNumber *kelvin273_15 = [[NSDecimalNumber alloc] initWithString:@"273.15"];
//

#define NINEFIVETHIRTYTWO \
NSDecimalNumber *thirtyTwo = [[NSDecimalNumber alloc] initWithString:@"32.0"];  \
NSDecimalNumber *nine = [[NSDecimalNumber alloc] initWithString:@"9.0"];        \
NSDecimalNumber *five = [[NSDecimalNumber alloc] initWithString:@"5.0"];
//

#define ROUNDING \
NSDecimalNumberHandler *nearestFullInteger = [[NSDecimalNumberHandler alloc] initWithRoundingMode:NSRoundPlain \
                                                                                            scale:(0)  \
                                                                                 raiseOnExactness:(NO) \
                                                                                  raiseOnOverflow:(NO) \
                                                                                 raiseOnUnderflow:(NO) \
                                                                              raiseOnDivideByZero:(NO)];
//





//
// convert Kelvin to Fahrenheit
//
+ (NSDecimalNumber *)kelvinToFahrenheit:(NSDecimalNumber *)inputTemperature
{
    NINEFIVETHIRTYTWO
    KELVIN
    ROUNDING
    
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
    KELVIN
    ROUNDING
    
    return [[inputTemperature decimalNumberByAdding:kelvin273_15]
         decimalNumberByRoundingAccordingToBehavior:nearestFullInteger];
}





//
// convert Fahrenheit to Kelvin
//
+ (NSDecimalNumber *)fahrenheitToKelvin:(NSDecimalNumber *)inputTemperature;
{
    NINEFIVETHIRTYTWO
    KELVIN
    ROUNDING
    
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
    NINEFIVETHIRTYTWO
    ROUNDING
    
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
    KELVIN
    ROUNDING
    
    return [[inputTemperature decimalNumberBySubtracting:kelvin273_15]
              decimalNumberByRoundingAccordingToBehavior:nearestFullInteger];
}





//
// convert Celsius to Fahrenheit
//
+ (NSDecimalNumber *)celsiusToFahrenheit:(NSDecimalNumber *)inputTemperature;
{
    NINEFIVETHIRTYTWO
    ROUNDING
    
    return [[[[inputTemperature decimalNumberByMultiplyingBy:nine]
                                   decimalNumberByDividingBy:five]
                                       decimalNumberByAdding:thirtyTwo]
                  decimalNumberByRoundingAccordingToBehavior:nearestFullInteger];
}





@end