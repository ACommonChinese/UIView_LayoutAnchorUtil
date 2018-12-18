//
//  BMLayoutSize.h
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/14.
//  Copyright © 2018 banma. All rights reserved.
//  

#import <UIKit/UIKit.h>
#import "BMLayoutAnchorProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface BMLayoutSize : NSObject <BMLayoutAnchorAttachViewProtocol, BMLayoutAnchorAttachViewProtocol>

@property (nonatomic, weak) UIView *view;

- (NSArray<NSLayoutConstraint *> *)equal:(id)value;
- (NSArray<NSLayoutConstraint *> *)equal:(id)value constant:(CGFloat)c;

@end

NS_ASSUME_NONNULL_END
