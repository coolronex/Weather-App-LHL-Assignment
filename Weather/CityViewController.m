//
//  CityViewController.m
//  Weather
//
//  Created by Aaron Chong on 1/24/18.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "CityViewController.h"
#import "DetailedViewController.h"

@interface CityViewController ()

//@property (nonatomic, strong) DetailedViewController *detailedViewController;
// we do this if everyone needs to use detailed view controller

@end

@implementation CityViewController

- (instancetype)initWithCity:(City *)city {
    
    self = [super init];
    if (self) {
        self.city = city;
        self.title = self.city.name;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(50, 150, 150, 44)];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [btn setTitle:@"Weather Details" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(showWeatherDetails) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)showWeatherDetails {
    
    DetailedViewController *detailedViewController = [[DetailedViewController alloc] init];
    detailedViewController.cityWeather = self.city.weather; //same as bottom line
//  self.detailedViewController.cityWeather = self.city.weather;
//  we do this if everyone needs to use detailed view controller
    
    [self.navigationController pushViewController:detailedViewController animated:YES];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
