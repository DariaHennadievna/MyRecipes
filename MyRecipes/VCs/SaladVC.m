//
//  SaladVC.m
//  MyRecipes
//
//  Created by Admin on 03.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "SaladVC.h"

@interface SaladVC ()

@end

@implementation SaladVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Салаты";
    _barButton.target = self.revealViewController;
    _barButton.action = @selector(revealToggle:);
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];

}

@end
