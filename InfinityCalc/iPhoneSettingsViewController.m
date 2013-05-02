//
//  iPhoneSettingsViewController.m
//  InfinityCalc
//
//  Created by Max Greenwald on 1/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "iPhoneSettingsViewController.h"


@implementation iPhoneSettingsViewController

@synthesize theScrollView, contentView,theStepper, theLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)valueChanged:(UIStepper *)sender{
    double theValue = [sender value];
    NSLog(@"%f", theValue);
    int temp = theValue;
    [theLabel setText:[NSString stringWithFormat:@"%1i", temp]];
    ggDecimalInt = [sender value];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:ggDecimalInt forKey:@"decimal"];
    [defaults synchronize];
    NSLog(@"Data saved");
    
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



-(IBAction)cancel:(id)sender{
    
    
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
 
    // Do any additional setup after loading the view from its nib.

    [self.theScrollView addSubview:self.contentView];
    self.theScrollView.contentSize = self.contentView.bounds.size;
    
    NSLog(@"%i", ggDecimalInt);
    
    [theStepper setValue:ggDecimalInt];
    
    [theLabel setText:[NSString stringWithFormat:@"%1i", ggDecimalInt]];
}



- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    
    self.theScrollView  = nil;
    self.contentView = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    
    return YES;
}

@end
