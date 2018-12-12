//
//  BMLayoutLastBaseline.m
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/11.
//  Copyright © 2018 liuxing8807@126.com All rights reserved.
//

#import "BMLayoutLastBaseline.h"
#import "UIView+BMLayoutAnchorUtil.h"

@implementation BMLayoutLastBaseline

- (NSLayoutAnchor *)getSystemAnchor {
    return self.view.lastBaselineAnchor;
}

- (NSMutableArray *)getSystemConstrains {
    return (NSMutableArray *)self.view.bm_lastBaselineConstraints;
}

@end
