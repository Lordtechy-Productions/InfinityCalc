//
//  MoreViewController.m
//  InfinityCalc
//
//  Created by Connor Koehler on 9/15/13.
//
//

#import "MoreViewController.h"

@interface MoreViewController ()

@end

@implementation MoreViewController


@synthesize theLabel, theStepper, theSwitch, theSegmentedControl, answer, theButton, theTextField, view1, view2, theLabeliPad, theStepperiPad, theSegmentedControliPad, nightMode, nightModeiPad, degRad, degRadiPad;



- (void)viewDidLoad
{
   
    [super viewDidLoad];
    self.navigationItem.title = @"More";
    UIBarButtonItem *left = [[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(done)];
    [self.navigationItem setLeftBarButtonItem:left];
    NSLog(@"yolo");
    
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

    
    
	// Do any additional setup after loading the view.
    
    
    
    
}

-(void)done{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(IBAction)lordtechy:(id)sender{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.lordtechy.com"]];
}

-(IBAction)twitter:(id)sender{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/#!/lordtechy"]];
}
-(IBAction)googlePlus:(id)sender{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://plus.google.com/b/118176538537721367413/"]];
}
-(IBAction)Facebook:(id)sender{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.facebook.com/LordtechyProductions"]];
}

-(IBAction)email:(id)sender{
    
    if ([MFMailComposeViewController canSendMail]) {
        
        MFMailComposeViewController *mail = [[MFMailComposeViewController alloc]init];
        
        mail.mailComposeDelegate = self;
        
        [mail setSubject:@"InfinityCalc Support, Suggestions, and Feedback"];
        
        NSArray *toRecipients = [NSArray arrayWithObjects:@"support@lordtechy.com", nil];
        
        
        [mail setToRecipients:toRecipients];
        
        NSString *emailBody = @"";
        
        [mail setMessageBody:emailBody isHTML:NO];
        
        mail.modalPresentationStyle = UIModalPresentationPageSheet;
        [self presentModalViewController:mail animated:YES];
        
        
    }else{
        
        UIAlertView *theAlert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Email is not supported on your device. Please check to make sure you have an account set up in Mail. Would you like to go there now?" delegate:self cancelButtonTitle:@"Yes"
                                                 otherButtonTitles:@"No", nil];
        
        [theAlert show];
        NSLog(@"Finished Alert");
    }
    
    
}

- (void)alertView:(UIAlertView *)theAlert clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 0) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"mailto://support@lordtechy.com"]];
        NSLog(@"Tapped Yes");
    }else{
        NSLog(@"Tapped No");
    }
}


- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
    switch (result) {
        case MFMailComposeResultCancelled:
            NSLog(@"Cancelled");
            break;
            
        case MFMailComposeResultSaved:
            NSLog(@"Saved");
            break;
            
        case MFMailComposeResultSent:
            NSLog(@"Sent");
            break;
            
        case MFMailComposeResultFailed:
            NSLog(@"Failed");
            break;
            
        default:
            NSLog(@"Mail not sent");
            break;
    }
    
    [self dismissModalViewControllerAnimated:YES];
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
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
