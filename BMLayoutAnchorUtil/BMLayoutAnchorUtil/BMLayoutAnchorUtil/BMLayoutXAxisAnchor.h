//
//  BMLayoutXAxisAnchor.h
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/11.
//  Copyright © 2018 liuxing8807@126.com All rights reserved.
//

#import "BMLayoutAnchor.h"

NS_ASSUME_NONNULL_BEGIN

NS_CLASS_AVAILABLE_IOS(9_0)
@interface BMLayoutXAxisAnchor : BMLayoutAnchor<NSLayoutXAxisAnchor *>

- (NSLayoutDimension *)anchorWithOffsetTo:(NSLayoutXAxisAnchor *)otherAnchor API_AVAILABLE(ios(10.0),tvos(10.0));

- (NSLayoutConstraint *)equalToSystemSpacingAfter:(NSLayoutXAxisAnchor *)anchor multiplier:(CGFloat)multiplier API_AVAILABLE(ios(11.0),tvos(11.0));
- (NSLayoutConstraint *)greaterThanOrEqualToSystemSpacingAfter:(NSLayoutXAxisAnchor *)anchor multiplier:(CGFloat)multiplier API_AVAILABLE(ios(11.0),tvos(11.0));
- (NSLayoutConstraint *)lessThanOrEqualToSystemSpacingAfter:(NSLayoutXAxisAnchor *)anchor multiplier:(CGFloat)multiplier API_AVAILABLE(ios(11.0),tvos(11.0));

@end

NS_ASSUME_NONNULL_END
