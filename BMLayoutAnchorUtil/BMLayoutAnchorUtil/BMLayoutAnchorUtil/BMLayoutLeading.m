//
//  BMLayoutLeading.m
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/11.
//  Copyright © 2018 liuxing8807@126.com All rights reserved.
//

#import "BMLayoutLeading.h"
#import "UIView+BMLayoutAnchorUtil.h"

@implementation BMLayoutLeading

- (NSLayoutAnchor *)getSystemAnchor {
    return self.view.leadingAnchor;
}

- (NSMutableArray *)getSystemConstrains {
    return (NSMutableArray *)self.view.bm_leadingConstraint;
}

@end
