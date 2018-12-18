//
//  BMLayoutDimensionProtocolImplement.h
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/17.
//  Copyright © 2018 banma. All rights reserved.
//

#import "BMLayoutAnchorProtocol.h"
#import "BMLayoutUtilities.h"

NS_ASSUME_NONNULL_BEGIN

@interface BMLayoutDimensionProtocolImplement : NSObject <BMLayoutAnchorDimensionProtocol>

- (NSLayoutDimension *)getSystemAnchor;
- (NSLayoutDimension *)getSystemAnchor:(UIView *)view;
- (NSMutableArray *)getSystemConstrains;

@property (nonatomic, weak) UIView *view;

@end

NS_ASSUME_NONNULL_END
