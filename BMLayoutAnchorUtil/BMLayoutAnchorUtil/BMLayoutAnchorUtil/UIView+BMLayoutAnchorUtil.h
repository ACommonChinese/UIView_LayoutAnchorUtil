//
//  UIView+BMLayoutAnchorUtil.h
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/11.
//  Copyright © 2018 liuxing8807@126.com All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BMLayoutXAxisAnchor.h"
#import "BMLayoutYAxisAnchor.h"
#import "BMLayoutDimension.h"
#import "BMLayoutXAxisAnchor.h"

@interface UIView (BMLayoutAnchorUtil)

#pragma mark - anchors

@property (nonatomic,readonly,strong) BMLayoutXAxisAnchor *bm_leading NS_AVAILABLE_IOS(9_0);
@property (nonatomic,readonly,strong) BMLayoutXAxisAnchor *bm_trailing NS_AVAILABLE_IOS(9_0);
@property (nonatomic,readonly,strong) BMLayoutXAxisAnchor *bm_left NS_AVAILABLE_IOS(9_0);
@property (nonatomic,readonly,strong) BMLayoutXAxisAnchor *bm_right NS_AVAILABLE_IOS(9_0);
@property (nonatomic,readonly,strong) BMLayoutYAxisAnchor *bm_top NS_AVAILABLE_IOS(9_0);
@property (nonatomic,readonly,strong) BMLayoutYAxisAnchor *bm_bottom NS_AVAILABLE_IOS(9_0);
@property (nonatomic,readonly,strong) BMLayoutDimension *bm_width NS_AVAILABLE_IOS(9_0);
@property (nonatomic,readonly,strong) BMLayoutDimension *bm_height NS_AVAILABLE_IOS(9_0);
@property (nonatomic,readonly,strong) BMLayoutXAxisAnchor *bm_centerX NS_AVAILABLE_IOS(9_0);
@property (nonatomic,readonly,strong) BMLayoutYAxisAnchor *bm_centerY NS_AVAILABLE_IOS(9_0);
@property (nonatomic,readonly,strong) BMLayoutYAxisAnchor *bm_firstBaseline NS_AVAILABLE_IOS(9_0);
@property (nonatomic,readonly,strong) BMLayoutYAxisAnchor *bm_lastBaseline NS_AVAILABLE_IOS(9_0);

#pragma mark constraints

@property (nonatomic,readonly,strong) NSLayoutConstraint *bm_leadingConstraint;
@property (nonatomic,readonly,strong) NSLayoutConstraint *bm_trailingConstraint;
@property (nonatomic,readonly,strong) NSLayoutConstraint *bm_leftConstraint;
@property (nonatomic,readonly,strong) NSLayoutConstraint *bm_rightConstraint;
@property (nonatomic,readonly,strong) NSLayoutConstraint *bm_topConstraint;
@property (nonatomic,readonly,strong) NSLayoutConstraint *bm_bottomConstraint;
@property (nonatomic,readonly,strong) NSLayoutConstraint *bm_widthConstraint;
@property (nonatomic,readonly,strong) NSLayoutConstraint *bm_heightConstraint;
@property (nonatomic,readonly,strong) NSLayoutConstraint *bm_centerXConstraint;
@property (nonatomic,readonly,strong) NSLayoutConstraint *bm_centerYConstraint;
@property (nonatomic,readonly,strong) NSLayoutConstraint *bm_firstBaselineConstraint;
@property (nonatomic,readonly,strong) NSLayoutConstraint *bm_lastBaselineConstraint;

@property (nonatomic,readonly,strong) NSArray<NSLayoutConstraint *> *bm_leadingConstraints;
@property (nonatomic,readonly,strong) NSArray<NSLayoutConstraint *> *bm_trailingConstraints;
@property (nonatomic,readonly,strong) NSArray<NSLayoutConstraint *> *bm_leftConstraints;
@property (nonatomic,readonly,strong) NSArray<NSLayoutConstraint *> *bm_rightConstraints;
@property (nonatomic,readonly,strong) NSArray<NSLayoutConstraint *> *bm_topConstraints;
@property (nonatomic,readonly,strong) NSArray<NSLayoutConstraint *> *bm_bottomConstraints;
@property (nonatomic,readonly,strong) NSArray<NSLayoutConstraint *> *bm_widthConstraints;
@property (nonatomic,readonly,strong) NSArray<NSLayoutConstraint *> *bm_heightConstraints;
@property (nonatomic,readonly,strong) NSArray<NSLayoutConstraint *> *bm_centerXConstraints;
@property (nonatomic,readonly,strong) NSArray<NSLayoutConstraint *> *bm_centerYConstraints;
@property (nonatomic,readonly,strong) NSArray<NSLayoutConstraint *> *bm_firstBaselineConstraints;
@property (nonatomic,readonly,strong) NSArray<NSLayoutConstraint *> *bm_lastBaselineConstraints;

