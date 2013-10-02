//
//  ViewController.m
//  InfinityCalc
//
//  Created by Lordtechy on 11/30/11.
//  Copyright (c) 2011 Lordtechy. All rights reserved.
//

#import "ViewController.h"
#import "CalcEngine.h"

@implementation ViewController

@synthesize MPlus,MMinus, MClear, MRecall, Clear, Negative, Multiply, Subtract, Add, Equals, Seven, Eight, Nine, Four, Five, Six, One, Two, Three, Zero, thePoint, Squared, Cubed, SquareRoot, Backspace, Info, Power, Inverse, Pi, Divide, memoryDisplay, Memory, display, sin, cos, tan, popover, percent, operationView, iPadView, iPhoneView, answer, degRadLabel, iPhone5TextView;




- (CalcEngine *)engine{
    
    if (!engine) engine = [[CalcEngine alloc]init];
    return engine;
}

-(void)go{
    
    [self dismissModalViewControllerAnimated:YES];
    
}


-(void) orientationChanged:(NSNotification *)object{

deviceOrientation = [[object object] orientation ];
    
    NSString *deviceType = [UIDevice currentDevice].model;
    if ([deviceType isEqualToString:@"iPad"] ) {
       
        [self runiPadAutorotation:Equals];
        
    }else if([deviceType isEqualToString:@"iPad Simulator"]){
        [self runiPadAutorotation:Equals];

        
    }else{
        [self runiPhoneAutorotation:Equals];
        
    }


    
}



