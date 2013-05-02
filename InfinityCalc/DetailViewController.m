//
//  DetailViewController.m
//  InfinityCalc
//
//  Created by Max Greenwald on 2/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DetailViewController.h"
#import "ViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

@synthesize theLabel, theStepper, theSwitch, theSegmentedControl, answer, theButton, theTextField, view1, view2, theLabeliPad, theStepperiPad, theSegmentedControliPad, nightMode, nightModeiPad, degRad, degRadiPad;

-(IBAction)switchToNightMode:(id)sender{
    NSString *deviceType = [UIDevice currentDevice].model;
    if ([deviceType isEqualToString:@"iPad"]) {
        if (self.nightModeiPad.selectedSegmentIndex == 0) {
            theTempString = @"Off";
            
            NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
            [defaults setObject:theTempString forKey:@"theTempString"];
            [defaults synchronize];
            NSLog(@"Data saved");
        }else {
            theTempString = @"On";
            
            NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
            [defaults setObject:theTempString forKey:@"theTempString"];
            [defaults synchronize];
            NSLog(@"Data saved");
        }
        
        
        ViewController *theViewController = [[ViewController alloc]init];
        [theViewController viewWillAppear:YES];
        
        
    }else if ([deviceType isEqualToString:@"iPad Simulator"]){
        if (self.nightModeiPad.selectedSegmentIndex == 0) {
            theTempString = @"Off";
            
            NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
            [defaults setObject:theTempString forKey:@"theTempString"];
            [defaults synchronize];
            NSLog(@"Data saved");
        }else {
            theTempString = @"On";
            
            NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
            [defaults setObject:theTempString forKey:@"theTempString"];
            [defaults synchronize];
            NSLog(@"Data saved");
        }
        
        
        ViewController *theViewController = [[ViewController alloc]init];
        [theViewController viewWillAppear:YES];
        
    }else{
        
        
        
        if (self.nightMode.selectedSegmentIndex == 0) {
            NSLog(@"0");
            theTempString = @"Off";
            
            NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
            [defaults setObject:theTempString forKey:@"theTempString"];
            [defaults synchronize];
            NSLog(@"Data saved");
        }else {
            NSLog(@"1");
            theTempString = @"On";
            
            NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
            [defaults setObject:theTempString forKey:@"theTempString"];
            [defaults synchronize];
            NSLog(@"Data saved");
        }
        
        ViewController *theViewController = [[ViewController alloc]init];
        [theViewController viewWillAppear:YES];
        
    }

}

-(IBAction)degreesRadians:(id)sender{
    
    // IF GGDEGREES = NO, then it is degrees, if it is YES, then it is radians;
    
    NSString *deviceType = [UIDevice currentDevice].model;
    if ([deviceType isEqualToString:@"iPad"]) {
        if (self.degRadiPad.selectedSegmentIndex == 0) {
            ggdegrees = NO;
            
            NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
            [defaults setBool:ggdegrees forKey:@"degrees"];
            [defaults synchronize];
            NSLog(@"Data saved");
        }else {
            ggdegrees = YES;
            
            NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
            [defaults setBool:ggdegrees forKey:@"degrees"];
            [defaults synchronize];
            NSLog(@"Data saved");
        }
        
        
        ViewController *theViewController = [[ViewController alloc]init];
        [theViewController viewWillAppear:YES];
        
        
    }else if ([deviceType isEqualToString:@"iPad Simulator"]){
        if (self.degRadiPad.selectedSegmentIndex == 0) {
            ggdegrees = NO;
            
            NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
            [defaults setBool:ggdegrees forKey:@"degrees"];
            [defaults synchronize];
            NSLog(@"Data saved");
        }else {
            ggdegrees = YES;
            
            NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
            [defaults setBool:ggdegrees forKey:@"degrees"];
            [defaults synchronize];
            NSLog(@"Data saved");
        }
        
        
        ViewController *theViewController = [[ViewController alloc]init];
        [theViewController viewWillAppear:YES];
        
        
    }else{
        
        
        
        if (self.degRad.selectedSegmentIndex == 0) {
            ggdegrees = NO;
            
            NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
            [defaults setBool:ggdegrees forKey:@"degrees"];
            [defaults synchronize];
            NSLog(@"Data saved");
        }else {
            ggdegrees = YES;
            
            NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
            [defaults setBool:ggdegrees forKey:@"degrees"];
            [defaults synchronize];
            NSLog(@"Data saved");
        }
        
        
        ViewController *theViewController = [[ViewController alloc]init];
        [theViewController viewWillAppear:YES];
        

        
    }
}

