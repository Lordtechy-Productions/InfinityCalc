//
//  CompoundInterest.h
//  InfinityCalc
//
//  Created by Max Greenwald on 6/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CompoundInterest : UIViewController{
    UITextField *ATextField;
    UITextField *PTextField;
    UITextField *rTextField;
    UITextField *nTextField;
    UITextField *tTextField;
    UITextField *ATextField2;
    UITextField *PTextField2;
    UITextField *rTextField2;
    UITextField *nTextField2;
    UITextField *tTextField2;
    UILabel *ALabel;
    UILabel *PLabel;
    UILabel *rLabel;
    UILabel *nLabel;
    UILabel *tLabel;
    UILabel *ALabel2;
    UILabel *PLabel2;
    UILabel *rLabel2;
    UILabel *nLabel2;
    UILabel *tLabel2;
    UITextView *description;
    UIScrollView *theScrollView;
    UIView *iPadView;
    UIView *iPhoneView;
    UIView *contentView;

}

@property (nonatomic, retain) IBOutlet UITextField *ATextField;
@property (nonatomic, retain) IBOutlet UITextField *PTextField;
@property (nonatomic, retain) IBOutlet UITextField *rTextField;
@property (nonatomic, retain) IBOutlet UITextField *nTextField;
@property (nonatomic, retain) IBOutlet UITextField *tTextField;
@property (nonatomic, retain) IBOutlet UILabel *ALabel;
@property (nonatomic, retain) IBOutlet UILabel *PLabel;
@property (nonatomic, retain) IBOutlet UILabel *rlabel;
@property (nonatomic, retain) IBOutlet UILabel *nlabel;
@property (nonatomic, retain) IBOutlet UILabel *tLabel;
@property (nonatomic, retain) IBOutlet UITextField *ATextField2;
@property (nonatomic, retain) IBOutlet UITextField *PTextField2;
@property (nonatomic, retain) IBOutlet UITextField *rTextField2;
@property (nonatomic, retain) IBOutlet UITextField *nTextField2;
@property (nonatomic, retain) IBOutlet UITextField *tTextField2;
@property (nonatomic, retain) IBOutlet UILabel *ALabel2;
@property (nonatomic, retain) IBOutlet UILabel *PLabel2;
@property (nonatomic, retain) IBOutlet UILabel *rlabel2;
@property (nonatomic, retain) IBOutlet UILabel *nlabel2;
@property (nonatomic, retain) IBOutlet UILabel *tLabel2;
@property (nonatomic, retain) IBOutlet UITextView *description;
@property (nonatomic, retain) IBOutlet UIScrollView *theScrollView;
@property (nonatomic, retain) IBOutlet UIView *iPadView;
@property (nonatomic, retain) IBOutlet UIView *iPhoneView;
@property (nonatomic, retain) IBOutlet UIView *contentView;



-(IBAction)calculateInterest:(id)sender;

@end
