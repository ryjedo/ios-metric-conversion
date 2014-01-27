//
//  RJDtemperatureViewController+convertTemperature.h
//  Metric Conversion
//
//  Created by Ryan J Dobrynski on 1/23/14.
//  Copyright (c) 2014 Ryan J Dobrynski. All rights reserved.
//

#import "RJDtemperatureViewController.h"

@interface RJDtemperatureViewController (convertTemperature)

- (NSString *)convertTemperature:(NSString *)userInputData
                        withArg2:(long)fromUnitType
                        withArg3:(long)toUnitType;


/*
- (NSString *)convertTemperature:(long)fahrenheitCelsiusSelectorPosition
                        withArg2:(long)positiveNegativeSelectorPosition
                        withArg3:(NSString *)userInputData;
*/

@end
	