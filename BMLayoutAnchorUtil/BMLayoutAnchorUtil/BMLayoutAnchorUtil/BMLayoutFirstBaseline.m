//
//  BMLayoutFirstBaselineAnchor.m
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/17.
//  Copyright © 2018 banma. All rights reserved.
//

#import "BMLayoutFirstBaseline.h"
#import "UIView+BMLayoutAnchorUtil.h"

@implementation BMLayoutFirstBaseline

- (NSLayoutAnchor *)getSystemAnchor {
    return self.view.firstBaselineAnchor;
}

- (NSLayoutAnchor *)getSystemAnchor:(UIView *)view {
    return view.firstBaselineAnchor;
}

- (NSMutableArray *)getSystemConstrains {
    return (NSMutableArray *)self.view.bm_firstBaselineConstraints;
}

@end
