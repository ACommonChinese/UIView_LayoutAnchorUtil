//
//  BMArrayAnchorsSupport.h
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/18.
//  Copyright © 2018 banma. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BMLayoutAnchorProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface BMArrayAnchorsSupport : NSObject

@property (nonatomic, weak) NSArray *array;

- (NSArray<NSLayoutConstraint *> *)getConstraintsWithHandler:(id (^)(UIView *view))handler;

@end

@interface BMLayoutLeadings : BMArrayAnchorsSupport <BMLayoutAnchorLeadingProtocol>

@end

@interface BMLayoutTrailings : BMArrayAnchorsSupport <BMLayoutAnchorTrailingProtocol>

@end

@interface BMLayoutLefts : BMArrayAnchorsSupport <BMLayoutAnchorLeftProtocol>

@end

@interface BMLayoutRights : BMArrayAnchorsSupport <BMLayoutAnchorRightProtocol>

@end

@interface BMLayoutTops : BMArrayAnchorsSupport <BMLayoutAnchorTopProtocol>

@end

@interface BMLayoutBottoms : BMArrayAnchorsSupport <BMLayoutAnchorBottomProtocol>

@end

@interface BMLayoutWidths : BMArrayAnchorsSupport <BMLayoutAnchorWidthProtocol>

@end

@interface BMLayoutHeights : BMArrayAnchorsSupport <BMLayoutAnchorHeightProtocol>

@end

@interface BMLayoutCenterXs : BMArrayAnchorsSupport <BMLayoutAnchorCenterXProtocol>

@end

@interface BMLayoutCenterYs : BMArrayAnchorsSupport <BMLayoutAnchorCenterYProtocol>

@end

@interface BMLayoutFirstBaselines : BMArrayAnchorsSupport <BMLayoutAnchorFirstBaselineProtocol>

@end

@interface BMLayoutLastBaselines : BMArrayAnchorsSupport <BMLayoutAnchorLastBaselineProtocol>

@end

@interface BMLayoutSizes : BMArrayAnchorsSupport <BMLayoutAnchorSizeProtocol>

@end

@interface BMLayoutEdges : BMArrayAnchorsSupport <BMLayoutAnchorEdgeProtocol>

@end

NS_ASSUME_NONNULL_END
