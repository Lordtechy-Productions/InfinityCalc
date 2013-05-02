//
//  CompoundInterest.m
//  InfinityCalc
//
//  Created by Max Greenwald on 6/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CompoundInterest.h"

@interface CompoundInterest ()

@end

@implementation CompoundInterest
@synthesize ALabel, ATextField, PLabel, PTextField, nlabel, nTextField, rlabel, rTextField, tLabel, tTextField, description, ALabel2, ATextField2, PLabel2, PTextField2, nlabel2, nTextField2, rlabel2, rTextField2, tTextField2, tLabel2, theScrollView, iPadView, iPhoneView, contentView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(BOOL) textFieldShouldReturn:(UITextField*)sender {
    [sender resignFirstResponder]; 
    return YES;
}


-(IBAction)calculateInterest:(id)sender{
    
    NSString *deviceType = [UIDevice currentDevice].model;
    if ([deviceType isEqualToString:@"iPad"]|| [deviceType isEqualToString:@"iPad Simulator"]) {

    
    int x = 0;
    int j = 0;
    if ([[ATextField text] isEqual:@""]) {
        x= x+1;
        j=1;
    }
    if ([[rTextField text] isEqual:@""]) {
        x= x+1;
        j=2;
    }
    if ([[PTextField text] isEqual:@""]) {
        x= x+1;
        j=3;

    }
    if ([[nTextField text] isEqual:@""]) {
        x= x+1;
        j=4;
    }
    if ([[tTextField text] isEqual:@""]) {
        x= x+1;
        j=5;
    }
    NSLog(@"The value of x is: %i", x);
    
    if (x>=2) {
        [ALabel setText:@"Please"];
        [PLabel setText:@"Enter"];
        [rlabel setText:@"More"];
        [nlabel setText:@"Inputs"];
        [tLabel setText:@"Thanks"];
        return;
    }else if(x==0){
        [ALabel setText:@"All"];
        [PLabel setText:@"Inputs"];
        [rlabel setText:@"Entered"];
        [nlabel setText:@"Already"];
        [tLabel setText:@"Solved"];
    }else {
        [ALabel setText:@""];
        [PLabel setText:@""];
        [rlabel setText:@""];
        [nlabel setText:@""];
        [tLabel setText:@""];
    }
    double a = [[ATextField text]doubleValue];
    double p = [[PTextField text]doubleValue];
    double r = [[rTextField text]doubleValue];
    double n = [[nTextField text]doubleValue];
    double t = [[tTextField text]doubleValue];
    
    if (j==1) {
        a=p*(pow((1+(r/n)),n*t));
    }else if(j==2){
        r=n*((pow((a/p), 1/(n*t)))-1);
    }else if (j==3) {
        p = a/(pow((1+(r/n)),n*t));
    }else if(j==4){
        n = (-3*t*pow(r, 2) + sqrt(9*(pow(t, 2))*(pow(r, 4)) - 4*(log(a/p) - t*r)*(6)*(-2*t*pow(r, 3))))/(2*(log(a/p) - t*r)*(6));
        double f = (-3*t*pow(r, 2) - sqrt(9*(pow(t, 2))*(pow(r, 4)) - 4*(log(a/p) - t*r)*(6)*(-2*t*pow(r, 3))))/(2*(log(a/p) - t*r)*(6));
        if (f>0 || n<0) {
            n=f;
        }
    }else if(j==5){
        t = (log(a/p)/log(1+(r/n))/n);
    }
    
    [ALabel setText:[NSString stringWithFormat:@"%.15g", a]];
    [PLabel setText:[NSString stringWithFormat:@"%.15g", p]];
    [rlabel setText:[NSString stringWithFormat:@"%.15g", r]];
    [nlabel setText:[NSString stringWithFormat:@"%.15g", n]];
    [tLabel setText:[NSString stringWithFormat:@"%.15g", t]];
    
    }else {
        
        int x = 0;
        int j = 0;
        if ([[ATextField2 text] isEqual:@""]) {
            x= x+1;
            j=1;
        }
        if ([[rTextField2 text] isEqual:@""]) {
            x= x+1;
            j=2;
        }
        if ([[PTextField2 text] isEqual:@""]) {
            x= x+1;
            j=3;
            
        }
        if ([[nTextField2 text] isEqual:@""]) {
            x= x+1;
            j=4;
        }
        if ([[tTextField2 text] isEqual:@""]) {
            x= x+1;
            j=5;
        }
        NSLog(@"The value of x is: %i", x);
        
        if (x>=2) {
            [ALabel2 setText:@"Please"];
            [PLabel2 setText:@"Enter"];
            [rlabel2 setText:@"More"];
            [nlabel2 setText:@"Inputs"];
            [tLabel2 setText:@"Thanks"];
            return;
        }else if(x==0){
            [ALabel2 setText:@"All"];
            [PLabel2 setText:@"Inputs"];
            [rlabel2 setText:@"Entered"];
            [nlabel2 setText:@"Already"];
            [tLabel2 setText:@"Solved"];
        }else {
            [ALabel2 setText:@""];
            [PLabel2 setText:@""];
            [rlabel2 setText:@""];
            [nlabel2 setText:@""];
            [tLabel2 setText:@""];
        }
        double a = [[ATextField2 text]doubleValue];
        double p = [[PTextField2 text]doubleValue];
        double r = [[rTextField2 text]doubleValue];
        double n = [[nTextField2 text]doubleValue];
        double t = [[tTextField2 text]doubleValue];
        
        if (j==1) {
            a=p*(pow((1+(r/n)),n*t));
        }else if(j==2){
            r=n*((pow((a/p), 1/(n*t)))-1);
        }else if (j==3) {
            p = a/(pow((1+(r/n)),n*t));
        }else if(j==4){
            n = (-3*t*pow(r, 2) + sqrt(9*(pow(t, 2))*(pow(r, 4)) - 4*(log(a/p) - t*r)*(6)*(-2*t*pow(r, 3))))/(2*(log(a/p) - t*r)*(6));
            double f = (-3*t*pow(r, 2) - sqrt(9*(pow(t, 2))*(pow(r, 4)) - 4*(log(a/p) - t*r)*(6)*(-2*t*pow(r, 3))))/(2*(log(a/p) - t*r)*(6));
            if (f>0 || n<0) {
                n=f;
            }
        }else if(j==5){
            t = (log(a/p)/log(1+(r/n))/n);
        }
        
        [ALabel2 setText:[NSString stringWithFormat:@"%.15g", a]];
        [PLabel2 setText:[NSString stringWithFormat:@"%.15g", p]];
        [rlabel2 setText:[NSString stringWithFormat:@"%.15g", r]];
        [nlabel2 setText:[NSString stringWithFormat:@"%.15g", n]];
        [tLabel2 setText:[NSString stringWithFormat:@"%.15g", t]];
    }

}
- (void)viewDidLoad
{
    NSString *deviceType = [UIDevice currentDevice].model;

    if ([deviceType isEqualToString:@"iPad"]||[deviceType isEqualToString:@"iPad Simulator"]) {
        self.view = iPadView;
    }else {
        self.view = iPhoneView;
        [self.theScrollView addSubview:self.contentView];
        self.theScrollView.contentSize = self.contentView.bounds.size;
    }
    
    
    [super viewDidLoad];
    NSLog(@"CompoundInterest loaded.");
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

@end
