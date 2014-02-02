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




@interface RJDtemperatureViewController (convertTemperature)
- (NSString *)convertTemperature:(NSString *)userInputData
                        withArg2:(long)fromUnitType
                        withArg3:(long)toUnitType;
@end


@interface RJDtemperatureViewController ()

@property (weak, nonatomic) IBOutlet UITextField *userInputKelvin;
@property (weak, nonatomic) IBOutlet UITextField *userInputFahrenheit;
@property (weak, nonatomic) IBOutlet UITextField *userInputCelsius;

- (IBAction)calculateTemperature:(id)sender;

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





- (IBAction)calculateTemperature:(id)sender
{
    if ([[NSScanner scannerWithString:[sender text]] scanUnsignedLongLong:NULL]){
    switch ([sender tag])
    {
        // input is Kelven
        case 1:
            [_userInputFahrenheit setTextFromDecimalNumber:[[NSDecimalNumber alloc] initWithString:_userInputKelvin.text]];
            
            _userInputCelsius.text =    [self convertTemperature:_userInputKelvin.text
                                                        withArg2:[sender tag]
                                                        withArg3:2];
            
            NSLog(@"%@", [sender decimalNumberFromUserInput]);
            break;
            
        //input is Fahrenheit
        case 2:
            _userInputKelvin.text =     [self convertTemperature:_userInputFahrenheit.text
                                                        withArg2:[sender tag]
                                                        withArg3:1];
            
            _userInputCelsius.text =    [self convertTemperature:_userInputFahrenheit.text
                                                        withArg2:[sender tag]
                                                        withArg3:2];
            
            NSLog(@"%@", [sender decimalNumberFromUserInput]);
            break;
            
        //input is Celsius
        case 3:
            _userInputKelvin.text =     [self convertTemperature:_userInputCelsius.text
                                                        withArg2:[sender tag]
                                                        withArg3:1];
            
            _userInputFahrenheit.text = [self convertTemperature:_userInputCelsius.text
                                                        withArg2:[sender tag]
                                                        withArg3:2];
            
            NSLog(@"%@", [sender decimalNumberFromUserInput]);
            break;
            
        //input is Unknown
        default:
            _userInputKelvin.text = @"";
            _userInputFahrenheit.text = @"";
            _userInputCelsius.text = @"";
            break;
    }
    } else {
        
    }
    
}
    
    
    
/*
    switch ([sender tag]) {
        
        // input is Kelvin
        case 1:
            NSLog(@"%ld", [sender tag]);
            _userInputFahrenheit.text = @"1";
            _userInputCelsius.text = @"1";
            break;

        // input is Fahrenheit
        case 2:
            NSLog(@"%ld", [sender tag]);
            _userInputKelvin.text = @"2";
            _userInputCelsius.text = @"2";
            break;
            
        // input is Celsius
        case 3:
            NSLog(@"%ld", [sender tag]);
            _userInputKelvin.text = @"3";
            _userInputFahrenheit.text = @"3";
            break;
            
        // unexpexted input
        default:
            _userInputKelvin.text = @"";
            _userInputFahrenheit.text = @"";
            _userInputCelsius.text = @"";
            break;
    }
}
*/
 
 
 
/*
- (IBAction)calculateTemperature:(id)sender
{

    if ([[NSScanner scannerWithString:[_userInput text]] scanUnsignedLongLong:NULL])
    {
        _displayResult.text = [self convertTemperature:_fahrenheitCelsiusSelector.selectedSegmentIndex
                                                        withArg2:_positiveNegativeSelector.selectedSegmentIndex
                                                        withArg3:_userInput.text];
    
    } else {
        _displayResult.text = @"";
    
    }

}
*/


- (IBAction)stopEditing:(id)sender
{

    [self.view endEditing:YES];

}


@end
