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

- (NSLayoutDimension *)anchorWithOffsetTo:(NSLayoutYAxisAnchor *)otherAnchor {
    NSLayoutYAxisAnchor *systemAnchor = (NSLayoutYAxisAnchor *)[self getSystemAnchor];
    return [systemAnchor anchorWithOffsetToAnchor:otherAnchor];
}

- (NSLayoutConstraint *)equalToSystemSpacingBelow:(NSLayoutYAxisAnchor *)anchor multiplier:(CGFloat)multiplier {
    NSLayoutYAxisAnchor *systemAnchor = (NSLayoutYAxisAnchor *)[self getSystemAnchor];
    NSLayoutConstraint *constraint = [systemAnchor constraintEqualToSystemSpacingBelowAnchor:anchor multiplier:multiplier];
    return [self addConstraint:constraint];
}

- (NSLayoutConstraint *)greaterThanOrEqualToSystemSpacingBelow:(NSLayoutYAxisAnchor *)anchor multiplier:(CGFloat)multiplier {
    NSLayoutYAxisAnchor *systemAnchor = (NSLayoutYAxisAnchor *)[self getSystemAnchor];
    NSLayoutConstraint *constraint = [systemAnchor constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:anchor multiplier:multiplier];
    return [self addConstraint:constraint];
}

- (NSLayoutConstraint *)lessThanOrEqualToSystemSpacingBelow:(NSLayoutYAxisAnchor *)anchor multiplier:(CGFloat)multiplier {
    NSLayoutYAxisAnchor *systemAnchor = (NSLayoutYAxisAnchor *)[self getSystemAnchor];
    NSLayoutConstraint *constraint = [systemAnchor constraintLessThanOrEqualToSystemSpacingBelowAnchor:anchor multiplier:multiplier];
    return [self addConstraint:constraint];
}

@end
