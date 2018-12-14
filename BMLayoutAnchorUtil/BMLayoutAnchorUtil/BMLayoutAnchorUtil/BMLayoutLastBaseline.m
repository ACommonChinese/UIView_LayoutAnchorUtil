//
//  BMLayoutLastBaseline.m
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/11.
//  Copyright © 2018 liuxing8807@126.com All rights reserved.
//

#import "BMLayoutLastBaseline.h"
#import "BMLayoutAnchor+Private.h"
#import "UIView+BMLayoutAnchorUtil.h"

@interface BMLayoutLastBaseline() 

@end

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

@end
