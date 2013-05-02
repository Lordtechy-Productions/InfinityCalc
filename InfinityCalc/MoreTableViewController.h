//
//  MoreTableViewController.h
//  InfinityCalc
//
//  Created by Max Greenwald on 2/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h" 
#import "AppDelegate.h"
#import "AboutViewController.h"
#import "FunctionsViewController.h"


@class FunctionsViewController;
@class DetailViewController;

@interface MoreTableViewController : UITableViewController{
    NSMutableArray *theArray;
    DetailViewController *theDetailViewController;
    AboutViewController *theAboutViewcontroller;
    FunctionsViewController *theFunctionsViewController;
}

@property (nonatomic, retain) NSMutableArray *theArray;
@property (nonatomic, retain) DetailViewController *detailViewController;
@property (nonatomic, retain) AboutViewController *aboutViewcontroller;
@property (nonatomic, retain) FunctionsViewController *functionsViewController;


-(IBAction)go;
@end