#pragma mark - add constraints

- (void)bm_addLeadingConstraint:(NSLayoutConstraint *)constraint;
- (void)bm_addTrailingConstraint:(NSLayoutConstraint *)constraint;
- (void)bm_addLeftConstraint:(NSLayoutConstraint *)constraint;
- (void)bm_addRightConstraint:(NSLayoutConstraint *)constraint;
- (void)bm_addTopConstraint:(NSLayoutConstraint *)constraint;
- (void)bm_addBottomConstraint:(NSLayoutConstraint *)constraint;
- (void)bm_addWidthConstraint:(NSLayoutConstraint *)constraint;
- (void)bm_addHeightConstraint:(NSLayoutConstraint *)constraint;
- (void)bm_addCenterXConstraint:(NSLayoutConstraint *)constraint;
- (void)bm_addCenterYConstraint:(NSLayoutConstraint *)constraint;
- (void)bm_addFirstBaselineConstraint:(NSLayoutConstraint *)constraint;
- (void)bm_addLastBaselineConstraint:(NSLayoutConstraint *)constraint;

#pragma mark - delete constraints

- (void)bm_deleteLeadingConstraint;
- (void)bm_deleteTrailingConstraint;
- (void)bm_deleteLeftConstraint;
- (void)bm_deleteRightConstraint;
- (void)bm_deleteTopConstraint;
- (void)bm_deleteBottomConstraint;
- (void)bm_deleteWidthConstraint;
- (void)bm_deleteHeightConstraint;
- (void)bm_deleteCenterXConstraint;
- (void)bm_deleteCenterYConstraint;
- (void)bm_deleteFirstBaselineConstraint;
- (void)bm_deleteLastBaselineConstraint;

- (void)bm_deleteLeadingConstraints;
- (void)bm_deleteTrailingConstraints;
- (void)bm_deleteLeftConstraints;
- (void)bm_deleteRightConstraints;
- (void)bm_deleteTopConstraints;
- (void)bm_deleteBottomConstraints;
- (void)bm_deleteWidthConstraints;
- (void)bm_deleteHeightConstraints;
- (void)bm_deleteCenterXConstraints;
- (void)bm_deleteCenterYConstraints;
- (void)bm_deleteFirstBaselineConstraints;
- (void)bm_deleteLastBaselineConstraints;

#pragma mark - update constraints

- (void)bm_updateLeadingConstraint:(CGFloat)constant;
- (void)bm_updateTrailingConstraint:(CGFloat)constant;
- (void)bm_updateLeftConstraint:(CGFloat)constant;
- (void)bm_updateRightConstraint:(CGFloat)constant;
- (void)bm_updateTopConstraint:(CGFloat)constant;
- (void)bm_updateBottomConstraint:(CGFloat)constant;
- (void)bm_updateWidthConstraint:(CGFloat)constant;
- (void)bm_updateHeightConstraint:(CGFloat)constant;
- (void)bm_updateCenterXConstraint:(CGFloat)constant;
- (void)bm_updateCenterYConstraint:(CGFloat)constant;
- (void)bm_updateFirstBaselineConstraint:(CGFloat)constant;
- (void)bm_updateLastBaselineConstraint:(CGFloat)constant;

#pragma mark - replace constraints

- (void)bm_replaceLeadingConstraint:(NSLayoutConstraint *)constraint;
- (void)bm_replaceTrailingConstraint:(NSLayoutConstraint *)constraint;
- (void)bm_replaceLeftConstraint:(NSLayoutConstraint *)constraint;
- (void)bm_replaceRightConstraint:(NSLayoutConstraint *)constraint;
- (void)bm_replaceTopConstraint:(NSLayoutConstraint *)constraint;
- (void)bm_replaceBottomConstraint:(NSLayoutConstraint *)constraint;
- (void)bm_replaceWidthConstraint:(NSLayoutConstraint *)constraint;
- (void)bm_replaceHeightConstraint:(NSLayoutConstraint *)constraint;
- (void)bm_replaceCenterXConstraint:(NSLayoutConstraint *)constraint;
- (void)bm_replaceCenterYConstraint:(NSLayoutConstraint *)constraint;
- (void)bm_replaceFirstBaselineConstraint:(NSLayoutConstraint *)constraint;
- (void)bm_replaceLastBaselineConstraint:(NSLayoutConstraint *)constraint;

@end
