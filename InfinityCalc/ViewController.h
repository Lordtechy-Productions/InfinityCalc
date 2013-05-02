//
//  ViewController.h
//  InfinityCalc
//
//  Created by Lordtechy on 11/30/11.
//  Copyright (c) 2011 Lordtechy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalcEngine.h"
#import "SettingsViewController.h"
#import "MoreTableViewController.h"
#import "QuartzCore/QuartzCore.h"





int ggDecimalInt2;
BOOL ggdegrees;
NSString *theAnswer;
BOOL functionMoreThanOnce;

@class DetailViewController;

@interface ViewController : UIViewController
<UIPopoverControllerDelegate>{
    
    int *equalsLast;
    NSDecimalNumberHandler *mydnh;
    
    CalcEngine *engine;
    BOOL midTypingNumber;
    int x;
    UIPopoverController *popover;
    NSString *tempString;
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
    UIButton *answer;
    UILabel *Memory;
    UILabel *memoryDisplay;
    UILabel *display;
    UIView *theView;
    NSString *before;
    NSRange range;
    BOOL boolSwitch;
    NSString *final;
    //UISwitch *settingsSwitch;
    UIButton *percent;
    UIView *sciCalcView;
    UILabel *operationView;
    UIView *iPadView;
    UIView *iPhoneView;
    BOOL secondSwitch;
    UILabel *degRadLabel;
    UIDeviceOrientation deviceOrientation;
    BOOL operationIsThere;
    UITextView *iPhone5TextView;
    
}

//@property (nonatomic, retain) IBOutlet UISwitch *settingsSwitch;
@property (nonatomic, retain) UIPopoverController *popover;
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
@property (nonatomic, retain) IBOutlet UIButton *percent;
@property (nonatomic, retain) IBOutlet UILabel *memoryDisplay;
@property (nonatomic, retain) IBOutlet UILabel *Memory;
@property (nonatomic, retain) IBOutlet UILabel *display;
@property (nonatomic, retain) IBOutlet UIButton *sin;
@property (nonatomic, retain) IBOutlet UIButton *cos;
@property (nonatomic, retain) IBOutlet UIButton *tan;
@property (nonatomic, retain) IBOutlet UILabel *operationView;
@property (nonatomic, retain) IBOutlet UIView *iPadView;
@property (nonatomic, retain) IBOutlet UIView *iPhoneView;
@property (nonatomic, retain) IBOutlet UIButton *answer;
@property (nonatomic, retain) IBOutlet UILabel *degRadLabel;
@property (nonatomic, retain) IBOutlet UITextView *iPhone5TextView;


//@property (nonatomic, retain) UINavigationController *theNavigationController;


-(IBAction)digit:(UIButton *)sender;
-(IBAction)operation:(UIButton *)sender;
-(IBAction)backspace;
-(IBAction)info;
-(void)opView:(NSString *)operation:(NSString *)num;
-(IBAction)negative:(UIButton *)Negative;
-(IBAction)second:(id)sender;
-(IBAction)answer:(id)sender;
-(IBAction)runiPadAutorotation:(id)sender;
-(IBAction)runiPhoneAutorotation:(id)sender;


@end

