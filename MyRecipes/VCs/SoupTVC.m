//
//  SoupTVC.m
//  MyRecipes
//
//  Created by Admin on 07.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "SoupTVC.h"

@interface SoupTVC ()

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
    
    cell.dishImageView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"profile-image-placeholder.png"]];
    
    //cell.titleLabel.text =  [self titleString];
    //cell.recipesLabel.text = [self randomLorumIpsum];
    cell.recipesLabel.text = @"This is deteil description of my dish. You can look it by click this cell! Go on! Good luck!! Come back please!!!";
    
    [cell setNeedsUpdateConstraints];
    [cell updateConstraintsIfNeeded];
    
    return cell;
    
}


@end
