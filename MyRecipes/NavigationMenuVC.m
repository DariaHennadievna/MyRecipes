//
//  NavigationMenuVC.m
//  MyRecipes
//
//  Created by Admin on 30.06.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "NavigationMenuVC.h"

@interface NavigationMenuVC ()

@property (nonatomic) NSArray *menu;

@end

@implementation NavigationMenuVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.menu = @[@"Appetizer", @"Desert", @"SecondDish", @"Soup", @"Salad", @"Snack", @"Breakfast"];
    [self.tableView registerClass:[UITableViewCell class]
           forCellReuseIdentifier:NSStringFromClass([UITableViewCell class])];
    /*self.view.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin |
    UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin |
    UIViewAutoresizingFlexibleBottomMargin;*/
   
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return self.menu.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = [self.menu objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *myCell = (UITableViewCell *)[tableView cellForRowAtIndexPath:indexPath];
    self.title = nil;
    
    if ( [myCell.reuseIdentifier isEqualToString:@"Appetizer"] )
    {
        [self performSegueWithIdentifier:@"ShowAppetizer" sender:self];
    }
    
    if ( [myCell.reuseIdentifier isEqualToString:@"Desert"] )
    {
        [self performSegueWithIdentifier:@"ShowDesert" sender:self];
    }
    
    if ( [myCell.reuseIdentifier isEqualToString:@"SecondDish"] )
    {
        [self performSegueWithIdentifier:@"ShowSecondDish" sender:self];
    }
    
    if ( [myCell.reuseIdentifier isEqualToString:@"Soup"] )
    {
        [self performSegueWithIdentifier:@"ShowSoup" sender:self];
    }
    
    if ( [myCell.reuseIdentifier isEqualToString:@"Salad"] )
    {
        [self performSegueWithIdentifier:@"ShowSalad" sender:self];
    }
    
    if ( [myCell.reuseIdentifier isEqualToString:@"Snack"] )
    {
        [self performSegueWithIdentifier:@"ShowSnack" sender:self];
    }
    
    if ( [myCell.reuseIdentifier isEqualToString:@"Breakfast"] )
    {
        [self performSegueWithIdentifier:@"ShowBreakfast" sender:self];
    }

}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ( [segue isKindOfClass:[SWRevealViewControllerSegueSetController class]] )
    {
        if ([segue.identifier isEqualToString:@"ShowAppetizer"])
        {
            if ([segue.destinationViewController isKindOfClass:[AppetizerVC class]])
            {
                AppetizerVC *appetizeVC =
                (AppetizerVC *)segue.destinationViewController;
                
                UINavigationController *navController = (UINavigationController *) self.revealViewController.frontViewController;                
                [navController setViewControllers:@[appetizeVC] animated:NO];
            }
        }
        
        if ([segue.identifier isEqualToString:@"ShowDesert"])
        {
            if ([segue.destinationViewController isKindOfClass:[DesertVC class]])
            {
                DesertVC *desertVC =
                (DesertVC *)segue.destinationViewController;
                
                UINavigationController *navController = (UINavigationController *) self.revealViewController.frontViewController;                
                [navController setViewControllers:@[desertVC] animated:NO];
            }
        }
        
        if ([segue.identifier isEqualToString:@"ShowSecondDish"])
        {
            if ([segue.destinationViewController isKindOfClass:[SecondDishVC class]])
            {
                SecondDishVC *secondDishVC =
                (SecondDishVC *)segue.destinationViewController;
                
                UINavigationController *navController = (UINavigationController *) self.revealViewController.frontViewController;
                [navController setViewControllers:@[secondDishVC] animated:NO];
            }
        }
        
        if ([segue.identifier isEqualToString:@"ShowSoup"])
        {
            if ([segue.destinationViewController isKindOfClass:[SoupVC class]])
            {
                SoupVC *soupVC =
                (SoupVC *)segue.destinationViewController;
                
                UINavigationController *navController = (UINavigationController *) self.revealViewController.frontViewController;
                [navController setViewControllers:@[soupVC] animated:NO];
            }
        }
        
        if ([segue.identifier isEqualToString:@"ShowSalad"])
        {
            if ([segue.destinationViewController isKindOfClass:[SaladVC class]])
            {
                SaladVC *saladVC =
                (SaladVC *)segue.destinationViewController;
                
                UINavigationController *navController = (UINavigationController *) self.revealViewController.frontViewController;
                [navController setViewControllers:@[saladVC] animated:NO];
            }
            if ([segue.destinationViewController isKindOfClass:[SaladTVC class]])
            {
                SaladTVC *saladTVC =
                (SaladTVC *)segue.destinationViewController;
                
                UINavigationController *navController = (UINavigationController *) self.revealViewController.frontViewController;
                [navController setViewControllers:@[saladTVC] animated:NO];
            }
        }
        
        if ([segue.identifier isEqualToString:@"ShowSnack"])
        {
            if ([segue.destinationViewController isKindOfClass:[SnackVC class]])
            {
                SnackVC *snackVC =
                (SnackVC *)segue.destinationViewController;
                
                UINavigationController *navController = (UINavigationController *) self.revealViewController.frontViewController;
                [navController setViewControllers:@[snackVC] animated:NO];
            }
        }
        
        if ([segue.identifier isEqualToString:@"ShowBreakfast"])
        {
            if ([segue.destinationViewController isKindOfClass:[BreakfastVC class]])
            {
                BreakfastVC *breakfastVC =
                (BreakfastVC *)segue.destinationViewController;
                
                UINavigationController *navController = (UINavigationController *) self.revealViewController.frontViewController;
                [navController setViewControllers:@[breakfastVC] animated:NO];
            }
        }

        //{...}
    }
}



@end
