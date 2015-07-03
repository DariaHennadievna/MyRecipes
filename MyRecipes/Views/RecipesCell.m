//
//  RecipesCell.m
//  MyRecipes
//
//  Created by Admin on 03.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "RecipesCell.h"

@implementation RecipesCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        //self.backgroundColor = [[UIColor greenColor] colorWithAlphaComponent:0.2f];
        [self configurCell];
    }
    return self;
}

- (void)configurCell
{
    self.backgroundColor = [UIColor whiteColor];
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    //[self.contentView setAutoresizingMask:UIViewAutoresizingFlexibleHeight];
    
    self.dishImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    self.dishImageView.translatesAutoresizingMaskIntoConstraints = NO;
    self.dishImageView.contentMode = UIViewContentModeScaleAspectFill;
    self.dishImageView.layer.borderColor = [[UIColor darkGrayColor] CGColor];
    self.dishImageView.layer.borderWidth = 1;
    self.dishImageView.backgroundColor = [UIColor whiteColor];
    [self.contentView addSubview:self.dishImageView];
    
    self.titleLabel   = [[UILabel alloc] initWithFrame:CGRectZero];
    //self.titleLabel.backgroundColor = [UIColor orangeColor];
    self.titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.titleLabel.font = [UIFont fontWithName:@"HelveticaNeue-CondensedBold" size:15];
    self.titleLabel.textColor = [UIColor blackColor];
    self.titleLabel.numberOfLines = 0;
    [self.contentView addSubview:self.titleLabel];
    
    self.recipesLabel   = [[UILabel alloc] initWithFrame:CGRectZero];
    //self.recipesLabel.backgroundColor = [UIColor orangeColor];
    self.recipesLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.recipesLabel.font = [UIFont fontWithName:@"HelveticaNeue-Medium" size:13];
    self.recipesLabel.textColor = [UIColor blackColor];
    self.recipesLabel.numberOfLines = 0;
    [self.contentView addSubview:self.recipesLabel];
    
    NSDictionary *viewDict = NSDictionaryOfVariableBindings(_dishImageView, _titleLabel, _recipesLabel);
    NSDictionary *metricDict = @{@"sideBuffer" : @10, @"verticalBuffer" : @5,  @"imageSize" : @50, @"betweenElementsBuffer" : @10};
    
    // Horizontal constraints
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-sideBuffer-[_dishImageView(imageSize)]-betweenElementsBuffer-[_titleLabel]-sideBuffer-|" options:0 metrics:metricDict views:viewDict]];
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-sideBuffer-[_recipesLabel]-sideBuffer-|" options:0 metrics:metricDict views:viewDict]];
    
    // Vertical constraints
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-verticalBuffer-[_dishImageView(imageSize)]" options:0 metrics:metricDict views:viewDict]];
    
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-verticalBuffer-[_titleLabel]" options:0 metrics:metricDict views:viewDict]];
    
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[_recipesLabel]-verticalBuffer-|" options:0 metrics:metricDict views:viewDict]];
    
    [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.recipesLabel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.dishImageView attribute:NSLayoutAttributeBottom multiplier:1 constant:5]];
 
}




@end
