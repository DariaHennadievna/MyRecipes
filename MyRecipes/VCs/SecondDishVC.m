//
//  SecondDishVC.m
//  MyRecipes
//
//  Created by Admin on 30.06.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "SecondDishVC.h"

@interface SecondDishVC ()

@end

@implementation SecondDishVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Вторые блюда";
    _barButton.target = self.revealViewController;
    _barButton.action = @selector(revealToggle:);
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
}


@end
