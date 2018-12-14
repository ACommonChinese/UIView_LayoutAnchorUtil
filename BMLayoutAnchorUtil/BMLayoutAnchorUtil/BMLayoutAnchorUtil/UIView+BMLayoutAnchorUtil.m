//
//  UIView+BMLayoutAnchorUtil.m
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/11.
//  Copyright © 2018 liuxing8807@126.com All rights reserved.
//

#import "UIView+BMLayoutAnchorUtil.h"
#import <objc/runtime.h>
#import "BMLayoutLeading.h"
#import "BMLayoutTrailing.h"
#import "BMLayoutLeft.h"
#import "BMLayoutRight.h"
#import "BMLayoutTop.h"
#import "BMLayoutBottom.h"
#import "BMLayoutWidth.h"
#import "BMLayoutHeight.h"
#import "BMLayoutCenterX.h"
#import "BMLayoutCenterY.h"
#import "BMLayoutFirstBaseline.h"
#import "BMLayoutLastBaseline.h"

@implementation UIView (BMLayoutAnchorUtil)

#pragma mark - anchors

- (BMLayoutLeading *)bm_leading {
    return (BMLayoutLeading *)[self getAnchorForClass:BMLayoutLeading.class selector:_cmd];
}

- (BMLayoutTrailing *)bm_trailing {
    return (BMLayoutTrailing *)[self getAnchorForClass:BMLayoutTrailing.class selector:_cmd];
}

- (BMLayoutLeft *)bm_left {
    return (BMLayoutLeft *)[self getAnchorForClass:BMLayoutLeft.class selector:_cmd];
}

- (BMLayoutRight *)bm_right {
    return (BMLayoutRight *)[self getAnchorForClass:BMLayoutRight.class selector:_cmd];
}

- (BMLayoutTop *)bm_top {
    return (BMLayoutTop *)[self getAnchorForClass:BMLayoutTop.class selector:_cmd];
}

- (BMLayoutBottom *)bm_bottom {
    return (BMLayoutBottom *)[self getAnchorForClass:BMLayoutBottom.class selector:_cmd];
}

- (BMLayoutWidth *)bm_width {
    return (BMLayoutWidth *)[self getAnchorForClass:BMLayoutWidth.class selector:_cmd];
}

- (BMLayoutHeight *)bm_height {
    return (BMLayoutHeight *)[self getAnchorForClass:BMLayoutHeight.class selector:_cmd];
}

- (BMLayoutCenterX *)bm_centerX {
    return (BMLayoutCenterX *)[self getAnchorForClass:BMLayoutCenterX.class selector:_cmd];
}

- (BMLayoutCenterY *)bm_centerY {
    return (BMLayoutCenterY *)[self getAnchorForClass:BMLayoutCenterY.class selector:_cmd];
}

- (BMLayoutFirstBaseline *)bm_firstBaseline {
    return (BMLayoutFirstBaseline *)[self getAnchorForClass:BMLayoutFirstBaseline.class selector:_cmd];
}

- (BMLayoutLastBaseline *)bm_lastBaseline {
    return (BMLayoutLastBaseline *)[self getAnchorForClass:BMLayoutLastBaseline.class selector:_cmd];
}

- (BMLayoutAnchor *)getAnchorForClass:(Class)anchorClass selector:(SEL)selector {
    BMLayoutAnchor *anchor = objc_getAssociatedObject(self, selector);
    if (!anchor) {
        anchor = (BMLayoutAnchor *)[[anchorClass alloc] init];
        anchor.view = self;
        self.translatesAutoresizingMaskIntoConstraints = NO;
        objc_setAssociatedObject(self, selector, anchor, OBJC_ASSOCIATION_RETAIN);
    }
    return anchor;
}

#pragma mark constraints

- (NSLayoutConstraint *)bm_leadingConstraint {
    return [self getFirstConstraintIn:@selector(bm_leadingConstraints)];
}

- (NSLayoutConstraint *)bm_trailingConstraint {
    return [self getFirstConstraintIn:@selector(bm_trailingConstraints)];
}

- (NSLayoutConstraint *)bm_leftConstraint {
    return [self getFirstConstraintIn:@selector(bm_leftConstraints)];
}

- (NSLayoutConstraint *)bm_rightConstraint {
    return [self getFirstConstraintIn:@selector(bm_rightConstraints)];
}

- (NSLayoutConstraint *)bm_topConstraint {
    return [self getFirstConstraintIn:@selector(bm_topConstraints)];
}

- (NSLayoutConstraint *)bm_bottomConstraint {
    return [self getFirstConstraintIn:@selector(bm_bottomConstraints)];
}

- (NSLayoutConstraint *)bm_widthConstraint {
    return [self getFirstConstraintIn:@selector(bm_widthConstraints)];
}

