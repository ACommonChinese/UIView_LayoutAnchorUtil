//
//  BMLayoutDimension.m
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/11.
//  Copyright © 2018 liuxing8807@126.com All rights reserved.
//

#import "BMLayoutDimension.h"
#import "BMLayoutAnchor+Private.h"

@implementation BMLayoutDimension

- (NSLayoutConstraint *)constraintEqualToConstant:(CGFloat)c {
    BMLayoutDimension *systemAnchor = (BMLayoutDimension *)[self getSystemAnchor];
    NSLayoutConstraint *constraint = [systemAnchor constraintEqualToConstant:c];
    constraint.active = YES;
    [[self getSystemConstrains] addObject:constraint];
    return constraint;
}

- (NSLayoutConstraint *)constraintGreaterThanOrEqualToConstant:(CGFloat)c {
    BMLayoutDimension *systemAnchor = (BMLayoutDimension *)[self getSystemAnchor];
    NSLayoutConstraint *constraint = [systemAnchor constraintGreaterThanOrEqualToConstant:c];
    constraint.active = YES;
    [[self getSystemConstrains] addObject:constraint];
    return constraint;
}

- (NSLayoutConstraint *)constraintLessThanOrEqualToConstant:(CGFloat)c {
    BMLayoutDimension *systemAnchor = (BMLayoutDimension *)[self getSystemAnchor];
    NSLayoutConstraint *constraint = [systemAnchor constraintLessThanOrEqualToConstant:c];
    constraint.active = YES;
    [[self getSystemConstrains] addObject:constraint];
    return constraint;
}

- (NSLayoutConstraint *)constraintEqualToAnchor:(NSLayoutDimension *)anchor multiplier:(CGFloat)m {
    BMLayoutDimension *systemAnchor = (BMLayoutDimension *)[self getSystemAnchor];
    NSLayoutConstraint *constraint = [systemAnchor constraintEqualToAnchor:anchor multiplier:m];
    constraint.active = YES;
    [[self getSystemConstrains] addObject:constraint];
    return constraint;
}

- (NSLayoutConstraint *)constraintGreaterThanOrEqualToAnchor:(NSLayoutDimension *)anchor multiplier:(CGFloat)m {
    BMLayoutDimension *systemAnchor = (BMLayoutDimension *)[self getSystemAnchor];
    NSLayoutConstraint *constraint = [systemAnchor constraintGreaterThanOrEqualToAnchor:anchor multiplier:m];
    constraint.active = YES;
    [[self getSystemConstrains] addObject:constraint];
    return constraint;
}

- (NSLayoutConstraint *)constraintLessThanOrEqualToAnchor:(NSLayoutDimension *)anchor multiplier:(CGFloat)m {
    BMLayoutDimension *systemAnchor = (BMLayoutDimension *)[self getSystemAnchor];
    NSLayoutConstraint *constraint = [systemAnchor constraintLessThanOrEqualToAnchor:anchor multiplier:m];
    constraint.active = YES;
    [[self getSystemConstrains] addObject:constraint];
    return constraint;
}

- (NSLayoutConstraint *)constraintEqualToAnchor:(NSLayoutDimension *)anchor multiplier:(CGFloat)m constant:(CGFloat)c {
    BMLayoutDimension *systemAnchor = (BMLayoutDimension *)[self getSystemAnchor];
    NSLayoutConstraint *constraint = [systemAnchor constraintEqualToAnchor:anchor multiplier:m constant:c];
    constraint.active = YES;
    [[self getSystemConstrains] addObject:constraint];
    return constraint;
}

- (NSLayoutConstraint *)constraintGreaterThanOrEqualToAnchor:(NSLayoutDimension *)anchor multiplier:(CGFloat)m constant:(CGFloat)c {
    BMLayoutDimension *systemAnchor = (BMLayoutDimension *)[self getSystemAnchor];
    NSLayoutConstraint *constraint = [systemAnchor constraintGreaterThanOrEqualToAnchor:anchor multiplier:m constant:c];
    constraint.active = YES;
    [[self getSystemConstrains] addObject:constraint];
    return constraint;
}

- (NSLayoutConstraint *)constraintLessThanOrEqualToAnchor:(NSLayoutDimension *)anchor multiplier:(CGFloat)m constant:(CGFloat)c {
    BMLayoutDimension *systemAnchor = (BMLayoutDimension *)[self getSystemAnchor];
    NSLayoutConstraint *constraint = [systemAnchor constraintLessThanOrEqualToAnchor:anchor multiplier:m constant:c];
    constraint.active = YES;
    [[self getSystemConstrains] addObject:constraint];
    return constraint;
}

@end
