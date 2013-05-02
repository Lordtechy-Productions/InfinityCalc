//
//  iPhoneViewController.m
//  InfinityCalc
//
//  Created by Max Greenwald on 12/18/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "iPhoneViewController.h"
#import "MoreTableViewController.h"


@implementation iPhoneViewController

@synthesize MPlus,MMinus, MClear, MRecall, Clear, Negative, Multiply, Subtract, Add, Equals, Seven, Eight, Nine, Four, Five, Six, One, Two, Three, Zero, thePoint, Squared, Cubed, SquareRoot, Backspace, Info, Power, Inverse, Pi, Divide, memoryDisplay, Memory, display, sin, cos, tan, percent;



- (CalcEngine *)engine{
    if (!engine) engine = [[CalcEngine alloc]init]; // allocates the object brain if not already done (!brain) is a BOOL asking is there or is there not
    return engine;
}

-(void) orientationChanged:(NSNotification *)object{
    
    UIDeviceOrientation deviceOrientation = [[object object] orientation ];
    
    if (deviceOrientation == UIDeviceOrientationPortrait || deviceOrientation == UIDeviceOrientationPortraitUpsideDown) {
        MPlus.frame = CGRectMake(87,44,69,40);
        MMinus.frame = CGRectMake(164,44,69,40);
        MClear.frame = CGRectMake(10,44,69,40);
        MRecall.frame = CGRectMake(241,44,69,40);
        Clear.frame = CGRectMake(10,92,69,40);
        Negative.frame = CGRectMake(87,92,69,40);
        Divide.frame = CGRectMake(164,92,69,40);
        Multiply.frame = CGRectMake(241,92,69,40);
        Subtract.frame = CGRectMake(241,140,69,40);
        Add.frame = CGRectMake(241,188,69,40);
        Seven.frame = CGRectMake(10,140,69,40);
        Eight.frame = CGRectMake(87,140,69,40);
        Nine.frame = CGRectMake(164,140,69,40);
        Four.frame = CGRectMake(10,188,69,40);
        Five.frame = CGRectMake(87,188,69,40);
        Six.frame = CGRectMake(164,188,69,40);
        One.frame = CGRectMake(10,236,69,40);
        Two.frame = CGRectMake(87,236,69,40);
        Three.frame = CGRectMake(164,236,69,40);
        Zero.frame = CGRectMake(10,284,146,40);
        thePoint.frame = CGRectMake(164,284,69,40);
        Equals.frame = CGRectMake(241,236,69,88);
        
        Squared.frame = CGRectMake(10,332,69,40);
        Cubed.frame = CGRectMake(87,332,69,40);
        SquareRoot.frame = CGRectMake(164,332,69,40);
        Backspace.frame = CGRectMake(241,332,69,40);
        Info.frame = CGRectMake(10,380,69,40);
        Power.frame = CGRectMake(87,380,69,40);
        Inverse.frame = CGRectMake(164,380,69,40);
        Pi.frame = CGRectMake(241,380,69,40);
        Memory.frame = CGRectMake(88,428,68,21);
        memoryDisplay.frame = CGRectMake(164,428,146,21);
        display.frame = CGRectMake(10,0,300,36);
        
        sin.frame = CGRectMake(379,44,69,40);
        cos.frame = CGRectMake(379,44,69,40);
        tan.frame = CGRectMake(379,44,69,40);
        percent.frame = CGRectMake(379,44,69,40);
        
    }else if(deviceOrientation == UIDeviceOrientationLandscapeLeft || deviceOrientation == UIDeviceOrientationLandscapeRight){
        MClear.frame = CGRectMake(166,44,70,36);
        MPlus.frame = CGRectMake(244,44,70,36);
        MMinus.frame = CGRectMake(322,44,70,36);
        MRecall.frame = CGRectMake(400,44,70,36);
        Clear.frame = CGRectMake(166,86,70,36);
        Negative.frame = CGRectMake(244,86,70,36);
        Divide.frame = CGRectMake(322,86,70,36);
        Multiply.frame = CGRectMake(400,86,70,36);
        Seven.frame = CGRectMake(166,128,70,36);
        Eight.frame = CGRectMake(244,128,70,36);
        Nine.frame = CGRectMake(322,128,70,36);
        Subtract.frame = CGRectMake(400,128,70,36);
        Four.frame = CGRectMake(166,170,70,36);
        Five.frame = CGRectMake(244,170,70,36);
        Six.frame = CGRectMake(322,170,70,36);
        Add.frame = CGRectMake(400,170,70,36);
        One.frame = CGRectMake(166,212,70,36);
        Two.frame = CGRectMake(244,212,70,36);
        Three.frame = CGRectMake(322,212,70,36);
        Equals.frame = CGRectMake(400,212,70,78);
        Zero.frame = CGRectMake(166,254,148,36);
        thePoint.frame = CGRectMake(322,254,70,36);
        
        Squared.frame = CGRectMake(10,128,70,36);
        Cubed.frame = CGRectMake(88,128,70,36);
        SquareRoot.frame = CGRectMake(88,170,70,36);
        Backspace.frame = CGRectMake(88,254,70,36);
        Info.frame = CGRectMake(10,254,70,36);
        Power.frame = CGRectMake(10,170,70,36);
        Inverse.frame = CGRectMake(10,212,70,36);
        Pi.frame = CGRectMake(88,212,70,36);
        
        Memory.frame = CGRectMake(10, -5, 104, 33);
        memoryDisplay.frame = CGRectMake(10, 20, 138, 21);
        display.frame = CGRectMake(166, 5, 304, 36);
        
        sin.frame = CGRectMake(88,44,70,36);
        tan.frame = CGRectMake(10,86,70,36);
        cos.frame = CGRectMake(88,86,70,36);
        
        percent.frame = CGRectMake(10,44,70,36);
    }
}