- (NSLayoutConstraint *)bm_heightConstraint {
    return [self getFirstConstraintIn:@selector(bm_heightConstraints)];
}

- (NSLayoutConstraint *)bm_centerXConstraint {
    return [self getFirstConstraintIn:@selector(bm_centerXConstraints)];
}

- (NSLayoutConstraint *)bm_centerYConstraint {
    return [self getFirstConstraintIn:@selector(bm_centerYConstraints)];
}

- (NSLayoutConstraint *)bm_firstBaselineConstraint {
    return [self getFirstConstraintIn:@selector(bm_firstBaselineConstraints)];
}

- (NSLayoutConstraint *)bm_lastBaselineConstraint {
    return [self getFirstConstraintIn:@selector(bm_lastBaselineConstraints)];
}

- (NSArray<NSLayoutConstraint *> *)bm_leadingConstraints {
    return [self getConstraintsFor:_cmd];
}

- (NSArray<NSLayoutConstraint *> *)bm_trailingConstraints {
    return [self getConstraintsFor:_cmd];
}

- (NSArray<NSLayoutConstraint *> *)bm_leftConstraints {
    return [self getConstraintsFor:_cmd];
}

- (NSArray<NSLayoutConstraint *> *)bm_rightConstraints {
    return [self getConstraintsFor:_cmd];
}

- (NSArray<NSLayoutConstraint *> *)bm_topConstraints {
    return [self getConstraintsFor:_cmd];
}

- (NSArray<NSLayoutConstraint *> *)bm_bottomConstraints {
    return [self getConstraintsFor:_cmd];
}

- (NSArray<NSLayoutConstraint *> *)bm_widthConstraints {
    return [self getConstraintsFor:_cmd];
}

- (NSArray<NSLayoutConstraint *> *)bm_heightConstraints {
    return [self getConstraintsFor:_cmd];
}

- (NSArray<NSLayoutConstraint *> *)bm_centerXConstraints {
    return [self getConstraintsFor:_cmd];
}

- (NSArray<NSLayoutConstraint *> *)bm_centerYConstraints {
    return [self getConstraintsFor:_cmd];
}

- (NSArray<NSLayoutConstraint *> *)bm_firstBaselineConstraints {
    return [self getConstraintsFor:_cmd];
}

- (NSArray<NSLayoutConstraint *> *)bm_lastBaselineConstraints {
    return [self getConstraintsFor:_cmd];
}

- (NSArray<NSLayoutConstraint *> *)getConstraintsFor:(SEL)selector {
    NSMutableArray *constraints = objc_getAssociatedObject(self, selector);
    if (!constraints) {
        constraints = [NSMutableArray array];
        objc_setAssociatedObject(self, selector, constraints, OBJC_ASSOCIATION_RETAIN);
    }
    NSMutableArray *inactiveConstraints = [NSMutableArray array];
    for (NSLayoutConstraint *constraint in constraints) {
        if (!constraint.isActive) {
            [inactiveConstraints addObject:constraint];
        }
    }
    if (inactiveConstraints.count > 0) {
        [constraints removeObjectsInArray:inactiveConstraints];
        objc_setAssociatedObject(self, selector, constraints, OBJC_ASSOCIATION_RETAIN);
    }
    return constraints;
}

- (NSLayoutConstraint *)getFirstConstraintIn:(SEL)selector {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
    NSArray *constraints = [self performSelector:selector];
#pragma clang diagnostic pop
    if (!constraints || constraints.count == 0) {
        return nil;
    }
    return [constraints firstObject];
}

#pragma mark - add constraints

- (void)bm_addLeadingConstraint:(NSLayoutConstraint *)constraint {
    [self addConstraint:constraint toConstraints:@selector(bm_leadingConstraints)];
}

- (void)bm_addTrailingConstraint:(NSLayoutConstraint *)constraint {
    [self addConstraint:constraint toConstraints:@selector(bm_trailingConstraints)];
}

- (void)bm_addLeftConstraint:(NSLayoutConstraint *)constraint {
    [self addConstraint:constraint toConstraints:@selector(bm_leftConstraints)];
}

- (void)bm_addRightConstraint:(NSLayoutConstraint *)constraint {
    [self addConstraint:constraint toConstraints:@selector(bm_rightConstraints)];
}

- (void)bm_addTopConstraint:(NSLayoutConstraint *)constraint {
    [self addConstraint:constraint toConstraints:@selector(bm_topConstraints)];
}

- (void)bm_addBottomConstraint:(NSLayoutConstraint *)constraint {
    [self addConstraint:constraint toConstraints:@selector(bm_bottomConstraints)];
}

- (void)bm_addWidthConstraint:(NSLayoutConstraint *)constraint {
    [self addConstraint:constraint toConstraints:@selector(bm_widthConstraints)];
}

