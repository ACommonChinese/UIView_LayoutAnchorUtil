//
//  BMLayoutAnchorProtocolImplement.h
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/17.
//  Copyright © 2018 banma. All rights reserved.
//

#import "BMLayoutAnchorProtocol.h"
#import "BMLayoutUtilities.h"

NS_ASSUME_NONNULL_BEGIN

@interface BMLayoutAnchorProtocolImplement : NSObject <BMLayoutAnchorProtocol, BMLayoutAnchorAttachViewProtocol, BMLayoutAnchorComposedProtocol, BMLayoutAnchorAttributeProtocol>

@property (nonatomic, weak) UIView *view;

- (NSLayoutAnchor *)getSystemAnchor;
- (NSLayoutAnchor *)getSystemAnchor:(UIView *)view;
- (NSMutableArray *)getSystemConstrains;

@end

NS_ASSUME_NONNULL_END
