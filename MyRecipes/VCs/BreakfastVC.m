//
//  BreakfastVC.m
//  MyRecipes
//
//  Created by Admin on 03.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "BreakfastVC.h"

@interface BreakfastVC ()

@end

@implementation BreakfastVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Завтраки";
    _barButton.target = self.revealViewController;
    _barButton.action = @selector(revealToggle:);
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
}

@end
