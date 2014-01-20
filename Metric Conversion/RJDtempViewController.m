//
//  RJDTempViewController.m
//  Metric Conversion
//
//  Created by Ryan J Dobrynski on 1/15/14.
//  Copyright (c) 2014 Ryan J Dobrynski. All rights reserved.
//

#import "RJDTempViewController.h"



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



// converts user input to int, converts to other temp and pushes result to screen
- (IBAction)RJDtempConvert:(id)sender
{
    //converts input to int.
    if ([_RJDtempUserInput.text length] > 0) {
        NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
        NSNumber *tempUnsignedInt;
        NSNumber *tempSignedInt;
        switch (_RJDtempPosNegSelector.selectedSegmentIndex)
        {
            case 0:
                tempUnsignedInt = [numberFormatter numberFromString:_RJDtempUserInput.text];
                tempSignedInt = tempUnsignedInt;
                break;
                
            case 1:
                tempUnsignedInt = [numberFormatter numberFromString:_RJDtempUserInput.text];
                tempSignedInt = @(tempUnsignedInt.intValue - (tempUnsignedInt.intValue * 2));
                break;
        }
        
        //calculates temp translation and pushes to screen
        NSNumber *mathNumber;
        switch (_RJDtempFcSelector.selectedSegmentIndex)
        {
            case 0:
                mathNumber = @((tempSignedInt.intValue -32)* 5 / 9 );
                _RJDtempResults.text = [[[NSString alloc] initWithString:[mathNumber description]] stringByAppendingString:@" C"];
                break;
    
            case 1:
                mathNumber = @(tempSignedInt.intValue * 9 / 5 + 32 );
                _RJDtempResults.text = [[[NSString alloc] initWithString:[mathNumber description]] stringByAppendingString:@" F"];
                break;
        }
    }else if ([_RJDtempUserInput.text length] == 0) {
        _RJDtempResults.text = @"";
    }
}



- (IBAction)RJDtempEditClose:(id)sender
{
    [self.view endEditing:YES];
}


@end
