//
//  iPhoneViewController.h
//  InfinityCalc
//
//  Created by Max Greenwald on 12/18/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalcEngine.h"
#import "iPhoneSettingsViewController.h"
#import <MessageUi/MessageUI.h>
#import "ViewController.h"

int ggDecimalInt;

@interface iPhoneViewController : UIViewController{


    CalcEngine *engine;
    BOOL midTypingNumber;
    int x;
    NSString *decimalString;
    NSString *before;
    NSRange range;
    NSString *final;
    NSDecimalNumberHandler *mydnh;

    
    UIButton *MPlus;
    UIButton *MMinus;
    UIButton *MClear;
    UIButton *MRecall;
    UIButton *Clear;
    UIButton *Negative;
    UIButton *Divide;
    UIButton *Multiply;
    UIButton *Subtract;
    UIButton *Add;
    UIButton *Seven;
    UIButton *Eight;
    UIButton *Nine;
    UIButton *Four;
    UIButton *Five;
    UIButton *Six;
    UIButton *One;
    UIButton *Two;
    UIButton *Three;
    UIButton *Zero;
    UIButton *thePoint;
    UIButton *Equals;
    UIButton *Squared;
    UIButton *Cubed;
    UIButton *SquareRoot;
    UIButton *Backspace;
    UIButton *Info;
    UIButton *Power;
    UIButton *Inverse;
    UIButton *Pi;
    UIButton *sin;
    UIButton *cos;
    UIButton *tan;
    UIButton *percent;
    UILabel *Memory;
    UILabel *memoryDisplay;
    UILabel *display;
    
    
}


@property (nonatomic, retain) IBOutlet UIButton *MPlus;
@property (nonatomic, retain) IBOutlet UIButton *MMinus;
@property (nonatomic, retain) IBOutlet UIButton *MClear;
@property (nonatomic, retain) IBOutlet UIButton *MRecall;
@property (nonatomic, retain) IBOutlet UIButton *Clear;
@property (nonatomic, retain) IBOutlet UIButton *Negative;
@property (nonatomic, retain) IBOutlet UIButton *Divide;
@property (nonatomic, retain) IBOutlet UIButton *Multiply;
@property (nonatomic, retain) IBOutlet UIButton *Subtract;
@property (nonatomic, retain) IBOutlet UIButton *Add;
@property (nonatomic, retain) IBOutlet UIButton *Seven;
@property (nonatomic, retain) IBOutlet UIButton *Eight;
@property (nonatomic, retain) IBOutlet UIButton *Nine;
@property (nonatomic, retain) IBOutlet UIButton *Four;
@property (nonatomic, retain) IBOutlet UIButton *Five;
@property (nonatomic, retain) IBOutlet UIButton *Six;
@property (nonatomic, retain) IBOutlet UIButton *One;
@property (nonatomic, retain) IBOutlet UIButton *Two;
@property (nonatomic, retain) IBOutlet UIButton *Three;
@property (nonatomic, retain) IBOutlet UIButton *Zero;
@property (nonatomic, retain) IBOutlet UIButton *thePoint;
@property (nonatomic, retain) IBOutlet UIButton *Equals;
@property (nonatomic, retain) IBOutlet UIButton *Squared;
@property (nonatomic, retain) IBOutlet UIButton *Cubed;
@property (nonatomic, retain) IBOutlet UIButton *SquareRoot;
@property (nonatomic, retain) IBOutlet UIButton *Backspace;
@property (nonatomic, retain) IBOutlet UIButton *Info;
@property (nonatomic, retain) IBOutlet UIButton *Power;
@property (nonatomic, retain) IBOutlet UIButton *Inverse;
@property (nonatomic, retain) IBOutlet UIButton *Pi;
@property (nonatomic, retain) IBOutlet UILabel *memoryDisplay;
@property (nonatomic, retain) IBOutlet UILabel *Memory;
@property (nonatomic, retain) IBOutlet UILabel *display;
@property (nonatomic, retain) IBOutlet UIButton *sin;
@property (nonatomic, retain) IBOutlet UIButton *cos;
@property (nonatomic, retain) IBOutlet UIButton *tan;
@property (nonatomic, retain) IBOutlet UIButton *percent;

-(IBAction)digit:(UIButton *)sender;
-(IBAction)operation:(UIButton *)sender;
-(IBAction)backspace;
-(IBAction)info;


@end
