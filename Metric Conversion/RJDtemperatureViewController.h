//
//  RJDtemperatureViewController.h
//  Metric Conversion
//
//  Created by Ryan J Dobrynski on 1/15/14.
//  Copyright (c) 2014 Ryan J Dobrynski. All rights reserved.
//


#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>


@interface RJDtemperatureViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *fahrenheitDisplay;
@property (weak, nonatomic) IBOutlet UILabel *kelvinDisplay;
@property (weak, nonatomic) IBOutlet UILabel *celsiusDisplay;
@property (weak, nonatomic) IBOutlet UITextField *userInputTemperature;
@property (weak, nonatomic) IBOutlet UISegmentedControl *inputTemperatureType;
@property (weak, nonatomic) UIToolbar *keyboardToolbar;

- (IBAction)convertTemperature:(id)sender;
- (IBAction)stopEditing:(id)sender;
- (IBAction)tapUiTextField:(id)sender;

@end


@interface UITextField (decimalInputOutput)

- (NSDecimalNumber *)decimalNumberFromUserInput;

@end


@interface UILabel (temperatureOutput)

- (void) setFahrenheitTemperatureFromDecimalNumber:(NSDecimalNumber *)displayTemperature;
- (void) setKelvinTemperatureFromDecimalNumber:(NSDecimalNumber *)displayTemperature;
- (void) setCelsiusTemperatureFromDecimalNumber:(NSDecimalNumber *)displayTemperature;

@end


@interface NSDecimalNumber (temperatureConversionMath)

+ (NSDecimalNumber *)kelvinToFahrenheit:(NSDecimalNumber *)inputTemperature;
+ (NSDecimalNumber *)kelvinToCelsius:(NSDecimalNumber *)inputTemperature;

+ (NSDecimalNumber *)fahrenheitToKelvin:(NSDecimalNumber *)inputTemperature;
+ (NSDecimalNumber *)fahrenheitToCelsius:(NSDecimalNumber *)inputTemperature;

+ (NSDecimalNumber *)celsiusToKelvin:(NSDecimalNumber *)inputTemperature;
+ (NSDecimalNumber *)celsiusToFahrenheit:(NSDecimalNumber *)inputTemperature;

@end