-(void)iPadColor{
    if (self.theSegmentedControliPad.selectedSegmentIndex == 0) {
        theTempString = @"White";
        
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:theTempString forKey:@"theTempString"];
        [defaults synchronize];
        NSLog(@"Data saved");
    }else if(self.theSegmentedControliPad.selectedSegmentIndex == 1) {
        theTempString = @"Black";
        
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:theTempString forKey:@"theTempString"];
        [defaults synchronize];
        NSLog(@"Data saved");
    }else if(self.theSegmentedControliPad.selectedSegmentIndex == 2) {
        theTempString = @"Red";
        
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:theTempString forKey:@"theTempString"];
        [defaults synchronize];
        NSLog(@"Data saved");
    }else if(self.theSegmentedControliPad.selectedSegmentIndex == 3) {
        theTempString = @"Green";
        
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:theTempString forKey:@"theTempString"];
        [defaults synchronize];
        NSLog(@"Data saved");
    }else if(self.theSegmentedControliPad.selectedSegmentIndex == 4) {
        theTempString = @"Blue";
        
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:theTempString forKey:@"theTempString"];
        [defaults synchronize];
        NSLog(@"Data saved");
    }else if(self.theSegmentedControliPad.selectedSegmentIndex == 5) {
        theTempString = @"Orange";
        
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:theTempString forKey:@"theTempString"];
        [defaults synchronize];
        NSLog(@"Data saved");
    }else if(self.theSegmentedControliPad.selectedSegmentIndex == 6) {
        theTempString = @"Purple";
        
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:theTempString forKey:@"theTempString"];
        [defaults synchronize];
        NSLog(@"Data saved");
    }
    
    
    ViewController *theViewController = [[ViewController alloc]init];
    [theViewController viewWillAppear:YES];
    
    
}


-(IBAction)colorChanged:(id)sender{
    
    NSLog(@"Color Changed");
    
    NSString *deviceType = [UIDevice currentDevice].model;
    if ([deviceType isEqualToString:@"iPad"]) {
        [self iPadColor];
    }else if ([deviceType isEqualToString:@"iPad Simulator"]){
        [self iPadColor];
    }else{
    
        if (self.theSegmentedControl.selectedSegmentIndex == 0) {
            theTempString = @"White";
            
            NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
            [defaults setObject:theTempString forKey:@"theTempString"];
            [defaults synchronize];
            NSLog(@"Data saved");
        }else if(self.theSegmentedControl.selectedSegmentIndex == 1) {
            theTempString = @"Black";
            
            NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
            [defaults setObject:theTempString forKey:@"theTempString"];
            [defaults synchronize];
            NSLog(@"Data saved");
        }else if(self.theSegmentedControl.selectedSegmentIndex == 2) {
            theTempString = @"Red";
            
            NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
            [defaults setObject:theTempString forKey:@"theTempString"];
            [defaults synchronize];
            NSLog(@"Data saved");
        }else if(self.theSegmentedControl.selectedSegmentIndex == 3) {
            theTempString = @"Green";
            
            NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
            [defaults setObject:theTempString forKey:@"theTempString"];
            [defaults synchronize];
            NSLog(@"Data saved");
        }else if(self.theSegmentedControl.selectedSegmentIndex == 4) {
            theTempString = @"Blue";
            
            NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
            [defaults setObject:theTempString forKey:@"theTempString"];
            [defaults synchronize];
            NSLog(@"Data saved");
        }else if(self.theSegmentedControl.selectedSegmentIndex == 5) {
            theTempString = @"Orange";
            
            NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
            [defaults setObject:theTempString forKey:@"theTempString"];
            [defaults synchronize];
            NSLog(@"Data saved");
        }else if(self.theSegmentedControl.selectedSegmentIndex == 6) {
            theTempString = @"Purple";
            
            NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
            [defaults setObject:theTempString forKey:@"theTempString"];
            [defaults synchronize];
            NSLog(@"Data saved");
            }
    
        ViewController *theViewController = [[ViewController alloc]init];
        [theViewController viewWillAppear:YES];
   
    }


    
    NSLog(@"the value of theTempString before the viewwillappear method is: %@", theTempString);
    
    
    
    //[theViewController viewWillAppear:YES];
    
    NSLog(@"the value of theTempString after the viewwillappear method is: %@", theTempString);
    
 
    NSLog(@"the value of theTempString at the end of the 'color changed' method is: %@", theTempString);
    
    
    
    
}



