//
//  DietVC.m
//  MyRecipes
//
//  Created by Admin on 01.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "DietVC.h"

@interface DietVC ()

@end

@implementation DietVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect myRect = CGRectMake(0.0f, 0.0f, 100.0f, 20.0f);
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:myRect];
    titleLabel.center = self.view.center;
    titleLabel.text = @"Диеты";
    titleLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:titleLabel];
}

@end
