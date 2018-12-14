//
//  BMLayoutXAxisAnchor.m
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/11.
//  Copyright © 2018 liuxing8807@126.com All rights reserved.
//

#import "BMLayoutXAxisAnchor.h"
#import "BMLayoutAnchor+Private.h"

@implementation BMLayoutXAxisAnchor

#pragma mark - BMLayoutAnchor

- (NSLayoutConstraint *)constraintEqualToSystemSpacingAfterAnchor:(NSLayoutXAxisAnchor *)anchor multiplier:(CGFloat)multiplier {
    BMLayoutXAxisAnchor *systemAnchor = (BMLayoutXAxisAnchor *)[self getSystemAnchor];
    NSLayoutConstraint *constraint = [systemAnchor constraintEqualToSystemSpacingAfterAnchor:anchor multiplier:multiplier];
    constraint.active = YES;
    [[self getSystemConstrains] addObject:constraint];
    return constraint;
}

- (NSLayoutConstraint *)constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:(NSLayoutXAxisAnchor *)anchor multiplier:(CGFloat)multiplier {
    BMLayoutXAxisAnchor *systemAnchor = (BMLayoutXAxisAnchor *)[self getSystemAnchor];
    NSLayoutConstraint *constraint = [systemAnchor constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:anchor multiplier:multiplier];
    constraint.active = YES;
    [[self getSystemConstrains] addObject:constraint];
    return constraint;
}

- (NSLayoutConstraint *)constraintLessThanOrEqualToSystemSpacingAfterAnchor:(NSLayoutXAxisAnchor *)anchor multiplier:(CGFloat)multiplier {
    BMLayoutXAxisAnchor *systemAnchor = (BMLayoutXAxisAnchor *)[self getSystemAnchor];
    NSLayoutConstraint *constraint = [systemAnchor constraintLessThanOrEqualToSystemSpacingAfterAnchor:anchor multiplier:multiplier];
    constraint.active = YES;
    [[self getSystemConstrains] addObject:constraint];
    return constraint;
}

- (NSLayoutDimension *)anchorWithOffsetToAnchor:(NSLayoutXAxisAnchor *)otherAnchor {
    BMLayoutXAxisAnchor *systemAnchor = (BMLayoutXAxisAnchor *)[self getSystemAnchor];
    return [systemAnchor anchorWithOffsetToAnchor:otherAnchor];
}

@end
