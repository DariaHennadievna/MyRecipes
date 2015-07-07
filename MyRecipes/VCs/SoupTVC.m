//
//  SoupTVC.m
//  MyRecipes
//
//  Created by Admin on 07.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "SoupTVC.h"

@interface SoupTVC ()

@property (strong, nonatomic) NSString *titleForDestController;

@end

@implementation SoupTVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Супы";
    _barButton.target = self.revealViewController;
    _barButton.action = @selector(revealToggle:);
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    cell.dishImageView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"profile-image-placeholder.png"]];
    
    cell.recipesLabel.text = @"This is deteil description of my dish. You can look it by click this cell! Go on! Good luck!! Come back please!!!";    
    
    return cell;
    
}

#pragma mark - Table View Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCell *cell = (TableViewCell *)[tableView cellForRowAtIndexPath:indexPath];
    NSString *title = cell.titleLabel.text;
    self.titleForDestController = title;
    [self performSegueWithIdentifier:@"ShowDetail" sender:self];
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"ShowDetail"])
    {
        if ([segue.destinationViewController isKindOfClass:[DetailController class]])
        {
            DetailController *detailWeatherVC =
            (DetailController *)segue.destinationViewController;
            detailWeatherVC.title           = self.titleForDestController ;
            //detailWeatherVC.currentCity     = self.currentCity;
            //detailWeatherVC.currentForecast = self.currentForecast;
        }
    }
}

@end
