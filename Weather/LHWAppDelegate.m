//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"
#import "City.h"
#import "CityViewController.h"

@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];

    
    City *vancouver = [[City alloc] init];
    vancouver.name = @"Vancouver";
    City *berlin = [[City alloc] init];
    berlin.name = @"Berlin";
    City *seoul = [[City alloc] init];
    seoul.name = @"Seoul";
    City *mumbai = [[City alloc] init];
    mumbai.name = @"Mumbai";
    City *cairo = [[City alloc] init];
    cairo.name = @"Cairo";
    
    
    
    CityViewController *vancouverViewController = [[CityViewController alloc] initWithCity:vancouver];
    CityViewController *berlinViewController = [[CityViewController alloc]initWithCity: berlin];
    CityViewController *seoulViewController = [[CityViewController alloc] initWithCity: seoul];
    CityViewController *mumbaiViewController = [[CityViewController alloc] initWithCity:mumbai];
    CityViewController *cairoViewController = [[CityViewController alloc] initWithCity:cairo];
 
    UINavigationController *vancouverNavigationController = [[UINavigationController alloc] initWithRootViewController:vancouverViewController];
    UINavigationController *berlinNavigationController = [[UINavigationController alloc] initWithRootViewController:berlinViewController];
    UINavigationController *seoulNavigationController = [[UINavigationController alloc] initWithRootViewController:seoulViewController];
    UINavigationController *mumbaiNavigationController = [[UINavigationController alloc] initWithRootViewController:mumbaiViewController];
    UINavigationController *cairoNavigationController = [[UINavigationController alloc] initWithRootViewController:cairoViewController];
    
    
    self.rootController = [[UITabBarController alloc] init];
    self.window.rootViewController = self.rootController;
    self.rootController.viewControllers = @[vancouverNavigationController, berlinNavigationController, seoulNavigationController, mumbaiNavigationController, cairoNavigationController];
    
    
    [self.window makeKeyAndVisible];
    return YES;
    
    
    
    
}



@end