-(IBAction)valueChanged:(UIStepper *)sender{
    
    NSString *deviceType = [UIDevice currentDevice].model;
    if ([deviceType isEqualToString:@"iPad"]) {
        double theValue = [theStepperiPad value];
        NSLog(@"%f", theValue);
        int temp = theValue;
        [theLabeliPad setText:[NSString stringWithFormat:@"%1i", temp]];
        ggDecimalInt2 = [sender value];
        
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:ggDecimalInt2 forKey:@"decimal2"];
        [defaults synchronize];
        NSLog(@"Data saved");
    }else if ([deviceType isEqualToString:@"iPad Simulator"]){
        double theValue = [theStepperiPad value];
        NSLog(@"%f", theValue);
        int temp = theValue;
        [theLabeliPad setText:[NSString stringWithFormat:@"%1i", temp]];
        ggDecimalInt2 = [sender value];
        
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setInteger:ggDecimalInt2 forKey:@"decimal2"];
        [defaults synchronize];
        NSLog(@"Data saved");
    }else{
    
    
    double theValue = [theStepper value];
    NSLog(@"%f", theValue);
    int temp = theValue;
    [theLabel setText:[NSString stringWithFormat:@"%1i", temp]];
    ggDecimalInt2 = [sender value];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:ggDecimalInt2 forKey:@"decimal2"];
    [defaults synchronize];
    NSLog(@"Data saved");
    }
    
}

    
    
    
    
    
    





- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    
    NSString *deviceType = [UIDevice currentDevice].model;
    if ([deviceType isEqualToString:@"iPad"]) {
        self.view = self.view2;

    }else if ([deviceType isEqualToString:@"iPad Simulator"]){
        self.view = self.view2;
    }else{
        self.view = self.view1;

    }
    
    [super viewDidLoad];
    
    NSLog(@"View Loaded");
    [theStepper setValue:ggDecimalInt2];
    [theStepperiPad setValue:ggDecimalInt2];
    
    [theLabel setText:[NSString stringWithFormat:@"%1i", ggDecimalInt2]];
    [theLabeliPad setText:[NSString stringWithFormat:@"%1i", ggDecimalInt2]];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSLog(@"%@", theTempString);
    theTempString = [defaults objectForKey:@"theTempString"];
    ggdegrees = [defaults boolForKey:@"degrees"];
    if ([theTempString isEqualToString:@"White"]) {
        [theSegmentedControl setSelectedSegmentIndex:0];
        [theSegmentedControliPad setSelectedSegmentIndex:0];
    }else if ([theTempString isEqualToString:@"Black"]){
        [theSegmentedControl setSelectedSegmentIndex:1];
        [theSegmentedControliPad setSelectedSegmentIndex:1];
    }else if ([theTempString isEqualToString:@"Red"]){
        [theSegmentedControl setSelectedSegmentIndex:2];
        [theSegmentedControliPad setSelectedSegmentIndex:2];
    }else if ([theTempString isEqualToString:@"Green"]){
        [theSegmentedControl setSelectedSegmentIndex:3];
        [theSegmentedControliPad setSelectedSegmentIndex:3];
    }else if ([theTempString isEqualToString:@"Blue"]){
        [theSegmentedControl setSelectedSegmentIndex:4];
        [theSegmentedControliPad setSelectedSegmentIndex:4];
    }else if ([theTempString isEqualToString:@"Orange"]){
        [theSegmentedControl setSelectedSegmentIndex:5];
        [theSegmentedControliPad setSelectedSegmentIndex:5];
    }else if ([theTempString isEqualToString:@"Purple"]){
        [theSegmentedControl setSelectedSegmentIndex:6];
        [theSegmentedControliPad setSelectedSegmentIndex:6];
    }else {
        
    }
    
    if (ggdegrees) {
        [degRad setSelectedSegmentIndex:1];
        [degRadiPad setSelectedSegmentIndex:1];

    }else {
        [degRad setSelectedSegmentIndex:0];
        [degRadiPad setSelectedSegmentIndex:0];

    }
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

@end

