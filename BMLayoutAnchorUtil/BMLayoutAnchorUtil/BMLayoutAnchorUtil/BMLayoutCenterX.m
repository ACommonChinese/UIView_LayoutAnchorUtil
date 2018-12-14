//
//  BMLayoutCenterX.m
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/11.
//  Copyright © 2018 liuxing8807@126.com All rights reserved.
//

#import "BMLayoutCenterX.h"
#import "BMLayoutAnchor+Private.h"
#import "UIView+BMLayoutAnchorUtil.h"

@interface BMLayoutCenterX() 

@end

@implementation BMLayoutCenterX

- (NSLayoutAnchor *)getSystemAnchor {
    return self.view.centerXAnchor;
}

- (NSLayoutAnchor *)getSystemAnchor:(UIView *)view {
    return view.centerXAnchor;
}

- (NSMutableArray *)getSystemConstrains {
    return (NSMutableArray *)self.view.bm_centerXConstraints;
}

@end
