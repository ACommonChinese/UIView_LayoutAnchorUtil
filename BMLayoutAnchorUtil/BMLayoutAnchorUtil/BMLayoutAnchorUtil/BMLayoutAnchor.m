//
//  BMLayoutAnchor.m
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/11.
//  Copyright © 2018 liuxing8807@126.com All rights reserved.
//

#import "BMLayoutAnchor.h"
#import "BMLayoutAnchor+Private.h"
#import "UIView+BMLayoutAnchorUtil.h"

@implementation BMLayoutAnchor

- (NSLayoutConstraint *)constraintEqualToAnchor:(NSLayoutAnchor *)anchor {
    NSLayoutConstraint *constraint = [[self getSystemAnchor] constraintEqualToAnchor:anchor];
    constraint.active = YES;
    [[self getSystemConstrains] addObject:constraint];
    return constraint;
}

- (NSLayoutConstraint *)constraintGreaterThanOrEqualToAnchor:(NSLayoutAnchor *)anchor {
    NSLayoutConstraint *constraint = [[self getSystemAnchor] constraintGreaterThanOrEqualToAnchor:anchor];
    constraint.active = YES;
    [[self getSystemConstrains] addObject:constraint];
    return constraint;
}

- (NSLayoutConstraint *)constraintLessThanOrEqualToAnchor:(NSLayoutAnchor *)anchor {
    NSLayoutConstraint *constraint = [[self getSystemAnchor] constraintLessThanOrEqualToAnchor:anchor];
    constraint.active = YES;
    [[self getSystemConstrains] addObject:constraint];
    return constraint;
}

- (NSLayoutConstraint *)constraintEqualToAnchor:(NSLayoutAnchor *)anchor constant:(CGFloat)c {
    NSLayoutConstraint *constraint = [[self getSystemAnchor] constraintEqualToAnchor:anchor constant:c];
    constraint.active = YES;
    [[self getSystemConstrains] addObject:constraint];
    return constraint;
}

- (NSLayoutConstraint *)constraintGreaterThanOrEqualToAnchor:(NSLayoutAnchor *)anchor constant:(CGFloat)c {
    NSLayoutConstraint *constraint = [[self getSystemAnchor] constraintGreaterThanOrEqualToAnchor:anchor constant:c];
    constraint.active = YES;
    [[self getSystemConstrains] addObject:constraint];
    return constraint;
}

- (NSLayoutConstraint *)constraintLessThanOrEqualToAnchor:(NSLayoutAnchor *)anchor constant:(CGFloat)c {
    NSLayoutConstraint *constraint = [[self getSystemAnchor] constraintLessThanOrEqualToAnchor:anchor constant:c];
    constraint.active = YES;
    [[self getSystemConstrains] addObject:constraint];
    return constraint;
}

- (NSLayoutConstraint *)getSystemAnchor {
    NSAssert(NO, @"Subclass implemnt");
    return nil;
}

- (NSLayoutConstraint *)getSystemConstrains {
    NSAssert(NO, @"Subclass implemnt");
    return nil;
}

@end