-(IBAction)runiPadAutorotation:(id)sender{

    if (deviceOrientation == UIDeviceOrientationPortrait || deviceOrientation == UIDeviceOrientationPortraitUpsideDown) {
        
        if (secondSwitch) {
            [self second:percent];
        }
        
        
        MPlus.frame = CGRectMake(204,106,176,97);
        MMinus.frame = CGRectMake(388,106,176,97);
        MClear.frame = CGRectMake(20,106,176,97);
        MRecall.frame = CGRectMake(572, 106, 176, 97);
        Clear.frame = CGRectMake(20,211,176,97);
        Negative.frame = CGRectMake(204,211,176,97);
        Divide.frame = CGRectMake(388,211,176,97);
        Multiply.frame = CGRectMake(572, 211, 176, 97);
        Subtract.frame = CGRectMake(572, 316, 176, 97);
        Add.frame = CGRectMake(572, 421, 176, 97);
        Seven.frame = CGRectMake(20,316,176,97);
        Eight.frame = CGRectMake(204,316,176,97);
        Nine.frame = CGRectMake(388,316,176,97);
        Four.frame = CGRectMake(20,421,176,97);
        Five.frame = CGRectMake(204,421,176,97);
        Six.frame = CGRectMake(388,421,176,97);
        One.frame = CGRectMake(20,526,176,97);
        Two.frame = CGRectMake(204,526,176,97);
        Three.frame = CGRectMake(388,526,176,97);
        Zero.frame = CGRectMake(20,631,176,97);
        answer.frame = CGRectMake(388,631,176,97);
        thePoint.frame = CGRectMake(204, 631, 176, 97);
        Equals.frame = CGRectMake(572, 526, 176, 202);
        
        
        Squared.frame = CGRectMake(20,736,176,97);
        Cubed.frame = CGRectMake(204,736,176,97);
        SquareRoot.frame = CGRectMake(388,736,176,97);
        Backspace.frame = CGRectMake(572, 736, 176, 97);
        Info.frame = CGRectMake(20,841,176,97);
        Power.frame = CGRectMake(204,841,176,97);
        Inverse.frame = CGRectMake(388,841,176,97);
        Pi.frame = CGRectMake(572, 841, 176, 97);
        Memory.frame = CGRectMake(309, 946, 104, 33);
        memoryDisplay.frame = CGRectMake(388, 948, 360, 32);
        display.frame = CGRectMake(196, 0, 552, 98);
        
        sin.frame = CGRectMake(-400, 269, 176, 97);
        cos.frame = CGRectMake(-400, 269, 176, 97);
        tan.frame = CGRectMake(-400, 269, 176, 97);
        percent.frame = CGRectMake(-400, 269, 176, 97);
        
        operationView.frame =CGRectMake(20, 0, 176, 98);
        degRadLabel.frame = CGRectMake(20, 77, 42, 21);
        
    }else if(deviceOrientation == UIDeviceOrientationLandscapeLeft || deviceOrientation == UIDeviceOrientationLandscapeRight){
        
        MClear.frame = CGRectMake(350.666666666666,106,157.333333333333,96);
        MPlus.frame = CGRectMake(516,106,157.333333333333,96);
        MMinus.frame = CGRectMake(681.333333333333,106,157.333333333333,96);
        MRecall.frame = CGRectMake(846.666666666666, 106, 157.333333333333, 96);
        Clear.frame = CGRectMake(350.666666666666,211,157.333333333333,96);
        Negative.frame = CGRectMake(516,211,157.333333333333,96);
        Divide.frame = CGRectMake(681.333333333333,211,157.333333333333,96);
        Multiply.frame = CGRectMake(846.666666666666, 211, 157.333333333333, 96);
        Seven.frame = CGRectMake(350.666666666666,316,157.333333333333,96);
        Eight.frame = CGRectMake(516,316,157.333333333333,96);
        Nine.frame = CGRectMake(681.333333333333,316,157.333333333333,96);
        Subtract.frame = CGRectMake(846.666666666666, 316, 157.333333333333, 96);
        Four.frame = CGRectMake(350.666666666666,421,157.333333333333,96);
        Five.frame = CGRectMake(516,421,157.333333333333,96);
        Six.frame = CGRectMake(681.333333333333,421,157.333333333333,96);
        Add.frame = CGRectMake(846.666666666666, 421, 157.333333333333, 96);
        One.frame = CGRectMake(350.666666666666,526,157.333333333333,96);
        Two.frame = CGRectMake(516,526,157.333333333333,96);
        Three.frame = CGRectMake(681.333333333333,526,157.333333333333,96);
        Equals.frame = CGRectMake(846.666666666666, 526, 157.333333333333, 200);
        Zero.frame = CGRectMake(350.666666666666,631,157.333333333333,96);
        thePoint.frame = CGRectMake(516,631,157.333333333333,96);
        answer.frame = CGRectMake(681.333333333333,631,157.333333333333,96);
        
        
        Squared.frame = CGRectMake(20,316,157.333333333333,96);
        Cubed.frame = CGRectMake(185.333333333333,316,157.333333333333,96);
        SquareRoot.frame = CGRectMake(185.333333333333,421,157.333333333333,96);
        Backspace.frame = CGRectMake(185.333333333333, 631, 157.333333333333, 96);
        Info.frame = CGRectMake(20,631,157.333333333333,96);
        Power.frame = CGRectMake(20,421,157.333333333333,96);
        Inverse.frame = CGRectMake(20,526,157.333333333333,96);
        Pi.frame = CGRectMake(185.333333333333, 526, 157.333333333333, 96);
        
        Memory.frame = CGRectMake(20, 20 , 104, 33);
        memoryDisplay.frame = CGRectMake(20, 49, 360, 32);
        display.frame = CGRectMake(343, 0, 661, 98);
        operationView.frame = CGRectMake(185, 0, 158, 98);
        
        sin.frame = CGRectMake(185.333333333333,106,157.333333333333,96);
        cos.frame = CGRectMake(185.333333333333, 211, 157.333333333333, 96);
        tan.frame = CGRectMake(20,211,157.333333333333,96);
        
        percent.frame = CGRectMake(20,106,157.333333333333,96);
        degRadLabel.frame = CGRectMake(185, 77, 42, 21);

        
        
    }
    

}
int screenHeight = 0;
-(IBAction)runiPhoneAutorotation:(id)sender{
    if (deviceOrientation == UIDeviceOrientationPortrait || deviceOrientation == UIDeviceOrientationPortraitUpsideDown) {
        if (secondSwitch) {
            [self second:percent];
        }
        MPlus.frame = CGRectMake(87,54,69,40);
        MMinus.frame = CGRectMake(164,54,69,40);
        MClear.frame = CGRectMake(10,54,69,40);
        MRecall.frame = CGRectMake(241,54,69,40);
        Clear.frame = CGRectMake(10,102,69,40);
        Negative.frame = CGRectMake(87,102,69,40);
        Divide.frame = CGRectMake(164,102,69,40);
        Multiply.frame = CGRectMake(241,102,69,40);
        Subtract.frame = CGRectMake(241,150,69,40);
        Add.frame = CGRectMake(241,198,69,40);
        Seven.frame = CGRectMake(10,150,69,40);
        Eight.frame = CGRectMake(87,150,69,40);
        Nine.frame = CGRectMake(164,150,69,40);
        Four.frame = CGRectMake(10,198,69,40);
        Five.frame = CGRectMake(87,198,69,40);
        Six.frame = CGRectMake(164,198,69,40);
        One.frame = CGRectMake(10,246,69,40);
        Two.frame = CGRectMake(87,246,69,40);
        Three.frame = CGRectMake(164,246,69,40);
        Zero.frame = CGRectMake(10,294,69,40);
        thePoint.frame = CGRectMake(87,294,69,40);
        answer.frame = CGRectMake(164,294,69,40);
        Equals.frame = CGRectMake(241,246,69,88);
        
        Squared.frame = CGRectMake(10,342,69,40);
        Cubed.frame = CGRectMake(87,342,69,40);
        SquareRoot.frame = CGRectMake(164,342,69,40);
        Backspace.frame = CGRectMake(241,342,69,40);
        
        Power.frame = CGRectMake(87,390,69,40);
        Inverse.frame = CGRectMake(164,390,69,40);
        Pi.frame = CGRectMake(241,390,69,40);
        
       
        display.frame = CGRectMake(126.5,13,183.5,36);
       
        if (ABS([UIScreen mainScreen].scale-2.f) <.01 && ABS([UIScreen mainScreen].bounds.size.height - 568.0f) <.01){
            NSLog(@"iPhone 5");
            NSLog(@"%g", screenHeight);
         memoryDisplay.frame = CGRectMake(164,500,146,21);
         Memory.frame = CGRectMake(88,500,68,21);
         sin.frame = CGRectMake(87,438,69,40);
         cos.frame = CGRectMake(164,438,69,40);
         tan.frame = CGRectMake(241,438,69,40);
         percent.frame = CGRectMake(10,390,69,40);
         operationView.frame = CGRectMake(10, 13, 118.5, 36);
         degRadLabel.frame = CGRectMake(15, 500, 36, 21);
         Info.frame = CGRectMake(10,438,69,40);
        }else{
            NSLog(@"iPhone 4");
            memoryDisplay.frame = CGRectMake(164,438,146,21);
            Memory.frame = CGRectMake(88,438,68,21);
            degRadLabel.frame = CGRectMake(15, 438, 36, 21);
            Info.frame = CGRectMake(10,390,69,40);
        }
             
        
        
        
        
        //iPhone5TextView.frame = CGRectMake(0, 474, 320, 84);
        
        
        
    }else if(deviceOrientation == UIDeviceOrientationLandscapeLeft || deviceOrientation == UIDeviceOrientationLandscapeRight){
        
        
        if (ABS([UIScreen mainScreen].scale-2.f) <.01 && ABS([UIScreen mainScreen].bounds.size.height - 568.0f) <.01){
            NSLog(@"iPhone 5");
            NSLog(@"%g", screenHeight);
            MClear.frame = CGRectMake(207.033333337,54,70,36);
            MPlus.frame = CGRectMake(301.700000004,54,70,36);
            MMinus.frame = CGRectMake(396.3666667,54,70,36);
            MRecall.frame = CGRectMake(491.033333367,54,70,36);
            Clear.frame = CGRectMake(207.033333337,96,70,36);
            Negative.frame = CGRectMake(301.700000004,96,70,36);
            Divide.frame = CGRectMake(396.3666667,96,70,36);
            Multiply.frame = CGRectMake(491.033333367,96,70,36);
            Seven.frame = CGRectMake(207.033333337,138,70,36);
            Eight.frame = CGRectMake(301.700000004,138,70,36);
            Nine.frame = CGRectMake(396.3666667,138,70,36);
            Subtract.frame = CGRectMake(491.033333367,138,70,36);
            Four.frame = CGRectMake(207.033333337,180,70,36);
            Five.frame = CGRectMake(301.700000004,180,70,36);
            Six.frame = CGRectMake(396.3666667,180,70,36);
            Add.frame = CGRectMake(491.033333367,180,70,36);
            One.frame = CGRectMake(207.033333337,222,70,36);
            Two.frame = CGRectMake(301.700000004,222,70,36);
            Three.frame = CGRectMake(396.3666667,222,70,36);
            Equals.frame = CGRectMake(491.033333367,222,70,78);
            Zero.frame = CGRectMake(207.033333337,264,70,36);
            answer.frame = CGRectMake(396.3666667,264,70,36);
            thePoint.frame = CGRectMake(301.700000004,264,70,36);
            
            Squared.frame = CGRectMake(17.7,138,70,36);
            Cubed.frame = CGRectMake(112.366666667,138,70,36);
            SquareRoot.frame = CGRectMake(112.366666667,180,70,36);
            Backspace.frame = CGRectMake(112.366666667,264,70,36);
            Info.frame = CGRectMake(17.7,264,70,36);
            Power.frame = CGRectMake(17.7,180,70,36);
            Inverse.frame = CGRectMake(17.7,222,70,36);
            Pi.frame = CGRectMake(112.366666667,222,70,36);
            
            Memory.frame = CGRectMake(17.7, 10, 104, 33);
            memoryDisplay.frame = CGRectMake(95.7, 17, 75, 21);
            display.frame = CGRectMake(301.700000004, 25, 234, 36);
            
            sin.frame = CGRectMake(112.366666667,54,70,36);
            tan.frame = CGRectMake(17.7,96,70,36);
            cos.frame = CGRectMake(112.366666667,96,70,36);
            
            percent.frame = CGRectMake(17.7,54,70,36);
            operationView.frame = CGRectMake(123, 15, 113, 36);
            degRadLabel.frame = CGRectMake(17.7, 35, 36, 21);
            iPhone5TextView.frame = CGRectMake(480, 10, 88, 300);
        }else{
            NSLog(@"iPhone 4");
            MClear.frame = CGRectMake(166,54,70,36);
            MPlus.frame = CGRectMake(244,54,70,36);
            MMinus.frame = CGRectMake(322,54,70,36);
            MRecall.frame = CGRectMake(400,54,70,36);
            Clear.frame = CGRectMake(166,96,70,36);
            Negative.frame = CGRectMake(244,96,70,36);
            Divide.frame = CGRectMake(322,96,70,36);
            Multiply.frame = CGRectMake(400,96,70,36);
            Seven.frame = CGRectMake(166,138,70,36);
            Eight.frame = CGRectMake(244,138,70,36);
            Nine.frame = CGRectMake(322,138,70,36);
            Subtract.frame = CGRectMake(400,138,70,36);
            Four.frame = CGRectMake(166,180,70,36);
            Five.frame = CGRectMake(244,180,70,36);
            Six.frame = CGRectMake(322,180,70,36);
            Add.frame = CGRectMake(400,180,70,36);
            One.frame = CGRectMake(166,222,70,36);
            Two.frame = CGRectMake(244,222,70,36);
            Three.frame = CGRectMake(322,222,70,36);
            Equals.frame = CGRectMake(400,222,70,78);
            Zero.frame = CGRectMake(166,264,70,36);
            answer.frame = CGRectMake(322,264,70,36);
            thePoint.frame = CGRectMake(244,264,70,36);
            
            Squared.frame = CGRectMake(10,138,70,36);
            Cubed.frame = CGRectMake(88,138,70,36);
            SquareRoot.frame = CGRectMake(88,180,70,36);
            Backspace.frame = CGRectMake(88,264,70,36);
            Info.frame = CGRectMake(10,264,70,36);
            Power.frame = CGRectMake(10,180,70,36);
            Inverse.frame = CGRectMake(10,222,70,36);
            Pi.frame = CGRectMake(88,222,70,36);
            
            Memory.frame = CGRectMake(10, 10, 104, 33);
            memoryDisplay.frame = CGRectMake(10, 30, 75, 21);
            display.frame = CGRectMake(236, 25, 234, 36);
            
            sin.frame = CGRectMake(88,54,70,36);
            tan.frame = CGRectMake(10,96,70,36);
            cos.frame = CGRectMake(88,96,70,36);
            
            percent.frame = CGRectMake(10,54,70,36);
            operationView.frame = CGRectMake(123, 15, 113, 36);
            degRadLabel.frame = CGRectMake(88, 30, 36, 21);
            iPhone5TextView.frame = CGRectMake(480, 10, 88, 300);
        }

        
        
    }

}



