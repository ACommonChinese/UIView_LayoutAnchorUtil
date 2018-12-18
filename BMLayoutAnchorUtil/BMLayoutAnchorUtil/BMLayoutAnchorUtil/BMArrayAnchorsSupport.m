//
//  BMArrayAnchorsSupport.m
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/18.
//  Copyright © 2018 banma. All rights reserved.
//

#import "BMArrayAnchorsSupport.h"
#import "UIView+BMLayoutAnchorUtil.h"

@implementation BMArrayAnchorsSupport

- (NSArray<NSLayoutConstraint *> *)getConstraintsWithHandler:(id (^)(UIView *view))handler {
    NSMutableArray *constraintArray = [NSMutableArray arrayWithCapacity:self.array.count];
    for (UIView *view in self.array) {
        if (handler) {
            id constraint = handler(view);
            if ([constraint isKindOfClass:[NSLayoutConstraint class]]) {
                [constraintArray addObject:handler(view)];
            }
            else if ([constraint isKindOfClass:[NSArray class]]) {
                [constraintArray addObjectsFromArray:(NSArray<NSLayoutConstraint *> *)constraint];
            }
        }
    }
    return constraintArray;
}

@end

@implementation BMLayoutLeadings

- (NSArray<NSLayoutConstraint *> *)equal:(id)value {
    return [self getConstraintsWithHandler:^NSLayoutConstraint *(UIView *view) {
        return [view.bm_leading equal:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)greaterEqual:(id)value {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_leading greaterEqual:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)lessEqual:(id)value {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_leading lessEqual:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)equal:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_leading equal:value constant:c];
    }];
}

- (NSArray<NSLayoutConstraint *> *)greaterEqual:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_leading greaterEqual:value constant:c];
    }];
}

- (NSArray<NSLayoutConstraint *> *)lessEqual:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_leading lessEqual:value constant:c];
    }];
}

@end

@implementation BMLayoutTrailings

- (NSArray<NSLayoutConstraint *> *)equal:(id)value {
    return [self getConstraintsWithHandler:^NSLayoutConstraint *(UIView *view) {
        return [view.bm_trailing equal:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)greaterEqual:(id)value {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_trailing greaterEqual:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)lessEqual:(id)value {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_trailing lessEqual:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)equal:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_trailing equal:value constant:c];
    }];
}

- (NSArray<NSLayoutConstraint *> *)greaterEqual:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_trailing greaterEqual:value constant:c];
    }];
}

- (NSArray<NSLayoutConstraint *> *)lessEqual:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_trailing lessEqual:value constant:c];
    }];
}

@end

@implementation BMLayoutLefts

- (NSArray<NSLayoutConstraint *> *)equal:(id)value {
    return [self getConstraintsWithHandler:^NSLayoutConstraint *(UIView *view) {
        return [view.bm_left equal:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)greaterEqual:(id)value {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_left greaterEqual:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)lessEqual:(id)value {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_left lessEqual:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)equal:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_left equal:value constant:c];
    }];
}

- (NSArray<NSLayoutConstraint *> *)greaterEqual:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_left greaterEqual:value constant:c];
    }];
}

- (NSArray<NSLayoutConstraint *> *)lessEqual:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_left lessEqual:value constant:c];
    }];
}

@end

@implementation BMLayoutRights

- (NSArray<NSLayoutConstraint *> *)equal:(id)value {
    return [self getConstraintsWithHandler:^NSLayoutConstraint *(UIView *view) {
        return [view.bm_right equal:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)greaterEqual:(id)value {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_right greaterEqual:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)lessEqual:(id)value {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_right lessEqual:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)equal:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_right equal:value constant:c];
    }];
}

- (NSArray<NSLayoutConstraint *> *)greaterEqual:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_right greaterEqual:value constant:c];
    }];
}

- (NSArray<NSLayoutConstraint *> *)lessEqual:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_right lessEqual:value constant:c];
    }];
}

@end

@implementation BMLayoutTops

- (NSArray<NSLayoutConstraint *> *)equal:(id)value {
    return [self getConstraintsWithHandler:^NSLayoutConstraint *(UIView *view) {
        return [view.bm_top equal:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)greaterEqual:(id)value {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_top greaterEqual:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)lessEqual:(id)value {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_top lessEqual:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)equal:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_top equal:value constant:c];
    }];
}

- (NSArray<NSLayoutConstraint *> *)greaterEqual:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_top greaterEqual:value constant:c];
    }];
}

- (NSArray<NSLayoutConstraint *> *)lessEqual:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_top lessEqual:value constant:c];
    }];
}

@end

@implementation BMLayoutBottoms

- (NSArray<NSLayoutConstraint *> *)equal:(id)value {
    return [self getConstraintsWithHandler:^NSLayoutConstraint *(UIView *view) {
        return [view.bm_bottom equal:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)greaterEqual:(id)value {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_bottom greaterEqual:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)lessEqual:(id)value {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_bottom lessEqual:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)equal:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_bottom equal:value constant:c];
    }];
}

- (NSArray<NSLayoutConstraint *> *)greaterEqual:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_bottom greaterEqual:value constant:c];
    }];
}

- (NSArray<NSLayoutConstraint *> *)lessEqual:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_bottom lessEqual:value constant:c];
    }];
}

@end

@implementation BMLayoutWidths

- (NSArray<NSLayoutConstraint *> *)equal:(id)value {
    return [self getConstraintsWithHandler:^NSLayoutConstraint *(UIView *view) {
        return [view.bm_width equal:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)greaterEqual:(id)value {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_width greaterEqual:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)lessEqual:(id)value {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_width lessEqual:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)equal:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_width equal:value constant:c];
    }];
}