- (void)bm_addHeightConstraint:(NSLayoutConstraint *)constraint {
    [self addConstraint:constraint toConstraints:@selector(bm_heightConstraints)];
}

- (void)bm_addCenterXConstraint:(NSLayoutConstraint *)constraint {
    [self addConstraint:constraint toConstraints:@selector(bm_centerXConstraints)];
}

- (void)bm_addCenterYConstraint:(NSLayoutConstraint *)constraint {
    [self addConstraint:constraint toConstraints:@selector(bm_centerYConstraints)];
}

- (void)bm_addFirstBaselineConstraint:(NSLayoutConstraint *)constraint {
    [self addConstraint:constraint toConstraints:@selector(bm_firstBaselineConstraints)];
}

- (void)bm_addLastBaselineConstraint:(NSLayoutConstraint *)constraint {
    [self addConstraint:constraint toConstraints:@selector(bm_lastBaselineConstraints)];
}

- (void)addConstraint:(NSLayoutConstraint *)constraint toConstraints:(SEL)selector {
    if (!constraint) {
        return;
    }
    if (!constraint.isActive) {
        constraint.active = YES;
    }
    NSMutableArray *constraints = (NSMutableArray *)[self getConstraintsFor:selector];
    if (![constraints containsObject:constraint]) {
        [constraints addObject:constraint];
    }
}

#pragma mark - delete constraints

- (void)bm_deleteLeadingConstraint {
    [self bm_deleteConstraint:[self bm_leadingConstraint] in:@selector(bm_leadingConstraints)];
}

- (void)bm_deleteTrailingConstraint {
    [self bm_deleteConstraint:[self bm_trailingConstraint] in:@selector(bm_trailingConstraints)];
}

- (void)bm_deleteLeftConstraint {
    [self bm_deleteConstraint:[self bm_leftConstraint] in:@selector(bm_leftConstraints)];
}

- (void)bm_deleteRightConstraint {
    [self bm_deleteConstraint:[self bm_rightConstraint] in:@selector(bm_rightConstraints)];
}

- (void)bm_deleteTopConstraint {
    [self bm_deleteConstraint:[self bm_topConstraint] in:@selector(bm_topConstraints)];
}

- (void)bm_deleteBottomConstraint {
    [self bm_deleteConstraint:[self bm_bottomConstraint] in:@selector(bm_bottomConstraints)];
}

- (void)bm_deleteWidthConstraint {
    [self bm_deleteConstraint:[self bm_widthConstraint] in:@selector(bm_widthConstraints)];
}

- (void)bm_deleteHeightConstraint {
    [self bm_deleteConstraint:[self bm_heightConstraint] in:@selector(bm_heightConstraints)];
}

- (void)bm_deleteCenterXConstraint {
    [self bm_deleteConstraint:[self bm_centerXConstraint] in:@selector(bm_centerXConstraints)];
}

- (void)bm_deleteCenterYConstraint {
    [self bm_deleteConstraint:[self bm_centerYConstraint] in:@selector(bm_centerYConstraints)];
}

- (void)bm_deleteFirstBaselineConstraint {
    [self bm_deleteConstraint:[self bm_firstBaselineConstraint] in:@selector(bm_firstBaselineConstraints)];
}

- (void)bm_deleteLastBaselineConstraint {
    [self bm_deleteConstraint:[self bm_lastBaselineConstraint] in:@selector(bm_lastBaselineConstraints)];
}

- (void)bm_deleteConstraint:(NSLayoutConstraint *)constraint in:(SEL)selector {
    if (!constraint) return;
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
    NSMutableArray *constrainList = [self performSelector:selector];
#pragma clang diagnostic pop
    if (constrainList) {
        constraint.active = NO;
        [constrainList removeObject:constraint];
        objc_setAssociatedObject(self, selector, constrainList, OBJC_ASSOCIATION_RETAIN);
    }
}

- (void)bm_deleteLeadingConstraints {
    [self bm_deleteConstrains:@selector(bm_leadingConstraints)];
}

- (void)bm_deleteTrailingConstraints {
    [self bm_deleteConstrains:@selector(bm_trailingConstraints)];
}

- (void)bm_deleteLeftConstraints {
    [self bm_deleteConstrains:@selector(bm_leftConstraints)];
}

- (void)bm_deleteRightConstraints {
    [self bm_deleteConstrains:@selector(bm_rightConstraints)];
}

- (void)bm_deleteTopConstraints {
    [self bm_deleteConstrains:@selector(bm_topConstraints)];
}

- (void)bm_deleteBottomConstraints {
    [self bm_deleteConstrains:@selector(bm_bottomConstraints)];
}

- (void)bm_deleteWidthConstraints {
    [self bm_deleteConstrains:@selector(bm_widthConstraints)];
}