-(IBAction)info{
    
    
    AppDelegate *delegate = [[UIApplication sharedApplication]delegate];
    
    MoreTableViewController *theTableView = [[MoreTableViewController alloc]initWithStyle:UITableViewStyleGrouped];
    
    delegate.theNavigationController = [[UINavigationController alloc]initWithRootViewController:theTableView];
    [delegate.theNavigationController setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    [delegate.theNavigationController setModalPresentationStyle:UIModalPresentationFullScreen];
    
    [self presentModalViewController:delegate.theNavigationController animated:YES];    
    
}

-(IBAction)digit:(id)sender{
    
    
    
    if (x<30) {
        x = x+1;
        NSString *digit = [[sender titleLabel]text]; // creates NSString digit that hold the string on the digit pressed
        
        if([digit isEqual:@"."]){ // if 1 
            
            NSRange pointRange = [[display text] rangeOfString:@"."]; // creates a range of only "."
            if(pointRange.location == NSNotFound) //checks if "." is already in the operand
            { // if 2
                
                if (midTypingNumber) { // if 3
                    [display setText:[[display text] stringByAppendingString:digit]]; // appends the display text by the number typed
                }else{ // else 3
                    [display setText:digit]; // if user has not yet typed a number, sets display to the digit
                    midTypingNumber = YES;
                    
                } // end 3
                
            }else{ // else 2
                if (midTypingNumber == NO) // corrects the problem where user types . at the start of their # and there is already a . from the previous number
                { // if 4
                    
                    [display setText:digit];
                    midTypingNumber = YES;
                    
                } // end 4
            } // end 2
            
        }else // this is what happens if the digit is not equal to "."
            
        { // else 1
            if (midTypingNumber) { // if 5
                [display setText:[[display text] stringByAppendingString:digit]];
            }else{ // else 5
                [display setText:digit];
                midTypingNumber = YES;
                
            } // end 5
        } // end 1
        
        double memory = [[self engine] showMemory];
        [memoryDisplay setText:[NSString stringWithFormat:@"%.16g", memory]];
    }else{
        
    }
    
    
    
}

-(IBAction)operation:(UIButton *)sender{
    
    
    
    NSString *operation = [[sender titleLabel]text]; // creates a string with the name of the operation
    
    
    
    
    if (midTypingNumber) { // if user is typing number then runs funtion setOperand and gives it value of display screen
        x=0;
        [[self engine] setNumber:[[display text] doubleValue]];
        midTypingNumber = NO; 
    }
    
    
    
    double result = [[self engine] performOp:operation]; 
    mydnh = [[NSDecimalNumberHandler alloc] initWithRoundingMode:NSRoundPlain
                                                           scale:ggDecimalInt2
                                                raiseOnExactness:NO
                                                 raiseOnOverflow:NO
                                                raiseOnUnderflow:NO
                                             raiseOnDivideByZero:NO];
    
    NSDecimalNumber *mydecimal;
    NSDecimalNumber *theResult;
    
    before = [NSString stringWithFormat:@"%f", result];
    range = NSMakeRange([before length]-1, 1);
    
    final = [before substringWithRange:range];
    
    if ([before isEqual:@"inf"]) {
        
        
        [display setText:@"inf"];
    }else {
        
        
        
        
        while ([final isEqual:@"0"]) {
            
            before = [before substringToIndex:[before length]-1];
            range = NSMakeRange([before length]-1, 1);
            final = [before substringWithRange:range];
            
        }
        while ([final isEqual:@"."]) {
            
            before = [before substringToIndex:[before length]-1];
            range = NSMakeRange([before length]-1, 1);
            final = [before substringWithRange:range];
            
        }
        
        
        
        
        mydecimal  = [NSDecimalNumber decimalNumberWithString:before];
        theResult = [mydecimal decimalNumberByRoundingAccordingToBehavior:mydnh];
        NSString *theTempString = [[NSString alloc]initWithFormat:@"%@", theResult];
        
        
        result = [theTempString doubleValue];
        
        [display setText:theTempString];
        
        /*if (result ==  0.07000000000000001) {
         NSString *aString = @"0.07";
         [display setText:aString];
         }else if(result==-0.07000000000000001){
         NSString *aString = @"-0.07";
         [display setText:aString];
         }else{*/
        //[display setText:[NSString stringWithFormat:@"%f", result]];
        
        //}
        
        NSDecimalNumber *mydecimal2;
        NSDecimalNumber *theResult2;
        
        double memory = [[self engine] showMemory];
        
        mydecimal2  = [NSDecimalNumber decimalNumberWithString:[NSString stringWithFormat:@"%g", memory]];
        theResult2 = [mydecimal2 decimalNumberByRoundingAccordingToBehavior:mydnh];
        NSString *tempString2 = [[NSString alloc]initWithFormat:@"%@", theResult2];
        
        double result2 = [tempString2 doubleValue];
        
        [memoryDisplay setText:[NSString stringWithFormat:@"%g", result2]]; 
    }
}


-(IBAction)backspace{
    
    
    
    if ([[display text] isEqual:@"0"]) {
        
        
        
        
    }else{
        
        if ([[display text] isEqual:@""]) {
            
            
            
        }else{
            
            x = x-1;
            
            NSLog(@"%i", x);
            
            NSMutableString *string = (NSMutableString*)[display text];
            
            int length = [string length];
            
            NSString *temp = [string substringToIndex:length-1];
            
            int length2 = length-1;
            
            if (length2 == 0) {
                temp = @"0";
            }
            
            [display setText:[NSString stringWithFormat:@"%@",temp]];
            
            [[self engine]setNumber:[[display text]doubleValue]];
            
        }
    }
    
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    ggDecimalInt2 = [defaults integerForKey:@"decimal2"];
    
    if (ggDecimalInt2==0){
        ggDecimalInt2 = 6;
        UIAlertView *theAlert = [[UIAlertView alloc] initWithTitle:@"Welcome to InfinityCalc!" message:@"Thank you for choosing InfinityCalc! Reminder: By default, Infinity Calc rounds all answers to six decimals. If you would like to change this, please go to the More Menu, located in the bottom left-hand corner, settings, and then change the setting. Thanks!" delegate:self cancelButtonTitle:@"Done"
                                                 otherButtonTitles:nil];
        
        [theAlert show];
        
    }
    
    NSLog(@"Data Loaded");
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(orientationChanged:) name:UIDeviceOrientationDidChangeNotification object:nil];
    [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
    
    
    
    NSString *theString = @"x\u00B2";
    [Squared setTitle:theString forState:UIControlStateNormal];
    NSString *theString2 = @"x\u00B3";
    [Cubed setTitle:theString2 forState:UIControlStateNormal];
    NSString *theString3 = @"x\u207F";
    [Power setTitle:theString3 forState:UIControlStateNormal];
    [super viewDidLoad];    
    

    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    
    
   
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    theTempString = [defaults objectForKey:@"theTempString"];
    
    if ([theTempString isEqual:(NULL)]) {
        theTempString = @"White";
    }
    
    
    if ([theTempString isEqual:@"White"]) {
        self.view.backgroundColor = [UIColor whiteColor];
        memoryDisplay.textColor = [UIColor blackColor];
        Memory.textColor = [UIColor blackColor];
        display.backgroundColor = [UIColor whiteColor];
    }else if ([theTempString isEqual:@"Black"]){
        self.view.backgroundColor = [UIColor blackColor];
        memoryDisplay.textColor = [UIColor whiteColor];
        Memory.textColor = [UIColor whiteColor];
        display.backgroundColor = [UIColor whiteColor];
    }
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    
    return YES;
        
    }
    


@end
