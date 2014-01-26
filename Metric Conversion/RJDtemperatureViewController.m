//
//  RJDtemperatureViewController.m
//  Metric Conversion
//
//  Created by Ryan J Dobrynski on 1/15/14.
//  Copyright (c) 2014 Ryan J Dobrynski. All rights reserved.
//

#import "RJDtemperatureViewController.h"




@interface RJDtemperatureViewController (convertTemperature)
- (NSString *)convertTemperature:(long)fahrenheitCelsiusSelectorPosition
                        withArg2:(long)positiveNegativeSelectorPosition
                        withArg3:(NSString *)userInputData;

@end

@interface RJDtemperatureViewController ()

@property (weak, nonatomic) IBOutlet UILabel *displayResult;
@property (weak, nonatomic) IBOutlet UISegmentedControl *fahrenheitCelsiusSelector;
@property (weak, nonatomic) IBOutlet UISegmentedControl *positiveNegativeSelector;
@property (weak, nonatomic) IBOutlet UITextField *userInput;

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

    if ([[NSScanner scannerWithString:[_userInput text]] scanUnsignedLongLong:NULL])
    {
        _displayResult.text = [self convertTemperature:_fahrenheitCelsiusSelector.selectedSegmentIndex
                                                        withArg2:_positiveNegativeSelector.selectedSegmentIndex
                                                        withArg3:_userInput.text];
    
    } else {
        _displayResult.text = @"";
    
    }

}







- (IBAction)stopEditing:(id)sender
{

    [self.view endEditing:YES];

}


@end
