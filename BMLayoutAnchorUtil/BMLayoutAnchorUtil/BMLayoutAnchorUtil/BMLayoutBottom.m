//
//  BMLayoutBottom.m
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/11.
//  Copyright © 2018 liuxing8807@126.com All rights reserved.
//

#import "BMLayoutBottom.h"
#import "UIView+BMLayoutAnchorUtil.h"

@implementation BMLayoutBottom

- (NSLayoutAnchor *)getSystemAnchor {
    return self.view.bottomAnchor;
}

- (NSMutableArray *)getSystemConstrains {
    return (NSMutableArray *)self.view.bm_bottomConstraints;
}

@end
