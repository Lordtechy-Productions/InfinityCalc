//
//  SettingsViewController.h
//  InfinityCalc
//
//  Created by Max Greenwald on 12/22/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import "ViewController.h"


@interface SettingsViewController : UIViewController <MFMailComposeViewControllerDelegate>{
    
    
    
    UIView *contentView;
    UIStepper *theStepper;
    UILabel *theLabel;
    UIWindow *window;
    UINavigationController *navigationController;
    
    
}

-(IBAction)lordtechy:(id)sender;
-(IBAction)twitter:(id)sender;
-(IBAction)googlePlus:(id)sender;
-(IBAction)Facebook:(id)sender;
-(IBAction)email:(id)sender;
-(IBAction)valueChanged:(UIStepper *)sender;
-(IBAction)cancel:(id)sender;


@property (nonatomic, retain) IBOutlet UIView *contentView;
@property (nonatomic, retain) IBOutlet UIStepper *theStepper;
@property (nonatomic, retain) IBOutlet UILabel *theLabel;
@property (nonatomic, retain) IBOutlet UIWindow *window;


@end