- (NSArray<NSLayoutConstraint *> *)greaterEqual:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_width greaterEqual:value constant:c];
    }];
}

- (NSArray<NSLayoutConstraint *> *)lessEqual:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_width lessEqual:value constant:c];
    }];
}

- (NSArray<NSLayoutConstraint *> *)equal:(id)value multiplier:(CGFloat)m constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_width equal:value multiplier:m constant:c];
    }];
}

- (NSArray<NSLayoutConstraint *> *)lessEqual:(id)value multiplier:(CGFloat)m constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_width lessEqual:value multiplier:m constant:c];
    }];
}

- (NSArray<NSLayoutConstraint *> *)greaterEqual:(id)value multiplier:(CGFloat)m constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_width greaterEqual:value multiplier:m constant:c];
    }];
}

@end

@implementation BMLayoutHeights

- (NSArray<NSLayoutConstraint *> *)equal:(id)value {
    return [self getConstraintsWithHandler:^NSLayoutConstraint *(UIView *view) {
        return [view.bm_height equal:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)greaterEqual:(id)value {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_height greaterEqual:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)lessEqual:(id)value {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_height lessEqual:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)equal:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_height equal:value constant:c];
    }];
}

- (NSArray<NSLayoutConstraint *> *)greaterEqual:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_height greaterEqual:value constant:c];
    }];
}

- (NSArray<NSLayoutConstraint *> *)lessEqual:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_height lessEqual:value constant:c];
    }];
}

- (NSArray<NSLayoutConstraint *> *)equal:(id)value multiplier:(CGFloat)m constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_height equal:value multiplier:m constant:c];
    }];
}

- (NSArray<NSLayoutConstraint *> *)lessEqual:(id)value multiplier:(CGFloat)m constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_height lessEqual:value multiplier:m constant:c];
    }];
}

- (NSArray<NSLayoutConstraint *> *)greaterEqual:(id)value multiplier:(CGFloat)m constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_height greaterEqual:value multiplier:m constant:c];
    }];
}

@end

@implementation BMLayoutCenterXs

- (NSArray<NSLayoutConstraint *> *)equal:(id)value {
    return [self getConstraintsWithHandler:^NSLayoutConstraint *(UIView *view) {
        return [view.bm_centerX equal:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)greaterEqual:(id)value {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_centerX greaterEqual:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)lessEqual:(id)value {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_centerX lessEqual:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)equal:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_centerX equal:value constant:c];
    }];
}

- (NSArray<NSLayoutConstraint *> *)greaterEqual:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_centerX greaterEqual:value constant:c];
    }];
}

- (NSArray<NSLayoutConstraint *> *)lessEqual:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_centerX lessEqual:value constant:c];
    }];
}

@end

@implementation BMLayoutCenterYs

- (NSArray<NSLayoutConstraint *> *)equal:(id)value {
    return [self getConstraintsWithHandler:^NSLayoutConstraint *(UIView *view) {
        return [view.bm_centerY equal:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)greaterEqual:(id)value {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_centerY greaterEqual:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)lessEqual:(id)value {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_centerY lessEqual:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)equal:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_centerY equal:value constant:c];
    }];
}

- (NSArray<NSLayoutConstraint *> *)greaterEqual:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_centerY greaterEqual:value constant:c];
    }];
}

- (NSArray<NSLayoutConstraint *> *)lessEqual:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_centerY lessEqual:value constant:c];
    }];
}

@end

@implementation BMLayoutFirstBaselines

- (NSArray<NSLayoutConstraint *> *)equal:(id)value {
    return [self getConstraintsWithHandler:^NSLayoutConstraint *(UIView *view) {
        return [view.bm_firstBaseline equal:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)greaterEqual:(id)value {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_firstBaseline greaterEqual:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)lessEqual:(id)value {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_firstBaseline lessEqual:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)equal:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_firstBaseline equal:value constant:c];
    }];
}

- (NSArray<NSLayoutConstraint *> *)greaterEqual:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_firstBaseline greaterEqual:value constant:c];
    }];
}

- (NSArray<NSLayoutConstraint *> *)lessEqual:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_firstBaseline lessEqual:value constant:c];
    }];
}

@end

@implementation BMLayoutLastBaselines

- (NSArray<NSLayoutConstraint *> *)equal:(id)value {
    return [self getConstraintsWithHandler:^NSLayoutConstraint *(UIView *view) {
        return [view.bm_lastBaseline equal:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)greaterEqual:(id)value {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_lastBaseline greaterEqual:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)lessEqual:(id)value {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_lastBaseline lessEqual:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)equal:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_lastBaseline equal:value constant:c];
    }];
}

- (NSArray<NSLayoutConstraint *> *)greaterEqual:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_lastBaseline greaterEqual:value constant:c];
    }];
}

- (NSArray<NSLayoutConstraint *> *)lessEqual:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_lastBaseline lessEqual:value constant:c];
    }];
}

@end

@implementation BMLayoutSizes

- (NSArray<NSLayoutConstraint *> *)equal:(id)value {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_size equal:value];
    }];
}

- (NSArray<NSLayoutConstraint *> *)equal:(id)value constant:(CGFloat)c {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_size equal:value];
    }];
}

@end

@implementation BMLayoutEdges

- (NSArray<NSLayoutConstraint *> *)equal:(id)value {
    return  [self getConstraintsWithHandler:^id _Nonnull(UIView * _Nonnull view) {
        return [view.bm_edge equal:value];
    }];
}

@end
