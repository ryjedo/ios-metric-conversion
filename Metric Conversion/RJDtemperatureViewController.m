//
//  RJDtemperatureViewController.m
//  Metric Conversion
//
//  Created by Ryan J Dobrynski on 1/15/14.
//  Copyright (c) 2014 Ryan J Dobrynski. All rights reserved.
//


#import "RJDtemperatureViewController.h"


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
                
                
                [_fahrenheitDisplay setFahrenheitTemperatureFromDecimalNumber:
                 [_userInputTemperature decimalNumberFromUserInput]];
                
                
                [_kelvinDisplay setKelvinTemperatureFromDecimalNumber:
                 [NSDecimalNumber fahrenheitToKelvin:
                  [_userInputTemperature decimalNumberFromUserInput]]];
                
                
                [_celsiusDisplay setCelsiusTemperatureFromDecimalNumber:
                 [NSDecimalNumber fahrenheitToCelsius:
                  [_userInputTemperature decimalNumberFromUserInput]]];
                
                
                break;
                
            
            //Kelvin
            case 1:
                
                
                [_fahrenheitDisplay setFahrenheitTemperatureFromDecimalNumber:
                 [NSDecimalNumber kelvinToFahrenheit:
                  [_userInputTemperature decimalNumberFromUserInput]]];
                
                
                [_kelvinDisplay setKelvinTemperatureFromDecimalNumber:
                 [_userInputTemperature decimalNumberFromUserInput]];
                
                
                [_celsiusDisplay setCelsiusTemperatureFromDecimalNumber:
                 [NSDecimalNumber kelvinToCelsius:
                  [_userInputTemperature decimalNumberFromUserInput]]];
                
                
                break;
                

            //Celsius
            case 2:
                
                
                [_fahrenheitDisplay setFahrenheitTemperatureFromDecimalNumber:
                 [NSDecimalNumber celsiusToFahrenheit:
                  [_userInputTemperature decimalNumberFromUserInput]]];
                
                
                [_kelvinDisplay setKelvinTemperatureFromDecimalNumber:
                 [NSDecimalNumber celsiusToKelvin:
                  [_userInputTemperature decimalNumberFromUserInput]]];
                
                
                [_celsiusDisplay setCelsiusTemperatureFromDecimalNumber:
                 [_userInputTemperature decimalNumberFromUserInput]];
                
                
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


- (IBAction)tapUiTextField:(id)sender;
{

    _userInputTemperature.text = @"";
    
}

@end