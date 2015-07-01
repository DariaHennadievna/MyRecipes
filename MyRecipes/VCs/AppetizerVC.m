//
//  AppetizerVC.m
//  MyRecipes
//
//  Created by Admin on 30.06.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "AppetizerVC.h"

@interface AppetizerVC ()

@end

@implementation AppetizerVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Закуски";    
    _barButton.target = self.revealViewController;
    _barButton.action = @selector(revealToggle:);
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
}



@end
