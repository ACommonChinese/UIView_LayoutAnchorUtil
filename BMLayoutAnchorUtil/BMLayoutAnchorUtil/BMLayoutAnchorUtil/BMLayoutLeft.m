//
//  BMLayoutLeft.m
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/11.
//  Copyright © 2018 liuxing8807@126.com All rights reserved.
//

#import "BMLayoutLeft.h"
#import "BMLayoutAnchor+Private.h"
#import "UIView+BMLayoutAnchorUtil.h"

@interface BMLayoutLeft() 

@end

@implementation BMLayoutLeft

- (NSLayoutAnchor *)getSystemAnchor {
    return self.view.leftAnchor;
}

- (NSLayoutAnchor *)getSystemAnchor:(UIView *)view {
    return view.leftAnchor;
}

- (NSMutableArray *)getSystemConstrains {
    return (NSMutableArray *)self.view.bm_leftConstraints;
}

@end
