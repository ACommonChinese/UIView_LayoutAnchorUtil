//
//  BMLayoutAnchorProtocolImplement.m
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/17.
//  Copyright © 2018 banma. All rights reserved.
//

#import "BMLayoutAnchorProtocolImplement.h"
#import "UIView+BMLayoutAnchorUtil.h"

@implementation BMLayoutAnchorProtocolImplement

- (NSLayoutConstraint *)equal:(id)value {
    NSLayoutConstraint *constraint = nil;
    if ([value isKindOfClass:[NSLayoutAnchor class]]) {
        constraint = [[self getSystemAnchor] constraintEqualToAnchor:value];
    }
    else if ([value isKindOfClass:[NSNumber class]]) {
        constraint = [[self getSystemAnchor] constraintEqualToAnchor:[self getSystemAnchor:self.view.superview] constant:[value doubleValue]];
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
    if ([value isKindOfClass:NSLayoutAnchor.class]) {
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
    if ([value isKindOfClass:NSLayoutAnchor.class]) {
        constraint = [[self getSystemAnchor] constraintEqualToAnchor:value constant:c];
    }
    else if ([value isKindOfClass:[UIView class]]) {
        constraint = [[self getSystemAnchor] constraintEqualToAnchor:[self getSystemAnchor:value] constant:c];
    }
    else {
        BMLayoutThrowTypeInvalidException
    }
    
    return [self addConstraint:constraint];
}

- (NSLayoutConstraint *)greaterEqual:(id)value constant:(CGFloat)c {
    NSLayoutConstraint *constraint = nil;
    if ([value isKindOfClass:NSLayoutAnchor.class]) {
        constraint = [[self getSystemAnchor] constraintGreaterThanOrEqualToAnchor:value constant:c];
    }
    else if ([value isKindOfClass:[UIView class]]) {
        constraint = [[self getSystemAnchor] constraintGreaterThanOrEqualToAnchor:[self getSystemAnchor:value] constant:c];
    }
    else {
        BMLayoutThrowTypeInvalidException
    }
    
    return [self addConstraint:constraint];
}

- (NSLayoutConstraint *)lessEqual:(id)value constant:(CGFloat)c {
    NSLayoutConstraint *constraint = nil;
    if ([value isKindOfClass:NSLayoutAnchor.class]) {
        constraint = [[self getSystemAnchor] constraintLessThanOrEqualToAnchor:value constant:c];
    }
    else if ([value isKindOfClass:[UIView class]]) {
        constraint = [[self getSystemAnchor] constraintLessThanOrEqualToAnchor:[self getSystemAnchor:value] constant:c];
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

#pragma mark - <BMLayoutAnchorAttributeProtocol>

- (NSLayoutAttribute)layoutAttribute {
    BMLayoutThrowException(@"should be implement by subclass")
}

#pragma mark - <BMLayoutAnchorComposedProtocol>

- (id<BMLayoutAnchorComposedProtocol>)getComposedProtocolImplementWithAttribute:(NSLayoutAttribute)layoutAttribute {
    return [[BMLayoutComposed alloc] initWithTargetView:self.view composedAttributes:@[@([self layoutAttribute]), @(layoutAttribute)]];
}

- (id<BMLayoutAnchorComposedProtocol>)leading {
    return [self getComposedProtocolImplementWithAttribute:NSLayoutAttributeLeading];
}

- (id<BMLayoutAnchorComposedProtocol>)trailing {
    return [self getComposedProtocolImplementWithAttribute:NSLayoutAttributeTrailing];
}

- (id<BMLayoutAnchorComposedProtocol>)left {
    return [self getComposedProtocolImplementWithAttribute:NSLayoutAttributeLeft];
}

- (id<BMLayoutAnchorComposedProtocol>)right {
    return [self getComposedProtocolImplementWithAttribute:NSLayoutAttributeRight];
}

- (id<BMLayoutAnchorComposedProtocol>)top {
    return [self getComposedProtocolImplementWithAttribute:NSLayoutAttributeTop];
}

- (id<BMLayoutAnchorComposedProtocol>)bottom {
    return [self getComposedProtocolImplementWithAttribute:NSLayoutAttributeBottom];
}

- (id<BMLayoutAnchorComposedProtocol>)width {
    return [self getComposedProtocolImplementWithAttribute:NSLayoutAttributeWidth];
}

- (id<BMLayoutAnchorComposedProtocol>)height {
    return [self getComposedProtocolImplementWithAttribute:NSLayoutAttributeHeight];
}

- (id<BMLayoutAnchorComposedProtocol>)centerX {
    return [self getComposedProtocolImplementWithAttribute:NSLayoutAttributeCenterX];
}

- (id<BMLayoutAnchorComposedProtocol>)centerY {
    return [self getComposedProtocolImplementWithAttribute:NSLayoutAttributeCenterY];
}

- (id<BMLayoutAnchorComposedProtocol>)firstBaseline {
    return [self getComposedProtocolImplementWithAttribute:NSLayoutAttributeFirstBaseline];
}

- (id<BMLayoutAnchorComposedProtocol>)lastBaseline {
    return [self getComposedProtocolImplementWithAttribute:NSLayoutAttributeLastBaseline];
}

@end
