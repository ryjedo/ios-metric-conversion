//
//  NSDecimalNumber+temperatureConversionMath.m
//  Metric Conversion
//
//  Created by Ryan J Dobrynski on 2/1/14.
//  Copyright (c) 2014 Ryan J Dobrynski. All rights reserved.
//

#import "NSDecimalNumber+temperatureConversionMath.h"

@implementation NSDecimalNumber (temperatureConversionMath)




+ (NSDecimalNumber *)kelvinToFahrenheit:(NSDecimalNumber *)inputTemperature
{
    NSDecimalNumber *thirtyTwo = [[NSDecimalNumber alloc] initWithString:@"32.0"];
    NSDecimalNumber *nine = [[NSDecimalNumber alloc] initWithString:@"9.0"];
    NSDecimalNumber *five = [[NSDecimalNumber alloc] initWithString:@"5.0"];
    NSDecimalNumber *kelvin273_15 = [[NSDecimalNumber alloc] initWithString:@"273.15"];
    NSDecimalNumber *number;
    number = [[[[inputTemperature  decimalNumberBySubtracting:kelvin273_15] decimalNumberByMultiplyingBy:nine] decimalNumberByDividingBy:five] decimalNumberByAdding:thirtyTwo];
    return number;
}

+ (NSDecimalNumber *)kelvinToCelsius:(NSDecimalNumber *)inputTemperature;
{
    NSDecimalNumber *kelvin273_15 = [[NSDecimalNumber alloc] initWithString:@"273.15"];
    NSDecimalNumber *number;
    number = [inputTemperature decimalNumberBySubtracting:kelvin273_15];
    return number;
}

+ (NSDecimalNumber *)fahrenheitToKelvin:(NSDecimalNumber *)inputTemperature;
{
    NSDecimalNumber *thirtyTwo = [[NSDecimalNumber alloc] initWithString:@"32.0"];
    NSDecimalNumber *nine = [[NSDecimalNumber alloc] initWithString:@"9.0"];
    NSDecimalNumber *five = [[NSDecimalNumber alloc] initWithString:@"5.0"];
    NSDecimalNumber *kelvin273_15 = [[NSDecimalNumber alloc] initWithString:@"273.15"];
    NSDecimalNumber *number;
    number = [[[[inputTemperature decimalNumberBySubtracting:thirtyTwo] decimalNumberByMultiplyingBy:five] decimalNumberByDividingBy:nine] decimalNumberByAdding:kelvin273_15];
    return number;
}

+ (NSDecimalNumber *)fahrenheitToCelsius:(NSDecimalNumber *)inputTemperature;
{
    NSDecimalNumber *thirtyTwo = [[NSDecimalNumber alloc] initWithString:@"32.0"];
    NSDecimalNumber *nine = [[NSDecimalNumber alloc] initWithString:@"9.0"];
    NSDecimalNumber *five = [[NSDecimalNumber alloc] initWithString:@"5.0"];
    NSDecimalNumber *number;
    number = [[[inputTemperature decimalNumberBySubtracting:thirtyTwo] decimalNumberByMultiplyingBy:five] decimalNumberByDividingBy:nine];
    return number;
}

+(NSDecimalNumber *)celsiusToKelvin:(NSDecimalNumber *)inputTemperature;
{
    NSDecimalNumber *kelvin273_15 = [[NSDecimalNumber alloc] initWithString:@"273.15"];
    NSDecimalNumber *number;
    number = [inputTemperature decimalNumberByAdding:kelvin273_15];
    return number;
}

+ (NSDecimalNumber *)celsiusToFahrenheit:(NSDecimalNumber *)inputTemperature;
{
    NSDecimalNumber *thirtyTwo = [[NSDecimalNumber alloc] initWithString:@"32.0"];
    NSDecimalNumber *nine = [[NSDecimalNumber alloc] initWithString:@"9.0"];
    NSDecimalNumber *five = [[NSDecimalNumber alloc] initWithString:@"5.0"];
    NSDecimalNumber *number;
    number = [[[inputTemperature decimalNumberByMultiplyingBy:nine] decimalNumberByDividingBy:five] decimalNumberByAdding:thirtyTwo];
    return number;
}

@end
