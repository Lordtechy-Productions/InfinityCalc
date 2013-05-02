//
//  AboutViewController.m
//  InfinityCalc
//
//  Created by Max Greenwald on 2/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AboutViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController
@synthesize view1, view2, theScrollView, contentview, contentview2;


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

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void) orientationChanged:(NSNotification *)object{
    
    UIDeviceOrientation deviceOrientation = [[object object] orientation ];
    
    if (deviceOrientation == UIDeviceOrientationPortrait || deviceOrientation == UIDeviceOrientationPortraitUpsideDown) {
        [self.theScrollView addSubview:self.contentview];
        self.theScrollView.contentSize = self.contentview.bounds.size;
    
    }else if(deviceOrientation == UIDeviceOrientationLandscapeLeft || deviceOrientation == UIDeviceOrientationLandscapeRight){
        [self.theScrollView addSubview:self.contentview2];
        self.theScrollView.contentSize = self.contentview2.bounds.size;
    }
    
}


- (void)viewDidLoad
{
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(orientationChanged:) name:UIDeviceOrientationDidChangeNotification object:nil];
    [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
    
    NSString *deviceType = [UIDevice currentDevice].model;
    NSLog(@"The device type is %@", deviceType);
    if ([deviceType isEqualToString:@"iPad"] ) {
        self.view = self.view1;
        NSLog(@"iPad");

        
    }else if([deviceType isEqualToString:@"iPad Simulator"]){
        self.view = self.view1;
        NSLog(@"iPad");
    
    }else{
         
        self.view = self.view2;
        if ([[UIDevice currentDevice] orientation] == UIDeviceOrientationPortrait || [[UIDevice currentDevice] orientation] == UIDeviceOrientationPortraitUpsideDown) {
            [self.theScrollView addSubview:self.contentview];
            self.theScrollView.contentSize = self.contentview.bounds.size;
            
        }else if([[UIDevice currentDevice] orientation] == UIDeviceOrientationLandscapeLeft || [[UIDevice currentDevice] orientation] == UIDeviceOrientationLandscapeRight){
            
            [self.theScrollView addSubview:self.contentview2];
            self.theScrollView.contentSize = self.contentview2.bounds.size;
        }
        NSLog(@"iPhone");
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
	return YES;
}

@end
