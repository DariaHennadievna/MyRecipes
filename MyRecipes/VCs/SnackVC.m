//
//  SnackVC.m
//  MyRecipes
//
//  Created by Admin on 03.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "SnackVC.h"

@interface SnackVC ()

@end

@implementation SnackVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Перекусы";
    _barButton.target = self.revealViewController;
    _barButton.action = @selector(revealToggle:);
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
}

@end
