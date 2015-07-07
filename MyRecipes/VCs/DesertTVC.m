//
//  DesertTVC.m
//  MyRecipes
//
//  Created by Admin on 07.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "DesertTVC.h"

@interface DesertTVC ()

@end

@implementation DesertTVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Десерты";
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
    NSLog(@"Click! Click!!");
}


@end
