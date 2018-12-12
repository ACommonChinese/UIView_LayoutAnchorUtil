//
//  BMLayoutYAxisAnchor.h
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/11.
//  Copyright © 2018 liuxing8807@126.com All rights reserved.
//

#import "BMLayoutAnchor.h"
#import "BMLayoutYAxisAnchor.h"

NS_ASSUME_NONNULL_BEGIN

@class BMLayoutYAxisAnchor;

NS_CLASS_AVAILABLE_IOS(9_0)
@interface BMLayoutYAxisAnchor : BMLayoutAnchor <NSLayoutYAxisAnchor *>

- (NSLayoutConstraint *)anchorWithOffsetToAnchor:(NSLayoutYAxisAnchor *)otherAnchor API_AVAILABLE(ios(10.0),tvos(10.0));

- (NSLayoutConstraint *)constraintEqualToSystemSpacingBelowAnchor:(NSLayoutYAxisAnchor *)anchor multiplier:(CGFloat)multiplier API_AVAILABLE(ios(11.0),tvos(11.0));
- (NSLayoutConstraint *)constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:(NSLayoutYAxisAnchor *)anchor multiplier:(CGFloat)multiplier API_AVAILABLE(ios(11.0),tvos(11.0));
- (NSLayoutConstraint *)constraintLessThanOrEqualToSystemSpacingBelowAnchor:(NSLayoutYAxisAnchor *)anchor multiplier:(CGFloat)multiplier API_AVAILABLE(ios(11.0),tvos(11.0));
@end

NS_ASSUME_NONNULL_END
