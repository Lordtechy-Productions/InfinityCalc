//
//  iPhoneSettingsViewController.h
//  InfinityCalc
//
//  Created by Max Greenwald on 1/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iPhoneViewController.h"
#import <MessageUi/MessageUI.h>

@interface iPhoneSettingsViewController : UIViewController <MFMailComposeViewControllerDelegate>{

    NSString *orientation;
    UIScrollView *theScrollView;
    UIView *contentView;
    UIStepper *theStepper;
    UILabel *theLabel;


}
-(IBAction)lordtechy:(id)sender;
-(IBAction)twitter:(id)sender;
-(IBAction)googlePlus:(id)sender;
-(IBAction)Facebook:(id)sender;
-(IBAction)cancel:(id)sender;
-(IBAction)email:(id)sender;
-(IBAction)valueChanged:(UIStepper *)sender;

@property (nonatomic, retain) IBOutlet UIScrollView * theScrollView;
@property (nonatomic, retain) IBOutlet UIView *contentView;
@property (nonatomic, retain) IBOutlet UIStepper *theStepper;
@property (nonatomic, retain) IBOutlet UILabel *theLabel;

@end