-(IBAction)negative:(UIButton *)Negative{
    NSRange pointRange = [[display text] rangeOfString:@"-"];
    if (pointRange.location == NSNotFound) {
        midTypingNumber = YES;
        NSString *displayString = @"-";
        if ([[display text]isEqual:@"0"]) {
            display.text = @"-";
        }else {
        displayString = [displayString stringByAppendingString:[display text]];
        [display setText:displayString]; 
        }
    }else {
        NSString *displayString;
        if ([[display text]isEqual:@"-"]) {
            display.text = @"0";
        }else {
        displayString = [[display text]substringFromIndex:1];
        [display setText:displayString];
        }

    }
        
}

-(IBAction)answer:(id)sender{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    theAnswer = [defaults valueForKey:@"theAnswer"];
    NSLog(@"The answer before setting: %@", theAnswer);
    [display setText:theAnswer];
    midTypingNumber = YES;
}


-(IBAction)second:(id)sender{
    if (secondSwitch) {
        [sin setTitle:@"sin" forState:UIControlStateNormal];
        [cos setTitle:@"cos" forState:UIControlStateNormal];
        [tan setTitle:@"tan" forState:UIControlStateNormal];
        [Squared setTitle:@"x\u00B2" forState:UIControlStateNormal];
        [Cubed setTitle:@"x\u00B3" forState:UIControlStateNormal];
        [Power setTitle:@"x\u207F" forState:UIControlStateNormal];
        NSString *deviceType = [UIDevice currentDevice].model;
        if ([deviceType isEqualToString:@"iPad"] ) {
            [SquareRoot.titleLabel setFont:[UIFont fontWithName:@"AmericanTypewriter-Bold" size:31]];
            
        }else if([deviceType isEqualToString:@"iPad Simulator"]){
            [SquareRoot.titleLabel setFont:[UIFont fontWithName:@"AmericanTypewriter-Bold" size:31]];
         }else{
             [SquareRoot.titleLabel setFont:[UIFont fontWithName:@"AmericanTypewriter-Bold" size:18]];
        }
        
        [SquareRoot setTitle:@"√" forState:UIControlStateNormal];
        secondSwitch = NO;

    }else{
        [sin setTitle:@"sin\u207B\u00B9" forState:UIControlStateNormal];
        [cos setTitle:@"cos\u207B\u00B9" forState:UIControlStateNormal];
        [tan setTitle:@"tan\u207B\u00B9" forState:UIControlStateNormal];
        [Squared setTitle:@"log" forState:UIControlStateNormal];
        [Cubed setTitle:@"ln" forState:UIControlStateNormal];
        [Power setTitle:@"\u221B" forState:UIControlStateNormal];
        NSString *deviceType = [UIDevice currentDevice].model;
        if ([deviceType isEqualToString:@"iPad"] ) {
            [SquareRoot.titleLabel setFont:[UIFont fontWithName:@"Helvetica-Bold" size:31]];
        }else if([deviceType isEqualToString:@"iPad Simulator"]){
            [SquareRoot.titleLabel setFont:[UIFont fontWithName:@"Helvetica-Bold" size:31]];
        }else{
            [SquareRoot.titleLabel setFont:[UIFont fontWithName:@"Helvetica-Bold" size:18]];
        }
        [SquareRoot setTitle:@"10\u207F" forState:UIControlStateNormal];

        secondSwitch = YES;


    }
    
    
}



