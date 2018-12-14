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

    UIView *redView = [[UIView alloc] init];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    
    // No need this:
    // self.redView.translatesAutoresizingMaskIntoConstraints = NO;
    // xxxConstraint.active = YES;
    
    [self.redView.bm_left equalTo:@16];
    // Note: safeAreaLayoutGuide is support after iOS11.0
    [self.redView.bm_top equalTo:self.view.safeAreaLayoutGuide.topAnchor constant:47];
    [self.redView.bm_right equalTo:@(-15)];
    [self.redView.bm_height equalTo:@128];
    
    [self.greenView.bm_left equalTo:self.redView];
    [self.greenView.bm_top equalTo:self.redView.bottomAnchor constant:10];
    [self.greenView.bm_width equalTo:self.redView];
    [self.greenView.bm_bottom equalTo:self.blackView constant:10];
    
    [self.blueView.bm_left equalTo:self.greenView];
    [self.blueView.bm_top equalTo:self.greenView.bottomAnchor constant:20];
    [self.blueView.bm_width equalTo:self.greenView];
    [self.blueView.bm_height equalTo:@152];
    
    [self.whiteView.bm_left equalTo:self.greenView constant:15];
    [self.whiteView.bm_top equalTo:self.greenView constant:10];
    [self.whiteView.bm_width equalTo:self.greenView constant:-30];
    [self.whiteView.bm_height equalTo:@100];
    
    [self.blackView.bm_left equalTo:self.whiteView];
    [self.blackView.bm_top equalTo:self.whiteView.bottomAnchor constant:10];
    [self.blackView.bm_width equalTo:self.whiteView];
    [self.blackView.bm_height equalTo:self.whiteView];
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
