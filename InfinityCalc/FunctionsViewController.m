//
//  FunctionsViewController.m
//  InfinityCalc
//
//  Created by Max Greenwald on 2/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FunctionsViewController.h"

@interface FunctionsViewController ()

@end

@implementation FunctionsViewController

@synthesize theArray, sortedKeys, tableContents, functionsDetailViewController, listData, compoundInterest, logBaseChange;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
    
    NSMutableArray *array = [[NSMutableArray alloc]initWithObjects:@"Functions", @"Settings", @"About", nil];
    
    theArray = array;
    
    NSArray *arrTemp1 = [[NSArray alloc]
                         initWithObjects:@"Standard Form",@"Slope-Intercept Form",@"Point-Slope Form",nil];
    NSArray *arrTemp2 = [[NSArray alloc]
                         initWithObjects:@"Standard Form",@"Quadratic Formula",@"Pythagorean Theorum", @"Vertex",nil];
    
    NSArray *arrTemp3 = [[NSArray alloc]
                         
                         initWithObjects:@"Compound Interest",@"Base Change",nil];
    
    NSDictionary *temp =[[NSDictionary alloc]
                         initWithObjectsAndKeys:arrTemp1,@"Linear Equations",arrTemp2,
                         
                         @"Quadratic Equations",arrTemp3,@"Exponential Equations",nil];
    self.tableContents =temp;
    
    
    self.sortedKeys =[[self.tableContents allKeys]
                      
                      sortedArrayUsingSelector:@selector(compare:)];

        
   
self.navigationItem.title = @"Functions";

    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Coming Soon!" message:@"We are working hard to develop these functions and they will be here in a future update. Thanks for your patience." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
        // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)alertView:(UIAlertView *)theAlert clickedButtonAtIndex:(NSInteger)buttonIndex {
    AppDelegate *delegate = [[UIApplication sharedApplication]delegate];
    [delegate.theNavigationController popToRootViewControllerAnimated:YES];
    NSLog(@"Popped to root view controller");

}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return [self.sortedKeys count];

}

- (NSString *)tableView:(UITableView *)tableView
titleForHeaderInSection:(NSInteger)section
{
    return [self.sortedKeys objectAtIndex:section];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    listData =[self.tableContents objectForKey:
                        [self.sortedKeys objectAtIndex:section]];
    return [listData count];


}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    listData =[self.tableContents objectForKey:
                        [self.sortedKeys objectAtIndex:[indexPath section]]];

    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;

    
    NSUInteger row = [indexPath row];
    cell.textLabel.text = [listData objectAtIndex:row];
    
    return cell;

    
    // Set up the cell...
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSInteger row = [indexPath row];
    NSInteger section1 = [indexPath section];
    
    NSLog(@"%i", section1);
    
    NSLog(@"%i", row);
    
    NSArray *names = [[NSArray alloc]initWithObjects:@"Compound Interest", @"Base Change", @"Standard Form", @"Slope-Intercept Form", @"Point-Slope Form", @"Standard Form", @"Quadratic Formula", @"Pythagorean Theorum", @"Vertex", nil];
    
    
    
    if (self.functionsDetailViewController == nil) {
        theFunctionsDetailViewController = [[FunctionsDetailViewController alloc]initWithNibName:@"FunctionsDetailViewController" bundle:nil];
        self.functionsDetailViewController = theFunctionsDetailViewController;
    }
    if (self.compoundInterest == nil) {
        theCompoundInterest = [[CompoundInterest alloc]initWithNibName:@"CompoundInterest" bundle:nil];
        self.compoundInterest = theCompoundInterest;
    }
    if (self.logBaseChange == nil) {
        theLogBaseChange = [[LogBaseChange alloc]initWithNibName:@"LogBaseChange" bundle:nil];
        self.logBaseChange = theLogBaseChange;
    }
    AppDelegate *delegate = [[UIApplication sharedApplication]delegate];

    switch (section1) {
        case 0:
            switch (row) {
                case 0:
                    compoundInterest.title = [NSString stringWithFormat:@"%@", [names objectAtIndex:0]];
                    [delegate.theNavigationController pushViewController:compoundInterest animated:YES];
                    
                    
                    break;
                    
                case 1:
                    logBaseChange.title = [NSString stringWithFormat:@"%@", [names objectAtIndex:1]];
                    [delegate.theNavigationController pushViewController:logBaseChange animated:YES];
                    break;
                    
                default:
                    break;
            }
            break;
            
        case 1:
            switch (row) {
                case 0:
                    functionsDetailViewController.title = [NSString stringWithFormat:@"%@", [names objectAtIndex:2]];

                    break;
                    
                case 1:
                    functionsDetailViewController.title = [NSString stringWithFormat:@"%@", [names objectAtIndex:3]];
                    break;

                case 2:
                    functionsDetailViewController.title = [NSString stringWithFormat:@"%@", [names objectAtIndex:4]];
                    break;
                    
                default:
                    break;
            }
            break;
            
        case 2:
            switch (row) {
                case 0:
                    functionsDetailViewController.title = [NSString stringWithFormat:@"%@", [names objectAtIndex:5]];

                    break;
                    
                case 1:
                    functionsDetailViewController.title = [NSString stringWithFormat:@"%@", [names objectAtIndex:6]];
                    
                    break;
                    
                case 2:
                    functionsDetailViewController.title = [NSString stringWithFormat:@"%@", [names objectAtIndex:7]];
                    
                    break;
                
                case 3:
                    functionsDetailViewController.title = [NSString stringWithFormat:@"%@", [names objectAtIndex:8]];
                    
                    break;
                    
                default:
                    break;
            }
            break;
        default:
            break;
    
    }
    
    //[delegate.theNavigationController pushViewController:functionsDetailViewController animated:YES];

    

    NSLog(@"Pushed");
    
    
}

@end
