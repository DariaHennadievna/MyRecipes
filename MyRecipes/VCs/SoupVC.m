//
//  SoupVC.m
//  MyRecipes
//
//  Created by Admin on 03.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "SoupVC.h"

@interface SoupVC ()

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) RecipesCell *recipesCell;
@property (nonatomic, strong) NSArray *myContent;

@end

@implementation SoupVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Супы";
    
    [self.view addSubview:self.tableView];
    
    [self.tableView registerClass:[RecipesCell class] forCellReuseIdentifier:NSStringFromClass([RecipesCell class])];
    
    _barButton.target = self.revealViewController;
    _barButton.action = @selector(revealToggle:);
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
}

#pragma mark - Views

- (UITableView *)tableView
{
    if (!_tableView)
    {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
        _tableView.dataSource = self;
        _tableView.delegate = self;
    }    
    return _tableView;
}

//- (void)viewWillAppear:(BOOL)animated
//{
//    [super viewWillAppear:YES];
//    NSLog(@"viewWillAppear");
//    NSDictionary *views = @{@"tableView" : _tableView};
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[tableView]|" options:0  metrics:nil views:views]];
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[tableView]|" options:0  metrics:nil views:views]];
//}



//
//- (void)loadView
//{
//    [super loadView];
//    NSLog(@"loadView");
//}
//
//
//- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
//{
//    // Возвращает YES для поддерживаемых ориентаций
//    return YES;
//}
//
//- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)
//interfaceOrientation duration:(NSTimeInterval)duration
//{
//
//    
//}



#pragma mark - Table View Data Sourse

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    RecipesCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([RecipesCell class]) forIndexPath:indexPath];
    
    cell.dishImageView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"profile-image-placeholder.png"]];
    
    cell.titleLabel.text =  [self titleString];
    cell.recipesLabel.text = [self randomLorumIpsum];
    
    [cell setNeedsUpdateConstraints];
    [cell updateConstraintsIfNeeded];
    
    return cell;
}

#pragma mark - Table View Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

/*
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *reuseIdentifier = @"RecipesCell";
    
    RecipesCell *cell = [self.offscreenCells objectForKey:reuseIdentifier];
    if (!cell) {
        cell = [[RecipesCell alloc] init];
        [self.offscreenCells setObject:cell forKey:reuseIdentifier];
    }
    
    [cell updateFonts];
    cell.titleLabel.text =  [self titleString];
    cell.recipesLabel.text = [self randomLorumIpsum];
    
    [cell setNeedsUpdateConstraints];
    [cell updateConstraintsIfNeeded];
    
    cell.bounds = CGRectMake(0.0f, 0.0f, CGRectGetWidth(tableView.bounds), CGRectGetHeight(cell.bounds));

    [cell setNeedsLayout];
    [cell layoutIfNeeded];
    
    CGFloat height = [cell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height;
    
    height += 1;
    
    return height;

                    
}

*/
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
