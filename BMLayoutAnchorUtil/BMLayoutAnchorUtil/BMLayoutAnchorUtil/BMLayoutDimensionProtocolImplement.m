//
//  BMLayoutDimensionProtocolImplement.m
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/17.
//  Copyright © 2018 banma. All rights reserved.
//

#import "BMLayoutDimensionProtocolImplement.h"

@implementation BMLayoutDimensionProtocolImplement

- (NSLayoutConstraint *)equal:(id)value {
    NSLayoutConstraint *constraint = nil;
    if ([value isKindOfClass:[NSLayoutAnchor class]]) {
        constraint = [[self getSystemAnchor] constraintEqualToAnchor:value];
    }
    else if ([value isKindOfClass:[NSNumber class]]) {
        constraint = [[self getSystemAnchor] constraintEqualToConstant:[value floatValue]];
    }
    else if ([value isKindOfClass:[UIView class]]) {
        constraint = [[self getSystemAnchor] constraintEqualToAnchor:[self getSystemAnchor:value]];
    }
    else {
        BMLayoutThrowTypeInvalidException
    }
    
    return [self addConstraint:constraint];
}

- (NSLayoutConstraint *)greaterEqual:(id)value {
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
    else {
        BMLayoutThrowTypeInvalidException
    }
    
    return [self addConstraint:constraint];
}

- (NSLayoutConstraint *)lessEqual:(id)value {
    NSLayoutConstraint *constraint = nil;
    if ([value isKindOfClass:[NSLayoutAnchor class]]) {
        constraint = [[self getSystemAnchor] constraintLessThanOrEqualToAnchor:value];
    }
    else if ([value isKindOfClass:[NSNumber class]]) {
        constraint = [[self getSystemAnchor] constraintLessThanOrEqualToAnchor:[self getSystemAnchor:self.view.superview] constant:[value floatValue]];
    }
    else if ([value isKindOfClass:[UIView class]]) {
        constraint = [[self getSystemAnchor] constraintLessThanOrEqualToAnchor:[self getSystemAnchor:value]];
    }
    else {
        BMLayoutThrowTypeInvalidException
    }
    
    return [self addConstraint:constraint];
}

- (NSLayoutConstraint *)equal:(id)value constant:(CGFloat)c {
    NSLayoutConstraint *constraint = nil;
    if ([value isKindOfClass:[NSLayoutAnchor class]]) {
        constraint = [[self getSystemAnchor] constraintEqualToAnchor:value constant:c];
    }
    else if ([value isKindOfClass:[NSNumber class]]) {
        constraint = [[self getSystemAnchor] constraintEqualToConstant:[value doubleValue]+c];
    }
    else if ([value isKindOfClass:[UIView class]]) {
        constraint = [[self getSystemAnchor] constraintEqualToAnchor:[self getSystemAnchor:(UIView *)value] constant:c];
    }
    else {
        BMLayoutThrowTypeInvalidException
    }
    
    return [self addConstraint:constraint];
}

- (NSLayoutConstraint *)greaterEqual:(id)value constant:(CGFloat)c {
    NSLayoutConstraint *constraint = nil;
    if ([value isKindOfClass:[NSLayoutAnchor class]]) {
        constraint = [[self getSystemAnchor] constraintGreaterThanOrEqualToAnchor:value constant:c];
    }
    else if ([value isKindOfClass:[NSNumber class]]) {
        constraint = [[self getSystemAnchor] constraintGreaterThanOrEqualToConstant:[value doubleValue]+c];
    }
    else if ([value isKindOfClass:[UIView class]]) {
        constraint = [[self getSystemAnchor] constraintGreaterThanOrEqualToAnchor:[self getSystemAnchor:(UIView *)value] constant:c];
    }
    else {
        BMLayoutThrowTypeInvalidException
    }
    
    return [self addConstraint:constraint];
}

