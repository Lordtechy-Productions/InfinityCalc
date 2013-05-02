//
//  AppDelegate.h
//  InfinityCalc
//
//  Created by Lordtechy on 11/30/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "TestFlight.h"
@class  ViewController;


@interface AppDelegate : UIResponder <UIApplicationDelegate>{

    UINavigationController *theNavigationController;
}

@property (strong, nonatomic) UIWindow *window;
@property (retain, nonatomic) UINavigationController *theNavigationController;
@property (strong, nonatomic) ViewController *viewController;



@end