-(void)opView:(NSString *)operation:(NSString *)num2{
    NSArray *functionsArray = [[NSArray alloc]initWithObjects:@"+", @"-", @"x", @"x\u207F", @"÷", nil];
    if([functionsArray containsObject:[display text]]){
        NSLog(@"GO");
    }
    NSLog(@"Operation View Text: %@", operation);
    NSString *num = [display text];
    
    if ([operation isEqual:@"C"]) {
        operationView.text = @"";
        operationIsThere = NO;

    }else if ([operation isEqual:@"MC"]) {

    }else if ([operation isEqual:@"M+"]) {

    }else if ([operation isEqual:@"M-"]) {

    }else if ([operation isEqual:@"MR"]) {

    }else if ([operation isEqual:@"="]) {
        operationView.text = @"=";

    }else if ([operation isEqual:@"sin"]) {
        if (operationIsThere) {
            operationView.text = [NSString stringWithFormat:@"sin(%@)=", num];
            operationIsThere = NO;
        }else {
            operationView.text = [operationView.text stringByAppendingString:[NSString stringWithFormat:@" sin(%@)=", num]];
            operationIsThere = YES;
        }

    }else if ([operation isEqual:@"cos"]) {
        if (operationIsThere) {
            operationView.text = [NSString stringWithFormat:@"cos(%@)=", num];
            operationIsThere = NO;
        }else {
            operationView.text = [operationView.text stringByAppendingString:[NSString stringWithFormat:@" cos(%@)=", num]];
            operationIsThere = YES;
        }

    }else if ([operation isEqual:@"tan"]) {
        if (operationIsThere) {
            operationView.text = [NSString stringWithFormat:@"tan(%@)=", num];
            operationIsThere = NO;
        }else {
            operationView.text = [operationView.text stringByAppendingString:[NSString stringWithFormat:@" tan(%@)=", num]];
            operationIsThere = YES;
        }

    }else if ([operation isEqual:@"sin\u207B\u00B9"]) {
        if (operationIsThere) {
            operationView.text = [NSString stringWithFormat:@"sin\u207B\u00B9(%@)=", num];
            operationIsThere = NO;
        }else {
            operationView.text = [operationView.text stringByAppendingString:[NSString stringWithFormat:@" sin\u207B\u00B9(%@)=", num]];
            operationIsThere = YES;
        }
    }else if ([operation isEqual:@"cos\u207B\u00B9"]) {
        if (operationIsThere) {
            operationView.text = [NSString stringWithFormat:@"cos\u207B\u00B9(%@)=", num];
            operationIsThere = NO;
        }else {
            operationView.text = [operationView.text stringByAppendingString:[NSString stringWithFormat:@" cos\u207B\u00B9(%@)=", num]];
            operationIsThere = YES;
        }
    }else if ([operation isEqual:@"tan\u207B\u00B9"]) {
        if (operationIsThere) {
            operationView.text = [NSString stringWithFormat:@"tan\u207B\u00B9(%@)=", num];
            operationIsThere = NO;
        }else {
            operationView.text = [operationView.text stringByAppendingString:[NSString stringWithFormat:@" tan\u207B\u00B9(%@)=", num]];
            operationIsThere = YES;
        }
    }else if ([operation isEqual:@"x\u00B2"]) {
        if (operationIsThere) {
            operationView.text = [NSString stringWithFormat:@"%@\u00B2=", num];
            operationIsThere = NO;
        }else {
            operationView.text = [operationView.text stringByAppendingString:[NSString stringWithFormat:@" %@\u00B2=", num]];
            operationIsThere = YES;
        }
    }else if ([operation isEqual:@"x\u00B3"]) {
        if (operationIsThere) {
            operationView.text = [NSString stringWithFormat:@"%@\u00B3=", num];
            operationIsThere = NO;
        }else {
            operationView.text = [operationView.text stringByAppendingString:[NSString stringWithFormat:@" %@\u00B3=", num]];
            operationIsThere = YES;
        }   
    }else if ([operation isEqual:@"x\u207F"]) {
        
            operationView.text = [NSString stringWithFormat:@"%@^", num2];
            operationIsThere = NO;
        
    }else if ([operation isEqual:@"√"]) {
        if ([num doubleValue]<0) {
            [display setText:@"NaN"];
        }else{
            if (operationIsThere) {
                operationView.text = [NSString stringWithFormat:@"√(%@)=", num];
                operationIsThere = NO;
            }else {
                operationView.text = [operationView.text stringByAppendingString:[NSString stringWithFormat:@" √(%@)=", num]];
                operationIsThere = YES;
            }
        }
    }else if ([operation isEqual:@"1/x"]) {
        if (operationIsThere) {
            operationView.text = [NSString stringWithFormat:@"1/%@=", num];
            operationIsThere = NO;
        }else {
            operationView.text = [operationView.text stringByAppendingString:[NSString stringWithFormat:@" 1/%@=", num]];
            operationIsThere = YES;
        }
    }else if ([operation isEqual:@"π"]) {
        
        
    }else if ([operation isEqual:@"log"]) {
        if (operationIsThere) {
            operationView.text = [NSString stringWithFormat:@"log(%@)=", num];
            operationIsThere = NO;
        }else {
            operationView.text = [operationView.text stringByAppendingString:[NSString stringWithFormat:@" log(%@)=", num]];
            operationIsThere = YES;
        }    
    }else if ([operation isEqual:@"ln"]) {
        if (operationIsThere) {
            operationView.text = [NSString stringWithFormat:@"ln(%@)=", num];
            operationIsThere = NO;
        }else {
            operationView.text = [operationView.text stringByAppendingString:[NSString stringWithFormat:@" ln(%@)=", num]];
            operationIsThere = YES;
        } 
    }else if ([operation isEqual:@"\u221B"]) {
        if (operationIsThere) {
            operationView.text = [NSString stringWithFormat:@"\u221B(%@)=", num];
            operationIsThere = NO;
        }else {
            operationView.text = [operationView.text stringByAppendingString:[NSString stringWithFormat:@" \u221B(%@)=", num]];
            operationIsThere = YES;
        }    
    }else if ([operation isEqual:@"10\u207F"]) {
        if (operationIsThere) {
            operationView.text = [NSString stringWithFormat:@"10^%@=", num];
            operationIsThere = NO;
        }else {
            operationView.text = [operationView.text stringByAppendingString:[NSString stringWithFormat:@" 10^%@=", num]];
            operationIsThere = YES;
        }

    }else {
        operationView.text = [NSString stringWithFormat:@"%@ %@", num2, operation];
        operationIsThere = NO;
    }
    
    NSLog(@"Operation View Set");
}



