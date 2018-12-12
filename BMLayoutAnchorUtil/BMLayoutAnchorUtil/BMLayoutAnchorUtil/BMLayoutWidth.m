//
//  BMLayoutWidth.m
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/11.
//  Copyright © 2018 liuxing8807@126.com All rights reserved.
//

#import "BMLayoutWidth.h"
#import "UIView+BMLayoutAnchorUtil.h"

@implementation BMLayoutWidth

- (NSLayoutAnchor *)getSystemAnchor {
    return self.view.widthAnchor;
}

- (NSMutableArray *)getSystemConstrains {
    return (NSMutableArray *)self.view.bm_widthConstraints;
}

@end
