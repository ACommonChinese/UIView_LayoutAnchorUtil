//
//  BMLayoutEdge.h
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/16.
//  Copyright © 2018 banma. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BMLayoutAnchorProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface BMLayoutEdge : NSObject <BMLayoutAnchorEdgeProtocol, BMLayoutAnchorAttachViewProtocol>

@property (nonatomic, weak) UIView *view;

@end

NS_ASSUME_NONNULL_END
