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
@property (weak, nonatomic) IBOutlet UILabel *label;

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
    
    [self.redView.bm_left equal:@16];
    // Note: safeAreaLayoutGuide is support after iOS11.0
    [self.redView.bm_top equal:self.view.safeAreaLayoutGuide.topAnchor constant:47];
    [self.redView.bm_right.height equal:@[@(-15), @128]];
    [self.greenView.bm_left.width equal:self.redView];
    
    [self.greenView.bm_top equal:self.redView.bottomAnchor constant:10];
    [self.greenView.bm_bottom equal:self.blackView constant:10];
    
    [self.blueView.bm_top equal:self.greenView.bottomAnchor constant:20];
    [self.blueView.bm_left.width.height equal:@[self.greenView, self.greenView, @352]];
    
    [self.whiteView.bm_left equal:self.greenView constant:15];
    [self.whiteView.bm_top equal:self.greenView constant:10];
    [self.whiteView.bm_width equal:self.greenView constant:-30];
    [self.whiteView.bm_height equal:@100];

    [self.blackView.bm_top equal:self.whiteView.bottomAnchor constant:10];
    [self.blackView.bm_left.width.height equal:self.whiteView];
    
    [self.label.bm_left.top.right equal:@[@(10), @(10), @(-10)]];
    self.label.font = [UIFont systemFontOfSize:25.0];
    self.label.numberOfLines = 0;
    self.label.backgroundColor = [UIColor yellowColor];
    self.label.text = @"Hello world , hello china Hello world , hell, hello chinaHello world , hello china \nHello world , hello chinaHello world , hello china Hello worlna ";
    
    // [self testHorizonalDistribute];
    [self testVerticalDistribute];
}

- (void)testVerticalDistribute {
    UIView *subView_1 = UIView.new;
    UIView *subView_2 = UIView.new;
    UIView *subView_3 = UIView.new;
    subView_1.backgroundColor = [UIColor purpleColor];
    subView_2.backgroundColor = [UIColor purpleColor];
    subView_3.backgroundColor = [UIColor purpleColor];
    
    [self.blueView addSubview:subView_1];
    [self.blueView addSubview:subView_2];
    [self.blueView addSubview:subView_3];
    
    NSArray *subViews = @[subView_1, subView_2, subView_3];
    [subViews.bm_left equal:@(15)];
    [subViews.bm_width equal:self.blueView constant:-30];
    // [subViews bm_distributeViewsAlongAxis:BMAxisTypeVertical withFixedSpacing:50 leadSpacing:10 tailSpacing:10];
    
    [subViews bm_distributeViewsAlongAxis:BMAxisTypeVertical withFixedItemLength:50 leadSpacing:150 tailSpacing:20];
}

- (void)testHorizonalDistribute {
    CGFloat fixedItemLength = 60;
    CGFloat leadSpacing = 30;
    CGFloat tailSpacing = 30;
    
    UIView *subView_1 = UIView.new;
    UIView *subView_2 = UIView.new;
    UIView *subView_3 = UIView.new;
    subView_1.backgroundColor = [UIColor purpleColor];
    subView_2.backgroundColor = [UIColor purpleColor];
    subView_3.backgroundColor = [UIColor purpleColor];
    
    [self.redView addSubview:subView_1];
    [self.redView addSubview:subView_2];
    [self.redView addSubview:subView_3];
    
    NSArray *subViews = @[subView_1, subView_2, subView_3];
    [subViews.bm_top equal:self.redView constant:10];
    [subViews.bm_height equal:@(100)];
    [subViews bm_distributeViewsAlongAxis:BMAxisTypeHorizontal withFixedItemLength:fixedItemLength leadSpacing:leadSpacing tailSpacing:tailSpacing];
}

- (IBAction)test:(UIButton *)button {
    button.selected = !button.isSelected;
    if (button.isSelected) {
        [self.whiteView bm_updateHeightConstraint:self.whiteView.bm_heightConstraint.constant+18.0];
    }
    else {
          [self.whiteView bm_updateHeightConstraint:self.whiteView.bm_heightConstraint.constant-18.0];
    }
}

@end
