//
//  LogBaseChange.m
//  InfinityCalc
//
//  Created by Max Greenwald on 6/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "LogBaseChange.h"

@interface LogBaseChange ()


@end

@implementation LogBaseChange

@synthesize theImage, x, a, logln, top, bottom, final, iPhoneView, theScrollView, contentView;

-(IBAction)calculate:(id)sender{
    [self textFieldShouldReturn:x];
    [self textFieldShouldReturn:a];
    if (logln.selectedSegmentIndex == 0) {
        
        NSLog([NSString stringWithFormat:@"%.15g", [x.text doubleValue]]);
        NSString *xString = [x text];
        NSLog(@"%@", xString);
        double m = [[x text]doubleValue];
        double n = [[a text]doubleValue];
        
        top.text = [NSString stringWithFormat:@"log(%.15g)", m];
        bottom.text = [NSString stringWithFormat:@"log(%.15g)", [a.text doubleValue]];
        double j = (log10([x.text doubleValue]))/(log10(n));
        final.text = [NSString stringWithFormat:@"%.15g", j];
    }else {
        top.text = [NSString stringWithFormat:@"ln(%.15g)", [x.text doubleValue]];
        bottom.text = [NSString stringWithFormat:@"ln(%.15g)", [a.text doubleValue]];
        double j = (log([x.text doubleValue]))/(log([a.text doubleValue]));
        final.text = [NSString stringWithFormat:@"%.15g", j];

    }
}

-(IBAction)loglnChanged:(id)sender{
    if (logln.selectedSegmentIndex == 0) {
        theImage = [UIImage imageNamed:@"LogBase.png"];
    }else {
        theImage = [UIImage imageNamed:@"lnBase.png"];

    }
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder]; 
    return YES;
}


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
    
    a.delegate = self;
    x.delegate = self;
    

    NSString *deviceType = [UIDevice currentDevice].model;
    
    if ([deviceType isEqualToString:@"iPad"]||[deviceType isEqualToString:@"iPad Simulator"]) {
        //self.view = iPadView;
    }else {
        self.view = iPhoneView;
        [self.theScrollView addSubview:self.contentView];
        self.theScrollView.contentSize = self.contentView.bounds.size;
        [x isEditing];
    }
    [super viewDidLoad];
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
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
