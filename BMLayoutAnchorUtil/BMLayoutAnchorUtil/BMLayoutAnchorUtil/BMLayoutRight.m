//
//  BMLayoutRight.m
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/11.
//  Copyright © 2018 liuxing8807@126.com All rights reserved.
//

#import "BMLayoutRight.h"
#import "UIView+BMLayoutAnchorUtil.h"

@implementation BMLayoutRight

- (NSLayoutAnchor *)getSystemAnchor {
    return self.view.rightAnchor;
}

- (NSLayoutAnchor *)getSystemAnchor:(UIView *)view {
    return view.rightAnchor;
}

- (NSMutableArray *)getSystemConstrains {
    return (NSMutableArray *)self.view.bm_rightConstraints;
}

- (NSLayoutAttribute)layoutAttribute {
    return NSLayoutAttributeRight;
}

@end
