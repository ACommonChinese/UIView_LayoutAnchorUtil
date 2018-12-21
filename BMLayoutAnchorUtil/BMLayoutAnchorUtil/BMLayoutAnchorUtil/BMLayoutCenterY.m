//
//  BMLayoutCenterY.m
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/11.
//  Copyright © 2018 liuxing8807@126.com All rights reserved.
//

#import "BMLayoutCenterY.h"
#import "UIView+BMLayoutAnchorUtil.h"

@implementation BMLayoutCenterY

- (NSLayoutAnchor *)getSystemAnchor {
    return self.view.centerYAnchor;
}

- (NSLayoutAnchor *)getSystemAnchor:(UIView *)view {
    return view.centerYAnchor;
}

- (NSMutableArray *)getSystemConstrains {
    return (NSMutableArray *)self.view.bm_centerYConstraints;
}

- (NSLayoutAttribute)layoutAttribute {
    return NSLayoutAttributeCenterY;
}

@end
