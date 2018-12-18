//
//  NSArray+BMAdditions.m
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/17.
//  Copyright © 2018 banma. All rights reserved.
//

#import "NSArray+BMAdditions.h"
#import "BMLayoutUtilities.h"
#import "UIView+BMLayoutAnchorUtil.h"

@implementation NSArray (BMAdditions)

- (BMLayoutLeadings *)bm_leading {
    return [self bm_getLayoutArraySupport:BMLayoutLeadings.class];
}

- (BMLayoutTrailings *)bm_trailing {
    return [self bm_getLayoutArraySupport:BMLayoutTrailings.class];
}

- (BMLayoutLefts *)bm_left {
    return [self bm_getLayoutArraySupport:BMLayoutLefts.class];
}

- (BMLayoutRights *)bm_right {
    return [self bm_getLayoutArraySupport:BMLayoutRights.class];
}

- (BMLayoutTops *)bm_top {
    return [self bm_getLayoutArraySupport:BMLayoutTops.class];
}

- (BMLayoutBottoms *)bm_bottom {
    return [self bm_getLayoutArraySupport:BMLayoutBottoms.class];
}

- (BMLayoutWidths *)bm_width {
    return [self bm_getLayoutArraySupport:BMLayoutWidths.class];
}

- (BMLayoutHeights *)bm_height {
    return [self bm_getLayoutArraySupport:BMLayoutHeights.class];
}

- (BMLayoutCenterXs *)bm_centerX {
    return [self bm_getLayoutArraySupport:BMLayoutCenterXs.class];
}

- (BMLayoutCenterYs *)bm_centerY {
    return [self bm_getLayoutArraySupport:BMLayoutCenterYs.class];
}

- (BMLayoutFirstBaselines *)bm_firstBaseline {
    return [self bm_getLayoutArraySupport:BMLayoutFirstBaselines.class];
}

- (BMLayoutLastBaselines *)bm_lastBaseline {
    return [self bm_getLayoutArraySupport:BMLayoutLastBaselines.class];
}

- (BMLayoutSizes *)bm_size {
    return [self bm_getLayoutArraySupport:BMLayoutSizes.class];
}

- (BMLayoutEdges *)bm_edge {
    return [self bm_getLayoutArraySupport:BMLayoutEdges.class];
}

- (id)bm_getLayoutArraySupport:(Class)cls {
    BMArrayAnchorsSupport *support = [[cls alloc] init];
    support.array = self;
    return support;
}

- (void)bm_distributeViewsAlongAxis:(BMAxisType)axisType withFixedSpacing:(CGFloat)fixedSpacing leadSpacing:(CGFloat)leadSpacing tailSpacing:(CGFloat)tailSpacing {
    if (self.count < 2) {
        NSAssert(self.count>1,@"views to distribute need to bigger than one");
        return;
    }
    
    UIView *tempSuperView = [self bm_commonSuperviewOfViews];
    if (axisType == BMAxisTypeHorizontal) {
        UIView *prev;
        for (int i = 0; i < self.count; i++) {
            UIView *v = self[i];
            if (prev) {
                [v.bm_width equal:prev];
                [v.bm_left equal:prev.rightAnchor constant:fixedSpacing];
                if (i == self.count - 1) {//last one
                    [v.bm_right equal:tempSuperView constant:-tailSpacing];
                }
            }
            else {//first one
                [v.bm_left equal:tempSuperView constant:leadSpacing];
            }
            prev = v;
        }
    }
    else {
        UIView *pre;
        for (int i = 0; i < self.count; i++) {
            UIView *v = self[i];
            if (pre) {
                [v.bm_height equal:pre];
                [v.bm_top equal:pre.bottomAnchor constant:fixedSpacing];
                if (i == self.count - 1) {//last one
                    [v.bm_bottom equal:tempSuperView constant:-tailSpacing];
                }
            }
            else {//first one
                [v.bm_top equal:tempSuperView constant:leadSpacing];
            }
            pre = v;
        }
    }
}

- (void)bm_distributeViewsAlongAxis:(BMAxisType)axisType withFixedItemLength:(CGFloat)fixedItemLength leadSpacing:(CGFloat)leadSpacing tailSpacing:(CGFloat)tailSpacing {
    if (self.count < 2) {
        NSAssert(self.count>1,@"views to distribute need to bigger than one");
        return;
    }
    
    UIView *tempSuperView = [self bm_commonSuperviewOfViews];
    NSUInteger guideCount = self.count - 1;
    NSMutableArray<UILayoutGuide *> *guideArray = [NSMutableArray arrayWithCapacity:guideCount];
    for (int i = 0; i < guideCount; i++) {
        UILayoutGuide *layoutGuide = [[UILayoutGuide alloc] init];
        [tempSuperView addLayoutGuide:layoutGuide];
        [guideArray addObject:layoutGuide];
        if (i != 0) {
            if (axisType == BMAxisTypeHorizontal) {
                [layoutGuide.widthAnchor constraintEqualToAnchor:guideArray[0].widthAnchor].active = YES;
            }
            else {
                [layoutGuide.heightAnchor constraintEqualToAnchor:guideArray[0].heightAnchor].active = YES;
            }
        }
    }
    
    if (axisType == BMAxisTypeHorizontal) {
        for (int i = 0; i < self.count; i++) {
            UIView *v = self[i];
            [v.bm_width equal:@(fixedItemLength)];
            if (i == 0) {//first one
                [v.bm_leading equal:tempSuperView constant:leadSpacing];
                [v.bm_trailing equal:guideArray[0].leadingAnchor];
            }
            else {
                [v.bm_leading equal:guideArray[i-1].trailingAnchor];
                if (i == self.count - 1) {//last one
                    [v.bm_trailing equal:@(-tailSpacing)];
                }
                else {
                    [v.bm_trailing equal:guideArray[i].leadingAnchor];
                }
            }
        }
    }
    else {
        for (int i = 0; i < self.count; i++) {
            UIView *v = self[i];
            [v.bm_height equal:@(fixedItemLength)];
            if (i == 0) {//first one
                [v.bm_top equal:tempSuperView constant:leadSpacing];
                [v.bm_bottom equal:guideArray[0].topAnchor];
            }
            else {
                [v.bm_top equal:guideArray[i-1].bottomAnchor];
                if (i == self.count - 1) {
                    [v.bm_bottom equal:@(-tailSpacing)];
                }
                else {
                    [v.bm_bottom equal:guideArray[i].topAnchor];
                }
            }
        }
    }
}

- (UIView *)bm_commonSuperviewOfViews {
    UIView *commonSuperview = nil;
    UIView *previousView = nil;
    for (id object in self) {
        if ([object isKindOfClass:[UIView class]]) {
            UIView *view = (UIView *)object;
            if (previousView) {
                commonSuperview = [view bm_closestCommonSuperview:commonSuperview];
            } else {
                commonSuperview = view;
            }
            previousView = view;
        }
    }
    NSAssert(commonSuperview, @"Can't constrain views that do not share a common superview. Make sure that all the views in this array have been added into the same view hierarchy.");
    return commonSuperview;
}


@end
