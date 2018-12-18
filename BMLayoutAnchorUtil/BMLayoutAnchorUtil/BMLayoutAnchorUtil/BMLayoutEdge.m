//
//  BMLayoutEdge.m
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/16.
//  Copyright © 2018 banma. All rights reserved.
//

#import "BMLayoutEdge.h"
#import "UIView+BMLayoutAnchorUtil.h"

@implementation BMLayoutEdge

- (NSArray<NSLayoutConstraint *> *)equal:(id)value {
    if ([value isKindOfClass:[NSValue class]]) {
        NSValue *boxValue = (NSValue *)value;
        UIEdgeInsets edgeInsets = UIEdgeInsetsZero;
        if ([boxValue isKindOfClass:[NSNumber class]]) {
            double size = [(NSNumber *)value doubleValue];
            edgeInsets = UIEdgeInsetsMake(size, size, size, size);
        }
        else if (strcmp(boxValue.objCType, @encode(UIEdgeInsets))) {
            [value getValue:&edgeInsets];
        }
        if (!UIEdgeInsetsEqualToEdgeInsets(UIEdgeInsetsZero, edgeInsets)) {
            [self.view.bm_top equal:@(edgeInsets.top)];
            [self.view.bm_left equal:@(edgeInsets.left)];
            [self.view.bm_bottom equal:@(edgeInsets.bottom)];
            [self.view.bm_right equal:@(edgeInsets.right)];
        }
    }
    BMLayoutThrowTypeInvalidException
}

@end
