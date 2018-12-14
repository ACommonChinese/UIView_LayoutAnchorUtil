//
//  BMLayoutYAxisAnchor.m
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/11.
//  Copyright © 2018 liuxing8807@126.com All rights reserved.
//

#import "BMLayoutYAxisAnchor.h"
#import "BMLayoutAnchor+Private.h"

@implementation BMLayoutYAxisAnchor

- (NSLayoutDimension *)anchorWithOffsetToAnchor:(NSLayoutYAxisAnchor *)otherAnchor {
    BMLayoutYAxisAnchor *systemAnchor = (BMLayoutYAxisAnchor *)[self getSystemAnchor];
    return [systemAnchor anchorWithOffsetToAnchor:otherAnchor];
}

- (NSLayoutConstraint *)constraintEqualToSystemSpacingBelowAnchor:(NSLayoutYAxisAnchor *)anchor multiplier:(CGFloat)multiplier {
    BMLayoutYAxisAnchor *systemAnchor = (BMLayoutYAxisAnchor *)[self getSystemAnchor];
    NSLayoutConstraint *constraint = [systemAnchor constraintEqualToSystemSpacingBelowAnchor:anchor multiplier:multiplier];
    constraint.active = YES;
    [[self getSystemConstrains] addObject:constraint];
    return constraint;
}

- (NSLayoutConstraint *)constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:(NSLayoutYAxisAnchor *)anchor multiplier:(CGFloat)multiplier {
    BMLayoutYAxisAnchor *systemAnchor = (BMLayoutYAxisAnchor *)[self getSystemAnchor];
    NSLayoutConstraint *constraint = [systemAnchor constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:anchor multiplier:multiplier];
    constraint.active = YES;
    [[self getSystemConstrains] addObject:constraint];
    return constraint;
}

- (NSLayoutConstraint *)constraintLessThanOrEqualToSystemSpacingBelowAnchor:(NSLayoutYAxisAnchor *)anchor multiplier:(CGFloat)multiplier {
    BMLayoutYAxisAnchor *systemAnchor = (BMLayoutYAxisAnchor *)[self getSystemAnchor];
    NSLayoutConstraint *constraint = [systemAnchor constraintLessThanOrEqualToSystemSpacingBelowAnchor:anchor multiplier:multiplier];
    constraint.active = YES;
    [[self getSystemConstrains] addObject:constraint];
    return constraint;
}

@end
