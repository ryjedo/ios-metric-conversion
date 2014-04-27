//
//  UILabel+temperatureOutput.h
//  Metric Conversion
//
//  Created by Ryan J Dobrynski on 2/8/14.
//  Copyright (c) 2014 Ryan J Dobrynski. All rights reserved.
//


#import <UIKit/UIKit.h>


@interface UILabel (temperatureOutput)

- (void) setFahrenheitTemperatureFromDecimalNumber:(NSDecimalNumber *)displayTemperature;
- (void) setKelvinTemperatureFromDecimalNumber:(NSDecimalNumber *)displayTemperature;
- (void) setCelsiusTemperatureFromDecimalNumber:(NSDecimalNumber *)displayTemperature;

@end