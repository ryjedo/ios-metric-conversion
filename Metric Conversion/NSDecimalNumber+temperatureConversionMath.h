//
//  NSDecimalNumber+temperatureConversionMath.h
//  Metric Conversion
//
//  Created by Ryan J Dobrynski on 2/1/14.
//  Copyright (c) 2014 Ryan J Dobrynski. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDecimalNumber (temperatureConversionMath)

+ (NSDecimalNumber *)kelvinToFahrenheit:(NSDecimalNumber *)inputTemperature;
+ (NSDecimalNumber *)kelvinToCelsius:(NSDecimalNumber *)inputTemperature;

+ (NSDecimalNumber *)fahrenheitToKelvin:(NSDecimalNumber *)inputTemperature;
+ (NSDecimalNumber *)fahrenheitToCelsius:(NSDecimalNumber *)inputTemperature;

+ (NSDecimalNumber *)celsiusToKelvin:(NSDecimalNumber *)inputTemperature;
+ (NSDecimalNumber *)celsiusToFahrenheit:(NSDecimalNumber *)inputTemperature;

@end
