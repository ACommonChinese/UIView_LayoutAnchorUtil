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

- (NSLayoutConstraint *)equalToSystemSpacingAfter:(NSLayoutXAxisAnchor *)anchor multiplier:(CGFloat)multiplier {
    NSLayoutXAxisAnchor *systemAnchor = (NSLayoutXAxisAnchor *)[self getSystemAnchor];
    NSLayoutConstraint *constraint = [systemAnchor constraintEqualToSystemSpacingAfterAnchor:anchor multiplier:multiplier];
    return [self addConstraint:constraint];
}

- (NSLayoutConstraint *)greaterThanOrEqualToSystemSpacingAfter:(NSLayoutXAxisAnchor *)anchor multiplier:(CGFloat)multiplier {
    NSLayoutXAxisAnchor *systemAnchor = (NSLayoutXAxisAnchor *)[self getSystemAnchor];
    NSLayoutConstraint *constraint = [systemAnchor constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:anchor multiplier:multiplier];
    return [self addConstraint:constraint];
}

- (NSLayoutConstraint *)lessThanOrEqualToSystemSpacingAfter:(NSLayoutXAxisAnchor *)anchor multiplier:(CGFloat)multiplier {
    NSLayoutXAxisAnchor *systemAnchor = (NSLayoutXAxisAnchor *)[self getSystemAnchor];
    NSLayoutConstraint *constraint = [systemAnchor constraintLessThanOrEqualToSystemSpacingAfterAnchor:anchor multiplier:multiplier];
    return [self addConstraint:constraint];
}

- (NSLayoutDimension *)anchorWithOffsetTo:(NSLayoutXAxisAnchor *)otherAnchor {
    NSLayoutXAxisAnchor *systemAnchor = (NSLayoutXAxisAnchor *)[self getSystemAnchor];
    NSLayoutDimension *dimension = [systemAnchor anchorWithOffsetToAnchor:otherAnchor];
    return dimension;
}

@end
