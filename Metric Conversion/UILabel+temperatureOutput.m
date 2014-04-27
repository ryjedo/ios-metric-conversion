//
//  UILabel+temperatureOutput.m
//  Metric Conversion
//
//  Created by Ryan J Dobrynski on 2/8/14.
//  Copyright (c) 2014 Ryan J Dobrynski. All rights reserved.
//


#import "UILabel+temperatureOutput.h"


@implementation UILabel (temperatureOutput)





// Fahrenheit
- (void) setFahrenheitTemperatureFromDecimalNumber:(NSDecimalNumber *)displayTemperature
{
    self.text = [[[NSString alloc] initWithString:displayTemperature.description] stringByAppendingString:@"F"];
}





// Kelvin
- (void) setKelvinTemperatureFromDecimalNumber:(NSDecimalNumber *)displayTemperature
{
    self.text = [[[NSString alloc] initWithString:displayTemperature.description] stringByAppendingString:@"K"];
}





// Celsius
- (void) setCelsiusTemperatureFromDecimalNumber:(NSDecimalNumber *)displayTemperature
{
    self.text = [[[NSString alloc] initWithString:displayTemperature.description] stringByAppendingString:@"C"];
}





@end