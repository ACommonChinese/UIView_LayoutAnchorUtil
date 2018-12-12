//
//  BMLayoutFirstBaseline.m
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/11.
//  Copyright © 2018 liuxing8807@126.com All rights reserved.
//

#import "BMLayoutFirstBaseline.h"
#import "UIView+BMLayoutAnchorUtil.h"

@implementation BMLayoutFirstBaseline

- (NSLayoutAnchor *)getSystemAnchor {
    return self.view.firstBaselineAnchor;
}

- (NSMutableArray *)getSystemConstrains {
    return (NSMutableArray *)self.view.bm_firstBaselineConstraints;
}

@end
