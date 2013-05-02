//
//  MoreTableViewController.m
//  InfinityCalc
//
//  Created by Max Greenwald on 2/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MoreTableViewController.h"
#import "ViewController.h"

@interface MoreTableViewController ()

@end

@implementation MoreTableViewController

@synthesize theArray, detailViewController, aboutViewcontroller, functionsViewController;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

-(IBAction)go{
    NSLog(@"Modal View controller dismissed");
    [self dismissModalViewControllerAnimated:YES];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIBarButtonItem *done = [[UIBarButtonItem alloc] initWithTitle:@"Done" style:UIBarButtonItemStylePlain
                                                            target:self action:@selector(go)];      
    self.navigationItem.leftBarButtonItem = done;
    self.navigationItem.title = @"More";
    
    NSMutableArray *array = [[NSMutableArray alloc]initWithObjects:@"Functions", @"Settings", @"About", nil];
    
    theArray = array;
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
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
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;

    
    NSUInteger row = [indexPath row];
    cell.text = [theArray objectAtIndex:row];
    
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
    
    
    NSLog(@"%i", row);
    
    
    AppDelegate *delegate = [[UIApplication sharedApplication]delegate];
    
    if (row == 1) {
        if (self.detailViewController == nil) {
            theDetailViewController = [[DetailViewController alloc]initWithNibName:@"DetailViewController" bundle:nil];
            self.detailViewController = theDetailViewController;
        }
        
        detailViewController.title = [NSString stringWithFormat:@"%@", [theArray objectAtIndex:row]];
        [delegate.theNavigationController pushViewController:detailViewController animated:YES];
         NSLog(@"Pushed");
        
    } else if (row == 2) {
        if (self.aboutViewcontroller == nil) {
            theAboutViewcontroller = [[AboutViewController alloc]initWithNibName:@"AboutViewController" bundle:nil];
            self.aboutViewcontroller = theAboutViewcontroller;
        }
        
        aboutViewcontroller.title = [NSString stringWithFormat:@"%@", [theArray objectAtIndex:row]];
        [delegate.theNavigationController pushViewController:aboutViewcontroller animated:YES];
    }else if (row == 0) {
        
        if (self.functionsViewController == nil) {
            theFunctionsViewController = [[FunctionsViewController alloc]initWithNibName:@"FunctionsViewController" bundle:nil];
            self.functionsViewController = theFunctionsViewController;
        }
        
        FunctionsViewController *theTableView = [[FunctionsViewController alloc]initWithStyle:UITableViewStyleGrouped];
        
        functionsViewController.title = [NSString stringWithFormat:@"%@", [theArray objectAtIndex:row]];
        [delegate.theNavigationController pushViewController:theTableView animated:YES];
        
        
        
        
         
    }
    
    NSLog(@"Pushed");
    
   
    
    // Navigation logic may go here. Create and push another view controller.
    
     
     // Pass the selected object to the new view controller.
     
      
      
}

@end
