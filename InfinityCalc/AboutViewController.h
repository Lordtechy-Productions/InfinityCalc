//
//  AboutViewController.h
//  InfinityCalc
//
//  Created by Max Greenwald on 2/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>


@interface AboutViewController : UIViewController <MFMailComposeViewControllerDelegate>{
    UIView *view1;
    UIView *view2;
    UIScrollView *theScrollView;
    UIView *contentview;
    UIView *contentview2;
}

-(IBAction)lordtechy:(id)sender;
-(IBAction)twitter:(id)sender;
-(IBAction)googlePlus:(id)sender;
-(IBAction)Facebook:(id)sender;
-(IBAction)email:(id)sender;
@property (nonatomic, retain) IBOutlet UIView *view1;
@property (nonatomic, retain) IBOutlet UIView *view2;
@property (nonatomic, retain) IBOutlet UIScrollView *theScrollView;
@property (nonatomic, retain) IBOutlet UIView *contentview;
@property (nonatomic, retain) IBOutlet UIView *contentview2;


@end
