//
//  BMLayoutComposed.m
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/20.
//  Copyright © 2018 banma. All rights reserved.
//

#import "BMLayoutComposed.h"
#import "UIView+BMLayoutAnchorUtil.h"

@interface BMLayoutComposed ()

@property (nonatomic, strong) NSMutableArray *attributes;
@property (nonatomic, weak) UIView *view;

@end

@implementation BMLayoutComposed

- (instancetype)initWithTargetView:(UIView *)view composedAttributes:(NSArray *)attributes {
    self = [super init];
    if (self) {
        self.view = view;
        self.attributes = [NSMutableArray arrayWithArray:attributes];
    }
    return self;
}

#pragma mark - <BMLayoutAnchorComposedProtocol>

- (id<BMLayoutAnchorComposedProtocol>)leading {
    return [self addLayoutAttribute:NSLayoutAttributeLeading];
}

- (id<BMLayoutAnchorComposedProtocol>)trailing {
    return [self addLayoutAttribute:NSLayoutAttributeTrailing];
}

- (id<BMLayoutAnchorComposedProtocol>)left {
    return [self addLayoutAttribute:NSLayoutAttributeLeft];
}

- (id<BMLayoutAnchorComposedProtocol>)right {
    return [self addLayoutAttribute:NSLayoutAttributeRight];
}

- (id<BMLayoutAnchorComposedProtocol>)top {
    return [self addLayoutAttribute:NSLayoutAttributeTop];
}

- (id<BMLayoutAnchorComposedProtocol>)bottom {
    return [self addLayoutAttribute:NSLayoutAttributeBottom];
}

- (id<BMLayoutAnchorComposedProtocol>)width {
    return [self addLayoutAttribute:NSLayoutAttributeWidth];
}

- (id<BMLayoutAnchorComposedProtocol>)height {
    return [self addLayoutAttribute:NSLayoutAttributeHeight];
}

- (id<BMLayoutAnchorComposedProtocol>)centerX {
    return [self addLayoutAttribute:NSLayoutAttributeCenterX];
}

- (id<BMLayoutAnchorComposedProtocol>)centerY {
    return [self addLayoutAttribute:NSLayoutAttributeCenterY];
}

- (id<BMLayoutAnchorComposedProtocol>)firstBaseline {
    return [self addLayoutAttribute:NSLayoutAttributeFirstBaseline];
}

- (id<BMLayoutAnchorComposedProtocol>)lastBaseline {
    return [self addLayoutAttribute:NSLayoutAttributeLastBaseline];
}

- (id<BMLayoutAnchorComposedProtocol>)addLayoutAttribute:(NSLayoutAttribute)attribute {
    [self.attributes addObject:@(attribute)];
    return self;
}

- (NSArray<NSLayoutConstraint *> *)equal:(id)value {
    return [self getConstraintsWithValue:value layoutAnchorProtocolImplement:^NSLayoutConstraint *(id<BMLayoutAnchorProtocol> imp, id v) {
        return [imp equal:v];
    }];
}

- (NSArray<NSLayoutConstraint *> *)greaterEqual:(id)value {
    return [self getConstraintsWithValue:value layoutAnchorProtocolImplement:^NSLayoutConstraint *(id<BMLayoutAnchorProtocol> imp, id v) {
        return [imp greaterEqual:v];
    }];
}

- (NSArray<NSLayoutConstraint *> *)lessEqual:(id)value {
    return [self getConstraintsWithValue:value layoutAnchorProtocolImplement:^NSLayoutConstraint *(id<BMLayoutAnchorProtocol> imp, id v) {
        return [imp lessEqual:v];
    }];
}

- (NSArray<NSLayoutConstraint *> *)equal:(id)value constant:(CGFloat)c {
    return [self getConstraintsWithValue:value layoutAnchorProtocolImplement:^NSLayoutConstraint *(id<BMLayoutAnchorProtocol> imp, id v) {
        return [imp equal:v constant:c];
    }];
}

- (NSArray<NSLayoutConstraint *> *)greaterEqual:(id)value constant:(CGFloat)c {
    return [self getConstraintsWithValue:value layoutAnchorProtocolImplement:^NSLayoutConstraint *(id<BMLayoutAnchorProtocol> imp, id v) {
        return [imp greaterEqual:v constant:c];
    }];
}

- (NSArray<NSLayoutConstraint *> *)lessEqual:(id)value constant:(CGFloat)c {
    return [self getConstraintsWithValue:value layoutAnchorProtocolImplement:^NSLayoutConstraint *(id<BMLayoutAnchorProtocol> imp, id v) {
        return [imp lessEqual:v constant:c];
    }];
}

- (NSArray<NSLayoutConstraint *> *)getConstraintsWithValue:(id)v layoutAnchorProtocolImplement:(NSLayoutConstraint * (^)(id<BMLayoutAnchorProtocol> imp, id value))impHandler {
    NSMutableArray *constraints = [NSMutableArray array];
    __weak __typeof(v) value = v;
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[UIView class]]) {
        for (NSNumber *attributeNum in self.attributes) {
            NSLayoutAttribute attribute = [attributeNum unsignedIntegerValue];
            id<BMLayoutAnchorProtocol> imp = [self getAnchorProtocolImplement:attribute];
            if (imp && impHandler) {
                [constraints addObject:impHandler(imp, value)];
            }
        }
    }
    else if ([value isKindOfClass:[NSArray class]]) {
        NSArray *attributeList = (NSArray *)value;
        if (self.attributes.count != attributeList.count) {
            BMLayoutThrowException(@"attribute num can't match value")
            return nil;
        }
        else {
            //self.redView.bm_left.top equal:@[]
            for (NSUInteger i = 0; i < self.attributes.count; i++) {
                NSLayoutAttribute attr = [self.attributes[i] unsignedIntegerValue];
                id<BMLayoutAnchorProtocol> imp = [self getAnchorProtocolImplement:attr];
                if (imp && impHandler) {
                    [constraints addObject:impHandler(imp, attributeList[i])];
                }
            }
        }
    }
    else {
        BMLayoutThrowTypeInvalidException
    }
    return constraints;
}

- (id<BMLayoutAnchorProtocol>)getAnchorProtocolImplement:(NSLayoutAttribute)attribute {
    switch (attribute) {
        case NSLayoutAttributeLeading: return self.view.bm_leading;
        case NSLayoutAttributeTrailing: return self.view.bm_trailing;
        case NSLayoutAttributeLeft: return self.view.bm_left;
        case NSLayoutAttributeRight: return self.view.bm_right;
        case NSLayoutAttributeTop: return self.view.bm_top;
        case NSLayoutAttributeBottom: return self.view.bm_bottom;
        case NSLayoutAttributeWidth: return self.view.bm_width;
        case NSLayoutAttributeHeight: return self.view.bm_height;
        case NSLayoutAttributeFirstBaseline: return self.view.bm_firstBaseline;
        case NSLayoutAttributeLastBaseline: return self.view.bm_lastBaseline;
        default: return nil;
    }
}

@end
