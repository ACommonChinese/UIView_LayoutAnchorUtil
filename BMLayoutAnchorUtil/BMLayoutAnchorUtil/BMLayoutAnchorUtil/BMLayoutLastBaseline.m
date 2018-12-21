//
//  BMLayoutLastBaseline.m
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/17.
//  Copyright © 2018 banma. All rights reserved.
//

#import "BMLayoutLastBaseline.h"
#import "UIView+BMLayoutAnchorUtil.h"

@implementation BMLayoutLastBaseline

- (NSLayoutAnchor *)getSystemAnchor {
    return self.view.lastBaselineAnchor;
}

- (NSLayoutAnchor *)getSystemAnchor:(UIView *)view {
    return view.lastBaselineAnchor;
}

- (NSMutableArray *)getSystemConstrains {
    return (NSMutableArray *)self.view.bm_lastBaselineConstraints;
}

- (NSLayoutAttribute)layoutAttribute {
    return NSLayoutAttributeLastBaseline;
}

@end
