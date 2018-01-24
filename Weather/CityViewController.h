//
//  CityViewController.h
//  Weather
//
//  Created by Aaron Chong on 1/24/18.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"

@interface CityViewController : UIViewController

@property (nonatomic,strong) City *city;

- (instancetype)initWithCity:(City *)city;
- (void) showWeatherDetails;

@end
