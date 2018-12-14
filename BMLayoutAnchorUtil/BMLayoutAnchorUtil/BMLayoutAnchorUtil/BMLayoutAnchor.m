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

@interface BMLayoutAnchor()

@end

@implementation BMLayoutAnchor

- (NSLayoutConstraint *)equalTo:(id)value {
    NSLayoutConstraint *constraint = nil;
    if ([value isKindOfClass:[NSLayoutAnchor class]]) {
        constraint = [[self getSystemAnchor] constraintEqualToAnchor:value];
    }
    else if ([value isKindOfClass:[NSNumber class]]) {
        constraint = [[self getSystemAnchor] constraintEqualToAnchor:[self getSystemAnchor:self.view.superview] constant:[value floatValue]];
    }
    else if ([value isKindOfClass:[UIView class]]) {
        constraint = [[self getSystemAnchor] constraintEqualToAnchor:[self getSystemAnchor:value]];
    }
    return [self addConstraint:constraint];
}

- (NSLayoutConstraint *)addConstraint:(NSLayoutConstraint *)constraint {
    constraint.active = YES;
    [[self getSystemConstrains] addObject:constraint];
    return constraint;
}

- (NSLayoutConstraint *)greaterThanOrEqualTo:(id)value {
    NSLayoutConstraint *constraint = nil;
    if ([value isKindOfClass:NSLayoutAnchor.class]) {
        constraint = [[self getSystemAnchor] constraintGreaterThanOrEqualToAnchor:value];
    }
    else if ([value isKindOfClass:[NSNumber class]]) {
        constraint = [[self getSystemAnchor] constraintGreaterThanOrEqualToAnchor:[self getSystemAnchor:self.view.superview] constant:[value floatValue]];
    }
    else if ([value isKindOfClass:[UIView class]]) {
        constraint = [[self getSystemAnchor] constraintGreaterThanOrEqualToAnchor:[self getSystemAnchor:value]];
    }
    return [self addConstraint:constraint];
}

- (NSLayoutConstraint *)lessThanOrEqualTo:(id)value {
    NSLayoutConstraint *constraint = nil;
    if ([value isKindOfClass:NSLayoutAnchor.class]) {
        constraint = [[self getSystemAnchor] constraintLessThanOrEqualToAnchor:value];
    }
    else if ([value isKindOfClass:[NSNumber class]]) {
        constraint = [[self getSystemAnchor] constraintLessThanOrEqualToAnchor:[self getSystemAnchor:self.view.superview] constant:[value floatValue]];
    }
    else if ([value isKindOfClass:[UIView class]]) {
        constraint = [[self getSystemAnchor] constraintLessThanOrEqualToAnchor:[self getSystemAnchor:value]];
    }
    return [self addConstraint:constraint];
}

- (NSLayoutConstraint *)equalTo:(id)value constant:(CGFloat)c {
    NSLayoutConstraint *constraint = nil;
    if ([value isKindOfClass:NSLayoutAnchor.class]) {
        constraint = [[self getSystemAnchor] constraintEqualToAnchor:value constant:c];
    }
    else if ([value isKindOfClass:[UIView class]]) {
        constraint = [[self getSystemAnchor] constraintEqualToAnchor:[self getSystemAnchor:value] constant:c];
    }
    return [self addConstraint:constraint];
}

- (NSLayoutConstraint *)greaterThanOrEqualTo:(id)value constant:(CGFloat)c {
    NSLayoutConstraint *constraint = nil;
    if ([value isKindOfClass:NSLayoutAnchor.class]) {
        constraint = [[self getSystemAnchor] constraintGreaterThanOrEqualToAnchor:value constant:c];
    }
    else if ([value isKindOfClass:[UIView class]]) {
        constraint = [[self getSystemAnchor] constraintGreaterThanOrEqualToAnchor:[self getSystemAnchor:value] constant:c];
    }
    return [self addConstraint:constraint];
}

- (NSLayoutConstraint *)lessThanOrEqualTo:(id)value constant:(CGFloat)c {
    NSLayoutConstraint *constraint = nil;
    if ([value isKindOfClass:NSLayoutAnchor.class]) {
        constraint = [[self getSystemAnchor] constraintLessThanOrEqualToAnchor:value constant:c];
    }
    else if ([value isKindOfClass:[UIView class]]) {
        constraint = [[self getSystemAnchor] constraintLessThanOrEqualToAnchor:[self getSystemAnchor:value] constant:c];
    }
    return [self addConstraint:constraint];
}

- (instancetype)getSystemAnchor {
    NSAssert(NO, @"getSystemAnchor should be implemnte by subclass");
    return nil;
}

- (instancetype)getSystemConstrains {
    NSAssert(NO, @"getSystemConstrains should be implemnte by subclass");
    return nil;
}

- (instancetype)getSystemAnchor:(UIView *)view {
    NSAssert(NO, @"getSystemAnchor: should be implemnte by subclass");
    return nil;
}

@end
