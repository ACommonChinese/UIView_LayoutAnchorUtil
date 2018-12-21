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

@protocol BMLayoutAnchorAttributeProtocol <NSObject>

@property (nonatomic, assign, readonly) NSLayoutAttribute layoutAttribute;

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

@protocol BMLayoutAnchorComposedProtocol <NSObject>

@property (nonatomic, readonly, strong) id<BMLayoutAnchorComposedProtocol> leading NS_AVAILABLE_IOS(9_0);
@property (nonatomic, readonly, strong) id<BMLayoutAnchorComposedProtocol> trailing NS_AVAILABLE_IOS(9_0);
@property (nonatomic, readonly, strong) id<BMLayoutAnchorComposedProtocol> left NS_AVAILABLE_IOS(9_0);
@property (nonatomic, readonly, strong) id<BMLayoutAnchorComposedProtocol> right NS_AVAILABLE_IOS(9_0);
@property (nonatomic, readonly, strong) id<BMLayoutAnchorComposedProtocol> top NS_AVAILABLE_IOS(9_0);
@property (nonatomic, readonly, strong) id<BMLayoutAnchorComposedProtocol> bottom NS_AVAILABLE_IOS(9_0);
@property (nonatomic, readonly, strong) id<BMLayoutAnchorComposedProtocol> width NS_AVAILABLE_IOS(9_0);
@property (nonatomic, readonly, strong) id<BMLayoutAnchorComposedProtocol> height NS_AVAILABLE_IOS(9_0);
@property (nonatomic, readonly, strong) id<BMLayoutAnchorComposedProtocol> centerX NS_AVAILABLE_IOS(9_0);
@property (nonatomic, readonly, strong) id<BMLayoutAnchorComposedProtocol> centerY NS_AVAILABLE_IOS(9_0);
@property (nonatomic, readonly, strong) id<BMLayoutAnchorComposedProtocol> firstBaseline NS_AVAILABLE_IOS(9_0);
@property (nonatomic, readonly, strong) id<BMLayoutAnchorComposedProtocol> lastBaseline NS_AVAILABLE_IOS(9_0);

- (NSLayoutConstraint *)equal:(id)value;
- (NSLayoutConstraint *)greaterEqual:(id)value;
- (NSLayoutConstraint *)lessEqual:(id)value;
- (NSLayoutConstraint *)equal:(id)value constant:(CGFloat)c;
- (NSLayoutConstraint *)greaterEqual:(id)value constant:(CGFloat)c;
- (NSLayoutConstraint *)lessEqual:(id)value constant:(CGFloat)c;

@end

NS_ASSUME_NONNULL_END
