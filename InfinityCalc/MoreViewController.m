//
//  MoreViewController.m
//  InfinityCalc
//
//  Created by Connor Koehler on 9/15/13.
//
//

#import "MoreViewController.h"

@interface MoreViewController ()
@property UILabel *decimalLabel;
@end

@implementation MoreViewController


@synthesize theLabel, theStepper, theSwitch, theSegmentedControl, answer, theButton, theTextField, view1, view2, theLabeliPad, theStepperiPad, theSegmentedControliPad, nightMode, nightModeiPad, degRad, degRadiPad, moreTableView, decimalLabel;





- (void)viewDidLoad
{
    
    [super viewDidLoad];
    self.screenName = @"More Screen";
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

-(IBAction)degreesRadians:(UISegmentedControl *)sender{
    
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
        
        
        
        if (sender.selectedSegmentIndex == 0) {
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


-(IBAction)colorChanged:(UISegmentedControl *)sender{
    
    NSLog(@"Color Changed");
    
    NSString *deviceType = [UIDevice currentDevice].model;
    if ([deviceType isEqualToString:@"iPad"]) {
        [self iPadColor];
    }else if ([deviceType isEqualToString:@"iPad Simulator"]){
        [self iPadColor];
    }else{
        
        if (sender.selectedSegmentIndex == 0) {
            theTempString = @"White";
            
            NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
            [defaults setObject:theTempString forKey:@"theTempString"];
            [defaults synchronize];
            NSLog(@"Data saved");
        }else if(sender.selectedSegmentIndex == 1) {
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
        
        
        double theValue = [sender value];
        NSLog(@"%f", theValue);
        int temp = theValue;
        [theLabel setText:[NSString stringWithFormat:@"%1i", temp]];
        [self.decimalLabel setText:[NSString stringWithFormat:@"%1i", temp]];
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

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    // Return the number of sections.
    
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    // Return the number of rows in the section.
    if (section==0) {
        return 3;
    }else if(section==1){
        return 4;
    }else if(section == 2){
        return 4;
    }else{
        return 0;
    }

}
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if (section==0) {
        return @"Settings";
    }else if(section==1){
        return @"Help us grow:";
    }else if(section == 2){
        return @"Lordtechy Productions on...";
    }else{
        return @"We screwed up, sorry :(";
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
    NSArray *sectOne = [[NSArray alloc]initWithObjects:@"Background Theme", @"Decimals to round to:", @"Degrees/Radians", nil];
    NSArray *sectTwo = [[NSArray alloc]initWithObjects:@"Share on Facebook", @"Tweet about us", @"Rate us on the app store", @"Send us feedback!", nil];
    NSArray *sectThree = [[NSArray alloc]initWithObjects:@"Facebook", @"Twitter", @"Google+", @"The web", nil];
    cell.accessoryType = UITableViewCellAccessoryNone;

    cell.accessoryView = nil;
    if (indexPath.section==0) {
        cell.selectionStyle= UITableViewCellSelectionStyleNone;

        cell.textLabel.text = [sectOne objectAtIndex:indexPath.row];
        if (indexPath.row==0) {//background theme
            UISegmentedControl *backgroundTheme = [[UISegmentedControl alloc]initWithItems:[NSArray arrayWithObjects:@"Light", @"Dark", nil]];
            [backgroundTheme addTarget:self action:@selector(colorChanged:) forControlEvents:UIControlEventValueChanged];
            cell.accessoryType = UITableViewCellAccessoryNone;
            cell.accessoryView = backgroundTheme;
            if ([[defaults objectForKey:@"theTempString"] isEqualToString:@"White"]){
                [backgroundTheme setSelectedSegmentIndex:0];
            }else{
                [backgroundTheme setSelectedSegmentIndex:1];
            }
            
        }else if(indexPath.row==1){ //decimals to round to
            
            cell.selectionStyle= UITableViewCellSelectionStyleNone;
            UIStepper *decimalStepper = [[UIStepper alloc]initWithFrame:CGRectMake(30, 0, 94, 23)];
            self.decimalLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 4, 20, 20)];
            decimalLabel.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;

            [decimalLabel setText:@"16"];
            UIView *accessory = [[UIView alloc]initWithFrame:CGRectMake(0,0, 114, 25)];
            accessory.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
            [accessory addSubview:decimalStepper];
            [accessory addSubview:decimalLabel];
            cell.accessoryType = UITableViewCellAccessoryNone;
            cell.accessoryView = accessory;
            [decimalStepper setValue:ggDecimalInt2];
            decimalStepper.maximumValue = 16;
            [decimalLabel setText:[NSString stringWithFormat:@"%1i", ggDecimalInt2]];
            [decimalStepper addTarget:self action:@selector(valueChanged:) forControlEvents:UIControlEventValueChanged];
        }else if(indexPath.row == 2){ //degrees/radains
            UISegmentedControl *degRad = [[UISegmentedControl alloc]initWithItems:[NSArray arrayWithObjects:@"Deg", @"Rad", nil]];
            cell.accessoryType = UITableViewCellAccessoryNone;
            cell.accessoryView = degRad;
            if (ggdegrees){
                [degRad setSelectedSegmentIndex:1];
            }else{
                [degRad setSelectedSegmentIndex:0];
            }
            [degRad addTarget:self action:@selector(degreesRadians:) forControlEvents:UIControlEventValueChanged];
        }
    }else if(indexPath.section==1){
        cell.textLabel.text = [sectTwo objectAtIndex:[indexPath row]];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.accessoryView = nil;
    }else if(indexPath.section == 2){
        cell.textLabel.text = [sectThree objectAtIndex:[indexPath row]];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.accessoryView = nil;
    }else{
    }
    
    
    NSUInteger row = [indexPath row];
    
    return cell;
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

#pragma mark - Table view delegate

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    if (section==2) {
        return [NSString stringWithFormat: @"v. %@", [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]];
    }else{
        return nil;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    if (indexPath.section == 1) {
        if (indexPath.row == 0) {
            if([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) //check if Facebook Account is linked
            {
                mySLComposerSheet = [[SLComposeViewController alloc] init]; //initiate the Social Controller
                mySLComposerSheet = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook]; //Tell him with what social plattform to use it, e.g. facebook or twitter
                [mySLComposerSheet setInitialText:@"Check out this cool calculator on the App Store called infinityCalc: http://www.appstore.com/infinityCalc\nIt has a cool and simple interface!"]; //the message you want to post
                
                AppDelegate *delegate = [[AppDelegate alloc]init];
                [self presentViewController:mySLComposerSheet animated:YES completion:nil];
            }
            
        }else if(indexPath.row ==1){
            if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter])
            {
                mySLComposerSheetTwitter = [[SLComposeViewController alloc] init]; //initiate the Social Controller
                mySLComposerSheetTwitter = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter]; //Tell him with what social plattform to use it, e.g. facebook or twitter
                [mySLComposerSheetTwitter setInitialText:@"Check out this cool calculator on the App Store called infinityCalc: http://www.appstore.com/infinityCalc"]; //the message you want to post
                
                AppDelegate *delegate = [[AppDelegate alloc]init];
                [self presentViewController:mySLComposerSheetTwitter animated:YES completion:nil];
                
            }
            
            
        }else if(indexPath.row ==2){
            [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"itms://itunes.apple.com/us/app/infinitycalc/id480497184"]];
            
            
            //[[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"itms-apps://itunes.apple.com/WebObjects/MZStore.woa/wa/viewContentsUserReviews?id=546868906&onlyLatestVersion=true&pageNumber=0&sortOrdering=1&type=Purple+Software"]];
        }else if(indexPath.row ==3){
            [self emailExport];
        }
    }else if(indexPath.section == 2){
        //WebViewController *web = [[WebViewController alloc]init];
        NSString *url = @"";
        AppDelegate *delegate = [[AppDelegate alloc]init];
        NSString *trackedEventLabel;
        if (indexPath.row == 0) {
            
            if ([[UIApplication sharedApplication]canOpenURL:[NSURL URLWithString:@"fb://profile/243070252449615"]]) {
                url = @"fb://profile/243070252449615";
            }else{
                url = @"http://www.facebook.com/LordtechyProductions";
            }
            
            
            
            trackedEventLabel = @"Open Facebook On Web";
            
        }else if (indexPath.row == 1){
            if ([[UIApplication sharedApplication]canOpenURL:[NSURL URLWithString:@"twitter://user?id=546678712"]]) {
                url = @"twitter://user?id=546678712";
            }else{
                url = @"http://www.twitter.com/lordtechy";
            }
            
        }else if (indexPath.row == 2){
            trackedEventLabel = @"Open Google+ On Web";
            url = @"http://plus.lordtechy.com";
            
        }else if (indexPath.row == 3){
            trackedEventLabel = @"Open Website";
            url=@"http://www.lordtechy.com";
        }
        
        
        [[UIApplication sharedApplication]openURL:[NSURL URLWithString:url]];
        //[web setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
        //[self presentModalViewController:web animated:YES];
        //[web loadURL:url];
        
    }
    
    
    [moreTableView deselectRowAtIndexPath:indexPath animated:YES];
    
}

-(void)emailExport{
    if ([MFMailComposeViewController canSendMail]) {
        
        MFMailComposeViewController *mail = [[MFMailComposeViewController alloc]init];
        
        mail.mailComposeDelegate = self;
        
        [mail setSubject:@"InfinityCalc Feedback"];
        
        [mail setMessageBody:[NSString stringWithFormat:@"Version: %@\niOS Version: %@\n Device: %@\n--------------------------\nLordtechy Support,\n", [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"], [[UIDevice currentDevice] systemVersion], [UIDevice currentDevice].model] isHTML:NO];
        
        [mail setToRecipients:[NSArray arrayWithObjects:@"support@lordtechy.com", nil]];
        
        
        
        mail.modalPresentationStyle = UIModalPresentationPageSheet;
        [self presentViewController:mail animated:YES completion:nil];
        
        NSLog(@"Mail modal view presented");
        
    }else{
        
        UIAlertView *theAlert = [[UIAlertView alloc]initWithTitle:@"Error" message:@"Email is not supported on your device. Please check to make sure you have an account set up in Mail." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        
        
        theAlert.tag = 1;
        [theAlert show];
        NSLog(@"Finished Alert");
    }
    
}


@end
