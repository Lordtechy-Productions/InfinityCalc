//
//  FunctionsViewController.h
//  InfinityCalc
//
//  Created by Max Greenwald on 2/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "FunctionsDetailViewController.h"
#import "CompoundInterest.h"
#import "LogBaseChange.h"
#import "MoreTableViewController.h"
@class FunctionsDetailViewController;
@class CompoundInterest;
@class LogBaseChange;
@interface FunctionsViewController : UITableViewController{
    
    NSMutableArray *theArray;
    NSDictionary *tableContents;
    NSArray *sortedKeys;
    FunctionsDetailViewController *theFunctionsDetailViewController;
    CompoundInterest *theCompoundInterest;
    LogBaseChange *theLogBaseChange;
    NSMutableArray *listData;
}

@property (nonatomic,retain) NSDictionary *tableContents;
@property (nonatomic,retain) NSArray *sortedKeys;
@property (nonatomic, retain) FunctionsDetailViewController *functionsDetailViewController;
@property (nonatomic, retain) CompoundInterest *compoundInterest;
@property (nonatomic, retain) LogBaseChange *logBaseChange;
@property (nonatomic, retain) NSMutableArray *theArray;
@property (nonatomic, retain) NSMutableArray *listData;



@end
