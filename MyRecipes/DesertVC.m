//
//  DesertVC.m
//  MyRecipes
//
//  Created by Admin on 30.06.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "DesertVC.h"

@interface DesertVC ()

@end

@implementation DesertVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Десерты";
    self.view.backgroundColor = [UIColor whiteColor];
    
    _barButton.target = self.revealViewController;
    _barButton.action = @selector(revealToggle:);
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
}



@end
