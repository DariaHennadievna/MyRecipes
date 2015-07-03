//
//  SoupVC.m
//  MyRecipes
//
//  Created by Admin on 03.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "SoupVC.h"

@interface SoupVC ()

@end

@implementation SoupVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Супы";
    _barButton.target = self.revealViewController;
    _barButton.action = @selector(revealToggle:);
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
}


@end
