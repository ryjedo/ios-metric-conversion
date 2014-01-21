//
//  RJDTempViewController.m
//  Metric Conversion
//
//  Created by Ryan J Dobrynski on 1/15/14.
//  Copyright (c) 2014 Ryan J Dobrynski. All rights reserved.
//

#import "RJDTempViewController.h"
#import "RJDtempConversion.h"


@interface RJDtempViewController ()

@property (weak, nonatomic) IBOutlet UILabel *RJDtempResults;
@property (weak, nonatomic) IBOutlet UISegmentedControl *RJDtempFcSelector;
@property (weak, nonatomic) IBOutlet UISegmentedControl *RJDtempPosNegSelector;
@property (weak, nonatomic) IBOutlet UITextField *RJDtempUserInput;

- (IBAction)RJDtempConvert:(id)sender;
- (IBAction)RJDtempEditClose:(id)sender;

@end


@implementation RJDtempViewController

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


- (IBAction)RJDtempConvert:(id)sender
{

    if ([_RJDtempUserInput.text length] > 0) {
        _RJDtempResults.text = [RJDtempConversion logger:_RJDtempFcSelector.selectedSegmentIndex withArg2:_RJDtempPosNegSelector.selectedSegmentIndex withArg3:_RJDtempUserInput.text];
    
    } else if ([_RJDtempUserInput.text length] == 0) {
        _RJDtempResults.text = @"";
    
    } else {
        NSLog(@"User input with neither empty nor populated.. Spooky.");
    
    }

}


- (IBAction)RJDtempEditClose:(id)sender
{

    [self.view endEditing:YES];

}


@end
