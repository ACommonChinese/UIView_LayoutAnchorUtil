//
//  BMLayoutTrailing.m
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/11.
//  Copyright © 2018 liuxing8807@126.com All rights reserved.
//

#import "BMLayoutTrailing.h"
#import "BMLayoutAnchor+Private.h"
#import "UIView+BMLayoutAnchorUtil.h"

@interface BMLayoutTrailing() 

@end

@implementation BMLayoutTrailing

- (NSLayoutAnchor *)getSystemAnchor {
    return self.view.trailingAnchor;
}

- (NSMutableArray *)getSystemConstrains {
    return (NSMutableArray *)self.view.bm_trailingConstraints;
}

@end
