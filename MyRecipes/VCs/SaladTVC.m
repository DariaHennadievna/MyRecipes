//
//  SaladTVCTableViewController.m
//  MyRecipes
//
//  Created by Admin on 05.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "SaladTVC.h"

@interface SaladTVC ()

@property (nonatomic, strong) TableViewCell *customCell;

@end

@implementation SaladTVC

- (void)viewDidLoad {
    [super viewDidLoad];    
    
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

    return 20;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    cell.dishImageView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"profile-image-placeholder.png"]];
    
    cell.titleLabel.text =  [self titleString];
    cell.recipesLabel.text = [self randomLorumIpsum];
    
    [cell setNeedsUpdateConstraints];
    [cell updateConstraintsIfNeeded];
    
    return cell;
}


- (NSString *)randomLorumIpsum
{
    NSString *lorumIpsum = @"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent non quam ac massa viverra semper. Maecenas mattis justo ac augue volutpat congue. Maecenas laoreet, nulla eu faucibus gravida, felis orci dictum risus, sed sodales sem eros eget risus. Morbi imperdiet sed diam et sodales. Vestibulum ut est id mauris ultrices gravida. Nulla malesuada metus ut erat malesuada, vitae ornare neque semper. Aenean a commodo justo, vel placerat odio. Curabitur vitae consequat tortor. Aenean eu magna ante. Integer tristique elit ac augue laoreet, eget pulvinar lacus dictum. Cras eleifend lacus eget pharetra elementum. Etiam fermentum eu felis eu tristique. Integer eu purus vitae turpis blandit consectetur. Nulla facilisi. Praesent bibendum massa eu metus pulvinar, quis tristique nunc commodo. Ut varius aliquam elit, a tincidunt elit aliquam non. Nunc ac leo purus. Proin condimentum placerat ligula, at tristique neque scelerisque ut. Suspendisse ut congue enim. Integer id sem nisl. Nam dignissim, lectus et dictum sollicitudin, libero augue ullamcorper justo, nec consectetur dolor arcu sed justo. Proin rutrum pharetra lectus, vel gravida ante venenatis sed. Mauris lacinia urna vehicula felis aliquet venenatis. Suspendisse non pretium sapien. Proin id dolor ultricies, dictum augue non, euismod ante. Vivamus et luctus augue, a luctus mi. Maecenas sit amet felis in magna vestibulum viverra vel ut est. Suspendisse potenti. Morbi nec odio pretium lacus laoreet volutpat sit amet at ipsum. Etiam pretium purus vitae tortor auctor, quis cursus metus vehicula. Integer ultricies facilisis arcu, non congue orci pharetra quis. Vivamus pulvinar ligula neque, et vehicula ipsum euismod quis.";
    
    
    NSArray *lorumIpsumArray = [lorumIpsum componentsSeparatedByString:@" "];
    NSInteger r = arc4random() % [lorumIpsumArray count];
    r = MAX(10, r); // no less than 10 words
    NSArray *lorumIpsumRandom = [lorumIpsumArray objectsAtIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, r)]];
    
    return [NSString stringWithFormat:@"%@!!!", [lorumIpsumRandom componentsJoinedByString:@" "]];
    
}

- (NSString *)titleString
{
    NSString *str = [self randomLorumIpsum];
    NSArray *lorumIpsumArray = [str componentsSeparatedByString:@" "];
    NSInteger r = 5;
    NSArray *title = [lorumIpsumArray objectsAtIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, r)]];
    
    return [NSString stringWithFormat:@"%@!!!", [title componentsJoinedByString:@" "]];
}


@end
