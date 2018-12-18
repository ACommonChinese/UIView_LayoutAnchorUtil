//
//  BMLayoutAnchorProtocol.h
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/17.
//  Copyright © 2018 banma. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol BMLayoutAnchorAttachViewProtocol <NSObject>

@property (nonatomic, weak) UIView *view;

@end

@protocol BMLayoutAnchorProtocol <NSObject>

- (NSLayoutConstraint *)equal:(id)value;
- (NSLayoutConstraint *)greaterEqual:(id)value;
- (NSLayoutConstraint *)lessEqual:(id)value;
- (NSLayoutConstraint *)equal:(id)value constant:(CGFloat)c;
- (NSLayoutConstraint *)greaterEqual:(id)value constant:(CGFloat)c;
- (NSLayoutConstraint *)lessEqual:(id)value constant:(CGFloat)c;

@end

@protocol BMLayoutAnchorLeftProtocol <BMLayoutAnchorProtocol>
@end

@protocol BMLayoutAnchorRightProtocol <BMLayoutAnchorProtocol>
@end

@protocol BMLayoutAnchorLeadingProtocol <BMLayoutAnchorProtocol>
@end

@protocol BMLayoutAnchorTrailingProtocol <BMLayoutAnchorProtocol>
@end

@protocol BMLayoutAnchorTopProtocol <BMLayoutAnchorProtocol>
@end

@protocol BMLayoutAnchorBottomProtocol <BMLayoutAnchorProtocol>
@end

@protocol BMLayoutAnchorCenterXProtocol <BMLayoutAnchorProtocol>
@end

@protocol BMLayoutAnchorCenterYProtocol <BMLayoutAnchorProtocol>
@end

@protocol BMLayoutAnchorFirstBaselineProtocol <BMLayoutAnchorProtocol>
@end

@protocol BMLayoutAnchorLastBaselineProtocol <BMLayoutAnchorProtocol>
@end

@protocol BMLayoutAnchorDimensionProtocol <BMLayoutAnchorProtocol>

- (NSLayoutConstraint *)equal:(id)value multiplier:(CGFloat)m constant:(CGFloat)c;
- (NSLayoutConstraint *)lessEqual:(id)value multiplier:(CGFloat)m constant:(CGFloat)c;
- (NSLayoutConstraint *)greaterEqual:(id)value multiplier:(CGFloat)m constant:(CGFloat)c;

@end

@protocol BMLayoutAnchorWidthProtocol <BMLayoutAnchorDimensionProtocol>
@end

@protocol BMLayoutAnchorHeightProtocol <BMLayoutAnchorDimensionProtocol>
@end

@protocol BMLayoutAnchorSizeProtocol <NSObject>
@end

@protocol BMLayoutAnchorEdgeProtocol <NSObject>

- (NSArray<NSLayoutConstraint *> *)equal:(id)value;

@end

NS_ASSUME_NONNULL_END
