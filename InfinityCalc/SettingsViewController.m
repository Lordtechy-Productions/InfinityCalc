//
//  SettingsViewController.m
//  InfinityCalc
//
//  Created by Max Greenwald on 12/22/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "SettingsViewController.h"



@implementation SettingsViewController

@synthesize contentView, theLabel, theStepper, window;

-(IBAction)valueChanged:(UIStepper *)sender{
    
    double theValue = [sender value];
    NSLog(@"%f", theValue);
    int temp = theValue;
    [theLabel setText:[NSString stringWithFormat:@"%1i", temp]];
    ggDecimalInt2 = [sender value];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:ggDecimalInt2 forKey:@"decimal2"];
    [defaults synchronize];
    NSLog(@"Data saved");
    
}


-(IBAction)cancel:(id)sender{
    
    
    [self dismissModalViewControllerAnimated:YES];
    
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
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.facebook.com/thetechlord"]];
}

-(IBAction)email:(id)sender{
    
    if ([MFMailComposeViewController canSendMail]) {
        
        MFMailComposeViewController *mail = [[MFMailComposeViewController alloc]init];
        
        mail.mailComposeDelegate = self;
        
        [mail setSubject:@"InfinityCalc Support, Suggestions, and Feedback"];
        
        NSArray *toRecipients = [NSArray arrayWithObjects:@"foresight@lordtechy.com", nil];
        NSArray *Recipients = [NSArray arrayWithObjects:@"lordtechy@lordtechy.com", nil];
        
        [mail setToRecipients:toRecipients];
        [mail setCcRecipients:Recipients];
        
        NSString *emailBody = @"";
        
        [mail setMessageBody:emailBody isHTML:NO];
        
        mail.modalPresentationStyle = UIModalPresentationPageSheet;
        [self presentModalViewController:mail animated:YES];
        
        
    }else{
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Email is not supported on your device" delegate:nil cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        
        [alert show];
        
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



- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
   
    [super viewDidLoad];
    
    
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]
                                               initWithBarButtonSystemItem:UIBarButtonSystemItemDone
                                               target:self
                                              action:@selector(cancel:)];
    
    NSLog(@"View Loaded");
        [theStepper setValue:ggDecimalInt2];
    
    [theLabel setText:[NSString stringWithFormat:@"%1i", ggDecimalInt2]];
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
