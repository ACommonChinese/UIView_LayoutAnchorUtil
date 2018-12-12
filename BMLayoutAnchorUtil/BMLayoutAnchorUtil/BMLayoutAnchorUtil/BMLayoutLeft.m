//
//  BMLayoutLeft.m
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/11.
//  Copyright © 2018 liuxing8807@126.com All rights reserved.
//

#import "BMLayoutLeft.h"
#import "UIView+BMLayoutAnchorUtil.h"

@implementation BMLayoutLeft

- (NSLayoutAnchor *)getSystemAnchor {
    return self.view.leftAnchor;
}

- (NSMutableArray *)getSystemConstrains {
    return (NSMutableArray *)self.view.bm_leftConstraints;
}

@end