-(IBAction)info{
    
     AppDelegate *delegate = [[UIApplication sharedApplication]delegate];
    MoreViewController *more = [[MoreViewController alloc]init];
    [self presentViewController:more animated:YES completion:nil];
    /*MoreTableViewController *theTableView = [[MoreTableViewController alloc]initWithStyle:UITableViewStyleGrouped];
    
    delegate.theNavigationController = [[UINavigationController alloc]initWithRootViewController:theTableView];
    [delegate.theNavigationController setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    [delegate.theNavigationController setModalPresentationStyle:UIModalPresentationFullScreen];
    
    [self presentModalViewController:delegate.theNavigationController animated:YES];    
    */

    
}



-(IBAction)digit:(id)sender{
    
        if (x<40) {
        x = x+1;
            if ([[display text] isEqual:@"-0"]) {
                midTypingNumber = YES;
                display.text = @"-";
            }
        NSString *digit = [[sender titleLabel]text]; // creates NSString digit that hold the string on the digit pressed
            
            
            if ([digit isEqual:@"π"]) {
                display.text = @"π";
                midTypingNumber = YES;
                return;
            }
            
            if ([[display text] isEqual:@"π"]) {
                display.text = digit;
                midTypingNumber = YES;
                return;
            }
            
            if ([digit isEqual:@"0"]) {
                if ([[display text]isEqual:@"0"]) {
                    return;
                }
            }
        
        if([digit isEqual:@"."]){ // if 1 
            
            NSRange pointRange = [[display text] rangeOfString:@"."]; // creates a range of only "."
            if(pointRange.location == NSNotFound) //checks if "." is already in the operand
            { // if 2
                
                if (midTypingNumber) { // if 3
                    [display setText:[[display text] stringByAppendingString:digit]]; // appends the display text by the number typed
                }else{ // else 3
                    if (digit == 0) {
                        
                    }else{
                    [display setText:digit]; // if user has not yet typed a number, sets display to the digit
                    midTypingNumber = YES;
                }
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
                if (digit == 0) {
                    
                }else{

                [display setText:[[display text] stringByAppendingString:digit]];
                }
            }else{ // else 5
                if (digit == 0) {
                    
                }else{
                    [display setText:digit]; // if user has not yet typed a number, sets display to the digit
                    midTypingNumber = YES;
                }
            } // end 5
        } // end 1
        
        double memory = [[self engine] showMemory];
        [memoryDisplay setText:[NSString stringWithFormat:@"%g", memory]];
    }else{
        
    }
    
    /*double disp = [[display text]doubleValue];
    NSNumberFormatter *theNumberFormatter = [[NSNumberFormatter alloc]init];
    [theNumberFormatter setMaximumFractionDigits:16];
    [theNumberFormatter setMinimumFractionDigits:16];
    NSString *temp3 = [theNumberFormatter stringFromNumber:[NSNumber numberWithDouble:disp]];
    [display setText:temp3];*/

    
    
    }
//}

-(IBAction)operation:(UIButton *)sender{
    
    
        
    NSString *operation = [[sender titleLabel]text]; // creates a string with the name of the operation
    
    double pi = M_PI;

    
    if (midTypingNumber) { // if user is typing number then runs funtion setOperand and gives it value of display screen
        x=0;
        if ([[display text]isEqual:@"π"]) {
            [[self engine] setNumber:pi];
        }else {
            [[self engine] setNumber:[[display text] doubleValue]];

        }
        midTypingNumber = NO; 
    }
    
    
    double tmp = [[display text]doubleValue];
    
    
    double result = [[self engine] performOp:operation]; 
    
    //double temp = result;
    
    /*NSMutableString *string = [NSMutableString string];
    int placeValue=0;
    while (pow(10,placeValue)<temp) {
        placeValue++;
    }
    while(pow(10,placeValue)>temp){
        placeValue--;
    }
          while (placeValue>-16){
              double valueOfPlaceValue = pow(10,placeValue);
              int thisDigit=floor(temp/valueOfPlaceValue);
              [string appendString:[NSString stringWithFormat:@"%i", thisDigit]];
              NSLog(@"String: %@", string);
              temp-=thisDigit*valueOfPlaceValue;
              placeValue--;
          }

*/
        
    mydnh = [[NSDecimalNumberHandler alloc] initWithRoundingMode:NSRoundPlain
                                                                                   scale:ggDecimalInt2
                                                                        raiseOnExactness:NO
                                                                         raiseOnOverflow:NO
                                                                        raiseOnUnderflow:NO
                                                                     raiseOnDivideByZero:NO];
    
    NSDecimalNumber *mydecimal;
    NSDecimalNumber *theResult;
    
    NSLog(@".16f: %.16f", result);
    NSLog(@".15g: %.15g", result);
    NSLog(@"f: %f", result);
    NSLog(@"g: %g", result);
    
    NSNumberFormatter *theNumberFormatter = [[NSNumberFormatter alloc]init];
    [theNumberFormatter setMaximumFractionDigits:16];
    [theNumberFormatter setMinimumFractionDigits:16];
    NSString *temp2 = [theNumberFormatter stringFromNumber:[NSNumber numberWithDouble:result]];
    NSLog(@"Number Formatter: %@", temp2);

    before = [NSString stringWithFormat:@"%.15g", result];
    range = NSMakeRange([before length]-1, 1);

    final = [before substringWithRange:range];
    
    if ([before isEqual:@"inf"]) {
        
        
        [display setText:@"inf"];
    }else {
        
        NSRange pointRange = [before rangeOfString:@"e"];
        
        if(pointRange.location == NSNotFound) {
            
            
            
            mydecimal  = [NSDecimalNumber decimalNumberWithString:before];
            
            theResult = [mydecimal decimalNumberByRoundingAccordingToBehavior:mydnh];
            NSString *theTempString = [[NSString alloc]initWithFormat:@"%@", theResult];
            
            NSString *piString = [NSString stringWithFormat:@"%.15g", pi];
            mydecimal = [NSDecimalNumber decimalNumberWithString:piString];
            theResult = [mydecimal decimalNumberByRoundingAccordingToBehavior:mydnh];
            piString = [NSString stringWithFormat:@"%@", theResult];
            
            result = [theTempString doubleValue];
            if ([[display text]isEqual:@"π"]) {
                [self opView:operation:@"π"];
            }else {
                if (tmp == 0) {
                    [self opView:operation:@"Ans"];

                }else {
                    
            [self opView:operation:theTempString];
                }
            }
            
            
            [display setText:theTempString];  


            if ([operation isEqual:@"+"] || [operation isEqual:@"-"] || [operation isEqual:@"÷"] ||[operation isEqual:@"x"] ||[operation isEqual:@"x\u207F"]|| [operation isEqual:@"C"]) {
                if ([[display text]isEqual:piString]) {
                    [display setText:@"π"];
                }
            }else{
                theAnswer = theTempString;
                NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
                [defaults setObject:theAnswer forKey:@"theAnswer"];

            }

        }else {
            if (tmp == 0) {
                [self opView:operation:@"Ans"];
                
            }else {
                
                [self opView:operation:before];
            }
            [display setText:before];
            if ([operation isEqual:@"+"] || [operation isEqual:@"-"] || [operation isEqual:@"÷"] ||[operation isEqual:@"x"] ||[operation isEqual:@"x\u207F"] || [operation isEqual:@"C"]) {
                
            }else{
                theAnswer = before;
                NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
                [defaults setObject:theAnswer forKey:@"theAnswer"];

            }
            
    
            
        }
        
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
    
    mydecimal2  = [NSDecimalNumber decimalNumberWithString:[NSString stringWithFormat:@"%.15g", memory]];
    theResult2 = [mydecimal2 decimalNumberByRoundingAccordingToBehavior:mydnh];
    NSString *tempString2 = [[NSString alloc]initWithFormat:@"%@", theResult2];
    
    [memoryDisplay setText: tempString2]; 
    }
    
    NSLog(@"The answer: %@", theAnswer);

    }
//}

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
        if (theAnswer == @"") {
        theAnswer = @"0";
    }
    
    
    secondSwitch = NO;
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    ggDecimalInt2 = [defaults integerForKey:@"decimal2"];
    
    if (ggDecimalInt2>15) {
        ggDecimalInt2 = 15;
    }
    
    if ([defaults boolForKey:@"stopwatch"]) {
        
    }else {
        [defaults setBool:YES forKey:@"stopwatch"];
        UIAlertView *daAlert = [[UIAlertView alloc] initWithTitle:@"Check out our new app!" message:@"We have just released our new app, eyeFree Sports Stopwatch. It is a unique in that it allows user to control the stopwatch with the volume buttons. It also has history and exporting options. Be sure to check it out in the app store!" delegate:self cancelButtonTitle:@"Done"
                                                otherButtonTitles:@"Go to app store", nil];
        
        [daAlert show];
    }
        
    if (ggDecimalInt2==0){
        ggDecimalInt2 = 15;
        ggdegrees = NO;
        UIAlertView *theAlert = [[UIAlertView alloc] initWithTitle:@"Welcome to InfinityCalc!" message:@"Thank you for choosing InfinityCalc! Reminder: By default, Infinity Calc rounds all answers to fifteen decimels. If you would like to change this, please go to the More Menu, located in the bottom left-hand corner, settings, and then change the setting. Thanks!" delegate:nil cancelButtonTitle:@"Done"
                                                 otherButtonTitles:nil];
        
        [theAlert show];
        
    
        [defaults setBool:ggdegrees forKey:@"degrees"];
        [defaults setInteger:ggDecimalInt2 forKey:@"decimal2"];
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
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)alertView:(UIAlertView *)theAlert clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 0) {
    }else{
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://itunes.apple.com/us/app/eyefree-sports-stopwatch/id546868906?ls=1&mt=8"]];
    }
}

