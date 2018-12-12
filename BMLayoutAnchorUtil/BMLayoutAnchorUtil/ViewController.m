//
//  ViewController.m
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/11.
//  Copyright © 2018 liuxing8807@126.com All rights reserved.
//

#import "ViewController.h"
#import "UIView+BMLayoutAnchorUtil.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *redView;
@property (weak, nonatomic) IBOutlet UIView *greenView;
@property (weak, nonatomic) IBOutlet UIView *blueView;
@property (weak, nonatomic) IBOutlet UIView *whiteView;
@property (weak, nonatomic) IBOutlet UIView *blackView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *redView = UIView.new;
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];

    // No need this:
    // self.redView.translatesAutoresizingMaskIntoConstraints = NO;
    // xxxConstraint.active = YES;
    
    [self.redView.bm_leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:16];
    // Note: safeAreaLayoutGuide is support after iOS11.0
    [self.redView.bm_topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:47];
    [self.redView.bm_rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant:-15];
    [self.redView.bm_heightAnchor constraintEqualToConstant:128];
    
    [self.greenView.bm_leftAnchor constraintEqualToAnchor:self.redView.leftAnchor];
    [self.greenView.bm_topAnchor constraintEqualToAnchor:self.redView.bottomAnchor constant:10];
    [self.greenView.bm_widthAnchor constraintEqualToAnchor:self.redView.widthAnchor multiplier:1.0];
    [self.greenView.bm_bottomAnchor constraintEqualToAnchor:self.blackView.bottomAnchor constant:10];
    
    [self.blueView.bm_leftAnchor constraintEqualToAnchor:self.greenView.leftAnchor];
    [self.blueView.bm_topAnchor constraintEqualToAnchor:self.greenView.bottomAnchor constant:20];
    [self.blueView.bm_widthAnchor constraintEqualToAnchor:self.greenView.widthAnchor multiplier:1.0];
    [self.blueView.bm_heightAnchor constraintEqualToConstant:152];
    
    [self.whiteView.bm_leftAnchor constraintEqualToAnchor:self.greenView.leftAnchor constant:15];
    [self.whiteView.bm_topAnchor constraintEqualToAnchor:self.greenView.topAnchor constant:10];
    [self.whiteView.bm_widthAnchor constraintEqualToAnchor:self.greenView.widthAnchor constant:-30];
    [self.whiteView.bm_heightAnchor constraintEqualToConstant:100];
    
    [self.blackView.bm_leftAnchor constraintEqualToAnchor:self.whiteView.leftAnchor];
    [self.blackView.bm_topAnchor constraintEqualToAnchor:self.whiteView.bottomAnchor constant:10];
    [self.blackView.bm_widthAnchor constraintEqualToAnchor:self.whiteView.widthAnchor multiplier:1.0];
    [self.blackView.bm_heightAnchor constraintEqualToAnchor:self.whiteView.heightAnchor multiplier:1.0];
}

- (IBAction)test:(UIButton *)button {
    button.selected = !button.isSelected;
    if (button.isSelected) {
          [self.whiteView bm_updateHeightConstraint:self.whiteView.bm_heightConstraint.constant+8.0];
    }
    else {
          [self.whiteView bm_updateHeightConstraint:self.whiteView.bm_heightConstraint.constant-8.0];
    }
}

@end
