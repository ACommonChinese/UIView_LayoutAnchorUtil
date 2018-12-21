//
//  BMLayoutComposed.h
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/20.
//  Copyright © 2018 banma. All rights reserved.
//

#import "BMLayoutAnchorProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface BMLayoutComposed : NSObject <BMLayoutAnchorComposedProtocol>

- (instancetype)initWithTargetView:(UIView *)view composedAttributes:(NSArray *)attributes;

@end

NS_ASSUME_NONNULL_END
