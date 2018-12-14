//
//  BMLayoutAnchor.h
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/11.
//  Copyright © 2018 liuxing8807@126.com All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

NS_CLASS_AVAILABLE_IOS(9_0)
@interface BMLayoutAnchor<AnchorType> : NSObject

- (NSLayoutConstraint *)equalTo:(id)value;
- (NSLayoutConstraint *)greaterThanOrEqualTo:(id)value;
- (NSLayoutConstraint *)lessThanOrEqualTo:(id)value;

- (NSLayoutConstraint *)equalTo:(id)value constant:(CGFloat)c;
- (NSLayoutConstraint *)greaterThanOrEqualTo:(id)value constant:(CGFloat)c;
- (NSLayoutConstraint *)lessThanOrEqualTo:(id)value constant:(CGFloat)c;

@property (nonatomic, weak) UIView *view;

@end

NS_ASSUME_NONNULL_END
