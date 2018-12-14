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

- (NSLayoutConstraint *)equalTo:(id)value {
    NSLayoutConstraint *constraint = nil;
    if ([value isKindOfClass:[NSLayoutAnchor class]]) {
        constraint = [[self getSystemAnchor] constraintEqualToAnchor:value];
    }
    else if ([value isKindOfClass:[NSNumber class]]) {
        constraint = [(NSLayoutDimension *)[self getSystemAnchor] constraintEqualToConstant:[value floatValue]];
    }
    else if ([value isKindOfClass:[UIView class]]) {
        constraint = [[self getSystemAnchor] constraintEqualToAnchor:[self getSystemAnchor:value]];
    }
    return [self addConstraint:constraint];
}

- (NSLayoutConstraint *)greaterThanOrEqualTo:(id)value {
    NSLayoutConstraint *constraint = nil;
    if ([value isKindOfClass:[NSLayoutAnchor class]]) {
        constraint = [[self getSystemAnchor] constraintGreaterThanOrEqualToAnchor:value];
    }
    else if ([value isKindOfClass:[NSNumber class]]) {
        constraint = [(NSLayoutDimension *)[self getSystemAnchor] constraintGreaterThanOrEqualToConstant:[value floatValue]];
    }
    else if ([value isKindOfClass:[UIView class]]) {
        constraint = [[self getSystemAnchor] constraintGreaterThanOrEqualToAnchor:[self getSystemAnchor:value]];
    }
    return [self addConstraint:constraint];
}

- (NSLayoutConstraint *)lessThanOrEqualTo:(id)value {
    NSLayoutConstraint *constraint = nil;
    if ([value isKindOfClass:[NSLayoutAnchor class]]) {
        constraint = [[self getSystemAnchor] constraintLessThanOrEqualToAnchor:value];
    }
    else if ([value isKindOfClass:[NSNumber class]]) {
        constraint = [(NSLayoutDimension *)[self getSystemAnchor] constraintLessThanOrEqualToConstant:[value floatValue]];
    }
    else if ([value isKindOfClass:[UIView class]]) {
        constraint = [[self getSystemAnchor] constraintLessThanOrEqualToAnchor:[self getSystemAnchor:value]];
    }
    return [self addConstraint:constraint];
}

- (NSLayoutConstraint *)equalTo:(id)value multiplier:(CGFloat)m {
    NSLayoutConstraint *constraint = nil;
    if ([value isKindOfClass:[NSLayoutAnchor class]]) {
        constraint = [(NSLayoutDimension *)[self getSystemAnchor] constraintEqualToAnchor:value multiplier:m];
    }
    else if ([value isKindOfClass:[UIView class]]) {
        constraint = [(NSLayoutDimension *)[self getSystemAnchor] constraintEqualToAnchor:(id)[self getSystemAnchor:value] multiplier:m];
    }
    return [self addConstraint:constraint];
}

- (NSLayoutConstraint *)greaterThanOrEqualTo:(id)value multiplier:(CGFloat)m {
    NSLayoutConstraint *constraint = nil;
    if ([value isKindOfClass:[NSLayoutAnchor class]]) {
        constraint = [(NSLayoutDimension *)[self getSystemAnchor] constraintGreaterThanOrEqualToAnchor:value multiplier:m];
    }
    else if ([value isKindOfClass:[UIView class]]) {
        constraint = [(NSLayoutDimension *)[self getSystemAnchor] constraintGreaterThanOrEqualToAnchor:(id)[self getSystemAnchor:value] multiplier:m];
    }
    return [self addConstraint:constraint];
}

- (NSLayoutConstraint *)lessThanOrEqualTo:(id)value multiplier:(CGFloat)m {
    NSLayoutConstraint *constraint = nil;
    if ([value isKindOfClass:[NSLayoutAnchor class]]) {
        constraint = [(NSLayoutDimension *)[self getSystemAnchor] constraintLessThanOrEqualToAnchor:value multiplier:m];
    }
    else if ([value isKindOfClass:[UIView class]]) {
        constraint = [(NSLayoutDimension *)[self getSystemAnchor] constraintLessThanOrEqualToAnchor:(id)[self getSystemAnchor:value] multiplier:m];
    }
    return [self addConstraint:constraint];
}

- (NSLayoutConstraint *)equalTo:(id)value multiplier:(CGFloat)m constant:(CGFloat)c {
    NSLayoutConstraint *constraint = nil;
    if ([value isKindOfClass:[NSLayoutAnchor class]]) {
        constraint = [(NSLayoutDimension *)[self getSystemAnchor] constraintEqualToAnchor:value multiplier:m constant:c];
    }
    else if ([value isKindOfClass:[UIView class]]) {
        constraint = [(NSLayoutDimension *)[self getSystemAnchor] constraintEqualToAnchor:(id)[self getSystemAnchor:value] multiplier:m constant:c];
    }
    return [self addConstraint:constraint];
}

- (NSLayoutConstraint *)greaterThanOrEqualTo:(id)value multiplier:(CGFloat)m constant:(CGFloat)c {
    NSLayoutConstraint *constraint = nil;
    if ([value isKindOfClass:[NSLayoutAnchor class]]) {
        constraint = [(NSLayoutDimension *)[self getSystemAnchor] constraintGreaterThanOrEqualToAnchor:value multiplier:m constant:c];
    }
    else if ([value isKindOfClass:[UIView class]]) {
        constraint = [(NSLayoutDimension *)[self getSystemAnchor] constraintGreaterThanOrEqualToAnchor:(id)[self getSystemAnchor:value] multiplier:m constant:c];
    }
    return [self addConstraint:constraint];
}

- (NSLayoutConstraint *)lessThanOrEqualTo:(id)value multiplier:(CGFloat)m constant:(CGFloat)c {
    NSLayoutConstraint *constraint = nil;
    if ([value isKindOfClass:[NSLayoutAnchor class]]) {
        constraint = [(NSLayoutDimension *)[self getSystemAnchor] constraintLessThanOrEqualToAnchor:value multiplier:m constant:c];
    }
    else if ([value isKindOfClass:[UIView class]]) {
        constraint = [(NSLayoutDimension *)[self getSystemAnchor] constraintLessThanOrEqualToAnchor:(id)[self getSystemAnchor:value] multiplier:m constant:c];
    }
    return [self addConstraint:constraint];
}

@end
