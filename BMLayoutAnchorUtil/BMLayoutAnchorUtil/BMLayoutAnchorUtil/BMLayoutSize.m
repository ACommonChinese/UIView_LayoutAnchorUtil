//
//  BMLayoutSize.m
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/14.
//  Copyright © 2018 banma. All rights reserved.
//

#import "BMLayoutSize.h"
#import "UIView+BMLayoutAnchorUtil.h"
#import "BMLayoutUtilities.h"

@implementation BMLayoutSize

- (NSArray<NSLayoutConstraint *> *)equal:(id)value {
    return [self equal:value constant:0];
}

- (NSArray<NSLayoutConstraint *> *)equal:(id)value constant:(CGFloat)c {
    if ([value isKindOfClass:[NSArray class]]) {
        NSArray *array = value; // Maybe anchors or view
        return @[[self.view.bm_width equal:array[0] constant:c], [self.view.bm_height equal:value constant:c]];
    }
    else if ([value isKindOfClass:[NSValue class]]) {
        NSValue *boxValue = (NSValue *)value;
        if (strcmp(boxValue.objCType, @encode(CGSize)) == 0) {
            CGSize size;
            [boxValue getValue:&size];
            return @[[self.view.bm_width equal:@(size.width) constant:c], [self.view.bm_height equal:@(size.height) constant:c]];
        }
    }
    else if ([value isKindOfClass:[UIView class]]) {
        UIView *view = (UIView *)value;
        return @[[self.view.bm_width equal:view.widthAnchor constant:c], [self.view.bm_height equal:view.heightAnchor constant:c]];
    }
    BMLayoutThrowTypeInvalidException
}

@end
