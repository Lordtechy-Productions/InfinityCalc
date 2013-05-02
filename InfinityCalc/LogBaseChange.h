//
//  LogBaseChange.h
//  InfinityCalc
//
//  Created by Max Greenwald on 6/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface LogBaseChange : UIViewController  <UITextFieldDelegate> {
    UIView *iPhoneView;
    UITextField *a;
    UITextField *x;
    UILabel *top;
    UILabel *bottom;
    UILabel *final;
    UISegmentedControl *logln;
    UIImage *theImage;
    UIScrollView *theScrollView;
    UIView *contentView;
    
}

@property (nonatomic, retain) IBOutlet UIView *iPhoneView;
@property (nonatomic, retain) IBOutlet UITextField *a;
@property (nonatomic, retain) IBOutlet UITextField *x;
@property (nonatomic, retain) IBOutlet UILabel *top;
@property (nonatomic, retain) IBOutlet UILabel *bottom;
@property (nonatomic, retain) IBOutlet UILabel *final;
@property (nonatomic, retain) IBOutlet UISegmentedControl *logln;
@property (nonatomic, retain) IBOutlet UIImage *theImage;
@property (nonatomic, retain) IBOutlet UIScrollView *theScrollView;;
@property (nonatomic, retain) IBOutlet UIView *contentView;;



-(IBAction)calculate:(id)sender;
-(IBAction)loglnChanged:(id)sender;


@end
