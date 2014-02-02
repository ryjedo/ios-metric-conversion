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

- (void) setTextFromDecimalNumber:(NSDecimalNumber *)displayTemperature;

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

@property (weak, nonatomic) IBOutlet UITextField *userInputKelvin;
@property (weak, nonatomic) IBOutlet UITextField *userInputFahrenheit;
@property (weak, nonatomic) IBOutlet UITextField *userInputCelsius;

- (IBAction)convertKelvin:(id)sender;
- (IBAction)convertFahrenheit:(id)sender;
- (IBAction)convertCelsius:(id)sender;

- (IBAction)stopEditing:(id)sender;

@end



@implementation RJDtemperatureViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)convertKelvin:(id)sender
{
    if ([[NSScanner scannerWithString:[_userInputKelvin text]] scanLongLong:NULL])
    {
        [_userInputFahrenheit setTextFromDecimalNumber:[NSDecimalNumber kelvinToFahrenheit:[sender decimalNumberFromUserInput]]];

        [_userInputCelsius setTextFromDecimalNumber:[NSDecimalNumber kelvinToCelsius:[sender decimalNumberFromUserInput]]];
    }
}



- (IBAction)convertFahrenheit:(id)sender
{
    if ([[NSScanner scannerWithString:[_userInputFahrenheit text]] scanLongLong:NULL])
    {
        [_userInputKelvin setTextFromDecimalNumber:[NSDecimalNumber fahrenheitToKelvin:[sender decimalNumberFromUserInput]]];
    
        [_userInputCelsius setTextFromDecimalNumber:[NSDecimalNumber fahrenheitToCelsius:[sender decimalNumberFromUserInput]]];
    }
}



- (IBAction)convertCelsius:(id)sender
{
    if ([[NSScanner scannerWithString:[_userInputCelsius text]] scanLongLong:NULL])
    {
        [_userInputKelvin setTextFromDecimalNumber:[NSDecimalNumber celsiusToFahrenheit:[sender decimalNumberFromUserInput]]];

        [_userInputFahrenheit setTextFromDecimalNumber:[NSDecimalNumber celsiusToFahrenheit:[sender decimalNumberFromUserInput]]];
    }
}



- (IBAction)stopEditing:(id)sender
{

    [self.view endEditing:YES];

}


@end