- (void)viewDidUnload
{
        [super viewDidUnload];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    ggdegrees = [defaults boolForKey:@"degrees"];
    theTempString = [defaults objectForKey:@"theTempString"];
    
    if ([theTempString isEqual:(NULL)]) {
        theTempString = @"White";
        ggdegrees = NO;
    }
    
    
    

    
    NSString *deviceType = [UIDevice currentDevice].model;
    NSLog(@"The device type is %@", deviceType);
    if ([deviceType isEqualToString:@"iPad"] ) {
        self.view = self.iPadView;
        NSLog(@"iPad");    

        if ([theTempString isEqual:@"White"]) {
            self.view.backgroundColor = [UIColor whiteColor];
            memoryDisplay.textColor = [UIColor blackColor];
            Memory.textColor = [UIColor blackColor];
            display.backgroundColor = [UIColor whiteColor];
            operationView.backgroundColor = [UIColor whiteColor];
            degRadLabel.textColor = [UIColor blackColor];
            degRadLabel.backgroundColor = [UIColor whiteColor];
        }else if ([theTempString isEqual:@"Black"]){
            self.view.backgroundColor = [UIColor blackColor];
            memoryDisplay.textColor = [UIColor whiteColor];
            Memory.textColor = [UIColor whiteColor];
            display.textColor = [UIColor whiteColor];
            operationView.backgroundColor = [UIColor blackColor];
            operationView.textColor = [UIColor whiteColor];
            degRadLabel.textColor = [UIColor whiteColor];
            degRadLabel.backgroundColor = [UIColor blackColor];
        }else if ([theTempString isEqual:@"Red"]){
            self.view.backgroundColor = [UIColor redColor];
            memoryDisplay.textColor = [UIColor whiteColor];
            Memory.textColor = [UIColor whiteColor];
            display.backgroundColor = [UIColor whiteColor];
            operationView.backgroundColor = [UIColor whiteColor];
        }else if ([theTempString isEqual:@"Green"]){
            self.view.backgroundColor = [UIColor greenColor];
            memoryDisplay.textColor = [UIColor whiteColor];
            Memory.textColor = [UIColor whiteColor];
            display.backgroundColor = [UIColor whiteColor];
            operationView.backgroundColor = [UIColor whiteColor];
        }else if ([theTempString isEqual:@"Blue"]){
            self.view.backgroundColor = [UIColor blueColor];
            memoryDisplay.textColor = [UIColor whiteColor];
            Memory.textColor = [UIColor whiteColor];
            display.backgroundColor = [UIColor whiteColor];
            operationView.backgroundColor = [UIColor whiteColor];
        }else if ([theTempString isEqual:@"Orange"]){
            self.view.backgroundColor = [UIColor orangeColor];
            memoryDisplay.textColor = [UIColor whiteColor];
            Memory.textColor = [UIColor whiteColor];
            display.backgroundColor = [UIColor whiteColor];
            operationView.backgroundColor = [UIColor whiteColor];
        }else if ([theTempString isEqual:@"Purple"]){
            self.view.backgroundColor = [UIColor purpleColor];
            memoryDisplay.textColor = [UIColor whiteColor];
            Memory.textColor = [UIColor whiteColor];
            display.backgroundColor = [UIColor whiteColor];
            operationView.backgroundColor = [UIColor whiteColor];
        }
        
    }else if([deviceType isEqualToString:@"iPad Simulator"]){
        self.view = self.iPadView;
        NSLog(@"iPad");    
        
        if ([theTempString isEqual:@"White"]) {
            self.view.backgroundColor = [UIColor whiteColor];
            memoryDisplay.textColor = [UIColor blackColor];
            Memory.textColor = [UIColor blackColor];
            display.backgroundColor = [UIColor whiteColor];
            operationView.backgroundColor = [UIColor whiteColor];
            degRadLabel.textColor = [UIColor blackColor];
            degRadLabel.backgroundColor = [UIColor whiteColor];
        }else if ([theTempString isEqual:@"Black"]){
            self.view.backgroundColor = [UIColor blackColor];
            memoryDisplay.textColor = [UIColor whiteColor];
            Memory.textColor = [UIColor whiteColor];
            display.backgroundColor = [UIColor blackColor];
            display.textColor = [UIColor whiteColor];
            operationView.backgroundColor = [UIColor blackColor];
            operationView.textColor = [UIColor whiteColor];
            degRadLabel.textColor = [UIColor whiteColor];
            degRadLabel.backgroundColor = [UIColor blackColor];
        }else if ([theTempString isEqual:@"Red"]){
            self.view.backgroundColor = [UIColor redColor];
            memoryDisplay.textColor = [UIColor whiteColor];
            Memory.textColor = [UIColor whiteColor];
            display.backgroundColor = [UIColor whiteColor];
            operationView.backgroundColor = [UIColor whiteColor];
        }else if ([theTempString isEqual:@"Green"]){
            self.view.backgroundColor = [UIColor greenColor];
            memoryDisplay.textColor = [UIColor whiteColor];
            Memory.textColor = [UIColor whiteColor];
            display.backgroundColor = [UIColor whiteColor];
            operationView.backgroundColor = [UIColor whiteColor];
        }else if ([theTempString isEqual:@"Blue"]){
            self.view.backgroundColor = [UIColor blueColor];
            memoryDisplay.textColor = [UIColor whiteColor];
            Memory.textColor = [UIColor whiteColor];
            display.backgroundColor = [UIColor whiteColor];
            operationView.backgroundColor = [UIColor whiteColor];
        }else if ([theTempString isEqual:@"Orange"]){
            self.view.backgroundColor = [UIColor orangeColor];
            memoryDisplay.textColor = [UIColor whiteColor];
            Memory.textColor = [UIColor whiteColor];
            display.backgroundColor = [UIColor whiteColor];
            operationView.backgroundColor = [UIColor whiteColor];
        }else if ([theTempString isEqual:@"Purple"]){
            self.view.backgroundColor = [UIColor purpleColor];
            memoryDisplay.textColor = [UIColor whiteColor];
            Memory.textColor = [UIColor whiteColor];
            display.backgroundColor = [UIColor whiteColor];
            operationView.backgroundColor = [UIColor whiteColor];
        }
        
    }else{
        if ([theTempString isEqual:@"White"]) {
            self.view.backgroundColor = [UIColor whiteColor];
            memoryDisplay.textColor = [UIColor blackColor];
            display.backgroundColor = [UIColor whiteColor];
            operationView.backgroundColor = [UIColor whiteColor];
            degRadLabel.textColor = [UIColor blackColor];
            degRadLabel.backgroundColor = [UIColor whiteColor];
        }else if ([theTempString isEqual:@"Black"]){
            self.view.backgroundColor = [UIColor blackColor];
            memoryDisplay.textColor = [UIColor whiteColor];
            Memory.textColor = [UIColor whiteColor];
            display.textColor = [UIColor whiteColor];
            operationView.backgroundColor = [UIColor blackColor];
            operationView.textColor = [UIColor whiteColor];
            degRadLabel.textColor = [UIColor whiteColor];
            degRadLabel.backgroundColor = [UIColor blackColor];

        }else if ([theTempString isEqual:@"Red"]){
            self.view.backgroundColor = [UIColor redColor];
            memoryDisplay.textColor = [UIColor whiteColor];
            Memory.textColor = [UIColor whiteColor];
            display.backgroundColor = [UIColor whiteColor];
            operationView.backgroundColor = [UIColor whiteColor];
            degRadLabel.textColor = [UIColor whiteColor];
            
        }else if ([theTempString isEqual:@"Green"]){
            self.view.backgroundColor = [UIColor greenColor];
            memoryDisplay.textColor = [UIColor blackColor];
            Memory.textColor = [UIColor blackColor];
            display.backgroundColor = [UIColor whiteColor];
            operationView.backgroundColor = [UIColor whiteColor];
            degRadLabel.textColor = [UIColor blackColor];
            
        }else if ([theTempString isEqual:@"Blue"]){
            self.view.backgroundColor = [UIColor blueColor];
            memoryDisplay.textColor = [UIColor whiteColor];
            Memory.textColor = [UIColor whiteColor];
            display.backgroundColor = [UIColor whiteColor];
            operationView.backgroundColor = [UIColor whiteColor];
            degRadLabel.textColor = [UIColor whiteColor];
            
        }else if ([theTempString isEqual:@"Orange"]){
            self.view.backgroundColor = [UIColor orangeColor];
            memoryDisplay.textColor = [UIColor whiteColor];
            Memory.textColor = [UIColor whiteColor];
            display.backgroundColor = [UIColor whiteColor];
            operationView.backgroundColor = [UIColor whiteColor];
            degRadLabel.textColor = [UIColor whiteColor];
            
        }else if ([theTempString isEqual:@"Purple"]){
            self.view.backgroundColor = [UIColor purpleColor];
            memoryDisplay.textColor = [UIColor whiteColor];
            Memory.textColor = [UIColor whiteColor];
            display.backgroundColor = [UIColor whiteColor];
            operationView.backgroundColor = [UIColor whiteColor];
            degRadLabel.textColor = [UIColor whiteColor];
            
        }

        self.view = self.iPhoneView;
        NSLog(@"iPhone");
    }
    




    
    /*
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    boolSwitch = [defaults boolForKey:@"theSwitch"];
    
    if (boolSwitch == YES) {
        NSLog(@"YES");
        [settingsSwitch setOn:YES animated:YES];
    }else{
        NSLog(@"NO");
        
        [settingsSwitch setOn:NO animated:YES];
    }

     */
    
    
        
    
    
    if (ggdegrees) {
        [degRadLabel setText:@"Rad"];
    }else {
        [degRadLabel setText:@"Deg"];
    }
    
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
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
- (void)loadView
{
    [super loadView];
    // Implement loadView to create a view hierarchy programmatically, without using a nib.
}


@end