- (NSLayoutConstraint *)lessEqual:(id)value constant:(CGFloat)c {
    NSLayoutConstraint *constraint = nil;
    if ([value isKindOfClass:[NSLayoutAnchor class]]) {
        constraint = [[self getSystemAnchor] constraintLessThanOrEqualToAnchor:value constant:c];
    }
    else if ([value isKindOfClass:[NSNumber class]]) {
        constraint = [[self getSystemAnchor] constraintLessThanOrEqualToConstant:[value doubleValue]+c];
    }
    else if ([value isKindOfClass:[UIView class]]) {
        constraint = [[self getSystemAnchor] constraintLessThanOrEqualToAnchor:[self getSystemAnchor:(UIView *)value] constant:c];
    }
    else {
        BMLayoutThrowTypeInvalidException
    }
    
    return [self addConstraint:constraint];
}

- (NSLayoutConstraint *)equal:(id)value multiplier:(CGFloat)m constant:(CGFloat)c {
    NSLayoutConstraint *constraint = nil;
    if ([value isKindOfClass:[NSLayoutAnchor class]]) {
        constraint = [[self getSystemAnchor] constraintEqualToAnchor:value multiplier:m constant:c];
    }
    else if ([value isKindOfClass:[NSNumber class]]) {
        constraint = [[self getSystemAnchor] constraintEqualToConstant:[value doubleValue]*m+c];
    }
    else if ([value isKindOfClass:[UIView class]]) {
        constraint = [[self getSystemAnchor] constraintEqualToAnchor:[self getSystemAnchor:(UIView *)value] multiplier:m constant:c];
    }
    else {
        BMLayoutThrowTypeInvalidException
    }
    
    return [self addConstraint:constraint];
}

- (NSLayoutConstraint *)lessEqual:(id)value multiplier:(CGFloat)m constant:(CGFloat)c {
    NSLayoutConstraint *constraint = nil;
    if ([value isKindOfClass:[NSLayoutAnchor class]]) {
        constraint = [[self getSystemAnchor] constraintLessThanOrEqualToAnchor:value multiplier:m constant:c];
    }
    else if ([value isKindOfClass:[NSNumber class]]) {
        constraint = [[self getSystemAnchor] constraintLessThanOrEqualToConstant:[value doubleValue]*m+c];
    }
    else if ([value isKindOfClass:[UIView class]]) {
        constraint = [[self getSystemAnchor] constraintLessThanOrEqualToAnchor:[self getSystemAnchor:(UIView *)value] multiplier:m constant:c];
    }
    else {
        BMLayoutThrowTypeInvalidException
    }
    
    return [self addConstraint:constraint];
}

- (NSLayoutConstraint *)greaterEqual:(id)value multiplier:(CGFloat)m constant:(CGFloat)c {
    NSLayoutConstraint *constraint = nil;
    if ([value isKindOfClass:[NSLayoutAnchor class]]) {
        constraint = [[self getSystemAnchor] constraintGreaterThanOrEqualToAnchor:value multiplier:m constant:c];
    }
    else if ([value isKindOfClass:[NSNumber class]]) {
        constraint = [[self getSystemAnchor] constraintGreaterThanOrEqualToConstant:[value doubleValue]*m+c];
    }
    else if ([value isKindOfClass:[UIView class]]) {
        constraint = [[self getSystemAnchor] constraintGreaterThanOrEqualToAnchor:[self getSystemAnchor:(UIView *)value] multiplier:m constant:c];
    }
    else {
        BMLayoutThrowTypeInvalidException
    }
    
    return [self addConstraint:constraint];
}

- (NSLayoutAnchor *)getSystemAnchor {
    BMLayoutThrowException(@"getSystemAnchor should be implement by subclass");
}

- (NSLayoutAnchor *)getSystemAnchor:(UIView *)view {
    BMLayoutThrowException(@"getSystemAnchor: should be implement by subclass");
}

- (NSMutableArray *)getSystemConstrains {
    BMLayoutThrowException(@"getSystemConstrains should be implement by subclass");
}

- (NSLayoutConstraint *)addConstraint:(NSLayoutConstraint *)constraint {
    constraint.active = YES;
    [[self getSystemConstrains] addObject:constraint];
    return constraint;
}

@end