- (void)bm_deleteHeightConstraints {
    [self bm_deleteConstrains:@selector(bm_heightConstraints)];
}

- (void)bm_deleteCenterXConstraints {
    [self bm_deleteConstrains:@selector(bm_centerXConstraints)];
}

- (void)bm_deleteCenterYConstraints {
    [self bm_deleteConstrains:@selector(bm_centerYConstraints)];
}

- (void)bm_deleteFirstBaselineConstraints {
    [self bm_deleteConstrains:@selector(bm_firstBaselineConstraints)];
}

- (void)bm_deleteLastBaselineConstraints {
    [self bm_deleteConstrains:@selector(bm_lastBaselineConstraints)];
}

- (void)bm_deleteConstrains:(SEL)selector {
    objc_setAssociatedObject(self, selector, nil, OBJC_ASSOCIATION_RETAIN);
}

#pragma mark - update constraints

- (void)bm_updateLeadingConstraint:(CGFloat)constant {
    [self bm_leadingConstraint].constant = constant;
}

- (void)bm_updateTrailingConstraint:(CGFloat)constant {
    [self bm_trailingConstraint].constant = constant;
}

- (void)bm_updateLeftConstraint:(CGFloat)constant {
    [self bm_leftConstraint].constant = constant;
}

- (void)bm_updateRightConstraint:(CGFloat)constant {
    [self bm_rightConstraint].constant = constant;
}

- (void)bm_updateTopConstraint:(CGFloat)constant {
    [self bm_topConstraint].constant = constant;
}

- (void)bm_updateBottomConstraint:(CGFloat)constant {
    [self bm_bottomConstraint].constant = constant;
}

- (void)bm_updateWidthConstraint:(CGFloat)constant {
    [self bm_widthConstraint].constant = constant;
}

- (void)bm_updateHeightConstraint:(CGFloat)constant {
    [self bm_heightConstraint].constant = constant;
}

- (void)bm_updateCenterXConstraint:(CGFloat)constant {
    [self bm_centerXConstraint].constant = constant;
}

- (void)bm_updateCenterYConstraint:(CGFloat)constant {
    [self bm_centerYConstraint].constant = constant;
}

- (void)bm_updateFirstBaselineConstraint:(CGFloat)constant {
    [self bm_firstBaselineConstraint].constant = constant;
}

- (void)bm_updateLastBaselineConstraint:(CGFloat)constant {
    [self bm_lastBaselineConstraint].constant = constant;
}

#pragma mark - replace constraints

- (void)bm_replaceLeadingConstraint:(NSLayoutConstraint *)constraint {
    [self bm_deleteLeadingConstraint];
    [self bm_addLeadingConstraint:constraint];
}

- (void)bm_replaceTrailingConstraint:(NSLayoutConstraint *)constraint {
    [self bm_deleteTrailingConstraint];
    [self bm_addTrailingConstraint:constraint];
}

- (void)bm_replaceLeftConstraint:(NSLayoutConstraint *)constraint {
    [self bm_deleteLeftConstraint];
    [self bm_addLeftConstraint:constraint];
}

- (void)bm_replaceRightConstraint:(NSLayoutConstraint *)constraint {
    [self bm_deleteRightConstraint];
    [self bm_addRightConstraint:constraint];
}

- (void)bm_replaceTopConstraint:(NSLayoutConstraint *)constraint {
    [self bm_deleteTopConstraint];
    [self bm_addTopConstraint:constraint];
}

- (void)bm_replaceBottomConstraint:(NSLayoutConstraint *)constraint {
    [self bm_deleteBottomConstraint];
    [self bm_addBottomConstraint:constraint];
}

- (void)bm_replaceWidthConstraint:(NSLayoutConstraint *)constraint {
    [self bm_deleteWidthConstraint];
    [self bm_addWidthConstraint:constraint];
}

- (void)bm_replaceHeightConstraint:(NSLayoutConstraint *)constraint {
    [self bm_deleteHeightConstraint];
    [self bm_addHeightConstraint:constraint];
}

- (void)bm_replaceCenterXConstraint:(NSLayoutConstraint *)constraint {
    [self bm_deleteCenterXConstraint];
    [self bm_addCenterXConstraint:constraint];
}

- (void)bm_replaceCenterYConstraint:(NSLayoutConstraint *)constraint {
    [self bm_deleteCenterYConstraint];
    [self bm_addCenterYConstraint:constraint];
}

- (void)bm_replaceFirstBaselineConstraint:(NSLayoutConstraint *)constraint {
    [self bm_deleteFirstBaselineConstraint];
    [self bm_addFirstBaselineConstraint:constraint];
}

- (void)bm_replaceLastBaselineConstraint:(NSLayoutConstraint *)constraint {
    [self bm_deleteLastBaselineConstraint];
    [self bm_addLastBaselineConstraint:constraint];
}

@end
