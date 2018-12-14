//
//  BMLayoutDimension.h
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/11.
//  Copyright © 2018 liuxing8807@126.com All rights reserved.
//

#import "BMLayoutAnchor.h"

NS_ASSUME_NONNULL_BEGIN

@class BMLayoutDimension;
NS_CLASS_AVAILABLE_IOS(9_0)
@interface BMLayoutDimension : BMLayoutAnchor<NSLayoutDimension *>

- (NSLayoutConstraint *)equalTo:(id)value;
- (NSLayoutConstraint *)greaterThanOrEqualTo:(id)value;
- (NSLayoutConstraint *)lessThanOrEqualTo:(id)value;

- (NSLayoutConstraint *)equalTo:(id)value multiplier:(CGFloat)m;
- (NSLayoutConstraint *)greaterThanOrEqualTo:(id)value multiplier:(CGFloat)m;
- (NSLayoutConstraint *)lessThanOrEqualTo:(id)value multiplier:(CGFloat)m;
- (NSLayoutConstraint *)equalTo:(id)value multiplier:(CGFloat)m constant:(CGFloat)c;
- (NSLayoutConstraint *)greaterThanOrEqualTo:(id)value multiplier:(CGFloat)m constant:(CGFloat)c;
- (NSLayoutConstraint *)lessThanOrEqualTo:(id)value multiplier:(CGFloat)m constant:(CGFloat)c;

@end

NS_ASSUME_NONNULL_END
