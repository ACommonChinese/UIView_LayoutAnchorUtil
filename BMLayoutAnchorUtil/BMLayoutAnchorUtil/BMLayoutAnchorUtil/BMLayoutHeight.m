//
//  BMLayoutHeight.m
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/11.
//  Copyright © 2018 liuxing8807@126.com All rights reserved.
//

#import "BMLayoutHeight.h"
#import "UIView+BMLayoutAnchorUtil.h"

@implementation BMLayoutHeight

- (NSLayoutAnchor *)getSystemAnchor {
    return self.view.heightAnchor;
}

- (NSLayoutAnchor *)getSystemAnchor:(UIView *)view {
    return view.heightAnchor;
}

- (NSMutableArray *)getSystemConstrains {
    return (NSMutableArray *)self.view.bm_heightConstraints;
}

@end
