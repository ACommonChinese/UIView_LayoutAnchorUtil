//
//  BMLayoutTop.m
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/11.
//  Copyright © 2018 liuxing8807@126.com All rights reserved.
//

#import "BMLayoutTop.h"
#import "UIView+BMLayoutAnchorUtil.h"

@interface BMLayoutTop() 

@end

@implementation BMLayoutTop

- (NSLayoutAnchor *)getSystemAnchor {
    return self.view.topAnchor;
}

- (NSLayoutAnchor *)getSystemAnchor:(UIView *)view {
    return view.topAnchor;
}

- (NSMutableArray *)getSystemConstrains {
    return (NSMutableArray *)self.view.bm_topConstraints;
}

@end
