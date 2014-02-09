//
//  RJDtemperatureViewController.m
//  Metric Conversion
//
//  Created by Ryan J Dobrynski on 1/15/14.
//  Copyright (c) 2014 Ryan J Dobrynski. All rights reserved.
//

#import "RJDtemperatureViewController.h"



@interface UITextField (decimalInputOutput)

- (NSDecimalNumber *)decimalNumberFromUserInput;

//- (void) setTextFromDecimalNumber:(NSDecimalNumber *)displayTemperature;

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



@interface RJDtemperatureViewController ()

@property (weak, nonatomic) IBOutlet UILabel *fahrenheitDisplay;
@property (weak, nonatomic) IBOutlet UILabel *kelvinDisplay;
@property (weak, nonatomic) IBOutlet UILabel *celsiusDisplay;
@property (weak, nonatomic) IBOutlet UITextField *userInputTemperature;
@property (weak, nonatomic) IBOutlet UISegmentedControl *inputTemperatureType;
@property (weak, nonatomic) UIToolbar *keyboardToolbar;

- (IBAction)convertTemperature:(id)sender;
- (IBAction)stopEditing:(id)sender;

@end



@implementation RJDtemperatureViewController


- (void)viewDidLoad
{
    _keyboardToolbar= [[[NSBundle mainBundle] loadNibNamed:@"RJDkeyboardToolbar" owner:self options:nil] objectAtIndex:0];
    [self.userInputTemperature setInputAccessoryView:_keyboardToolbar];
}

- (IBAction)setNegative:(id)sender
{
    _userInputTemperature.text = @"-";
}


- (IBAction)convertTemperature:(id)sender
{
    
    if ([[NSScanner scannerWithString:[_userInputTemperature text]] scanLongLong:NULL])
    {
        
        switch (_inputTemperatureType.selectedSegmentIndex) {
            
            //Fahrenheit
            case 0:
                [_fahrenheitDisplay setFahrenheitTemperatureFromDecimalNumber:[_userInputTemperature decimalNumberFromUserInput]];
                [_kelvinDisplay setKelvinTemperatureFromDecimalNumber:[NSDecimalNumber fahrenheitToKelvin:[_userInputTemperature decimalNumberFromUserInput]]];
                [_celsiusDisplay setCelsiusTemperatureFromDecimalNumber:[NSDecimalNumber fahrenheitToCelsius:[_userInputTemperature decimalNumberFromUserInput]]];
                break;
            
            //Kelvin
            case 1:
                [_fahrenheitDisplay setFahrenheitTemperatureFromDecimalNumber:[NSDecimalNumber kelvinToFahrenheit:[_userInputTemperature decimalNumberFromUserInput]]];
                [_kelvinDisplay setKelvinTemperatureFromDecimalNumber:[_userInputTemperature decimalNumberFromUserInput]];
                [_celsiusDisplay setCelsiusTemperatureFromDecimalNumber:[NSDecimalNumber kelvinToCelsius:[_userInputTemperature decimalNumberFromUserInput]]];
                break;

            //Celsius
            case 2:
                [_fahrenheitDisplay setKelvinTemperatureFromDecimalNumber:[NSDecimalNumber celsiusToFahrenheit:[_userInputTemperature decimalNumberFromUserInput]]];
                [_kelvinDisplay setKelvinTemperatureFromDecimalNumber:[NSDecimalNumber celsiusToKelvin:[_userInputTemperature decimalNumberFromUserInput]]];
                [_celsiusDisplay setCelsiusTemperatureFromDecimalNumber:[_userInputTemperature decimalNumberFromUserInput]];
                break;
            
            //Unexpected Behaviour
            default:
                break;
                
        }
        
    }
    
}



// drops focus of UITextField and dismisses keyboard
- (IBAction)stopEditing:(id)sender
{

    [self.view endEditing:YES];
    if ([_userInputTemperature.text length] == 0)
    {
        _fahrenheitDisplay.text = @"";
        _kelvinDisplay.text = @"";
        _celsiusDisplay.text = @"";
    }
}



@end
