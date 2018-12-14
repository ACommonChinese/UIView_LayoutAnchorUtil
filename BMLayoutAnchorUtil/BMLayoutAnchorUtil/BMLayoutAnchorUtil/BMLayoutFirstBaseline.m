//
//  BMLayoutFirstBaseline.m
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/11.
//  Copyright © 2018 liuxing8807@126.com All rights reserved.
//

#import "BMLayoutFirstBaseline.h"
#import "BMLayoutAnchor+Private.h"
#import "UIView+BMLayoutAnchorUtil.h"

@interface BMLayoutFirstBaseline() 

@end

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
