//
//  NSArray+BMAdditions.h
//  BMLayoutAnchorUtil
//
//  Created by liuweizhen on 2018/12/17.
//  Copyright © 2018 banma. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BMArrayAnchorsSupport.h"

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, BMAxisType) {
    BMAxisTypeHorizontal,
    BMAxisTypeVertical
};

@interface NSArray (BMAdditions)

@property (nonatomic,readonly,strong) BMLayoutLeadings *bm_leading NS_AVAILABLE_IOS(9_0);
@property (nonatomic,readonly,strong) BMLayoutTrailings *bm_trailing NS_AVAILABLE_IOS(9_0);
@property (nonatomic,readonly,strong) BMLayoutLefts *bm_left NS_AVAILABLE_IOS(9_0);
@property (nonatomic,readonly,strong) BMLayoutRights *bm_right NS_AVAILABLE_IOS(9_0);
@property (nonatomic,readonly,strong) BMLayoutTops *bm_top NS_AVAILABLE_IOS(9_0);
@property (nonatomic,readonly,strong) BMLayoutBottoms *bm_bottom NS_AVAILABLE_IOS(9_0);
@property (nonatomic,readonly,strong) BMLayoutWidths *bm_width NS_AVAILABLE_IOS(9_0);
@property (nonatomic,readonly,strong) BMLayoutHeights *bm_height NS_AVAILABLE_IOS(9_0);
@property (nonatomic,readonly,strong) BMLayoutCenterXs *bm_centerX NS_AVAILABLE_IOS(9_0);
@property (nonatomic,readonly,strong) BMLayoutCenterYs *bm_centerY NS_AVAILABLE_IOS(9_0);
@property (nonatomic,readonly,strong) BMLayoutFirstBaselines *bm_firstBaseline NS_AVAILABLE_IOS(9_0);
@property (nonatomic,readonly,strong) BMLayoutLastBaselines *bm_lastBaseline NS_AVAILABLE_IOS(9_0);
@property (nonatomic,readonly,strong) BMLayoutSizes *bm_size NS_AVAILABLE_IOS(9_0);
@property (nonatomic,readonly,strong) BMLayoutEdges *bm_edge NS_AVAILABLE_IOS(9_0);

/**
 *  distribute with fixed spacing
 *
 *  @param axisType     which axis to distribute items along
 *  @param fixedSpacing the spacing between each item
 *  @param leadSpacing  the spacing before the first item and the container
 *  @param tailSpacing  the spacing after the last item and the container
 */
- (void)bm_distributeViewsAlongAxis:(BMAxisType)axisType withFixedSpacing:(CGFloat)fixedSpacing leadSpacing:(CGFloat)leadSpacing tailSpacing:(CGFloat)tailSpacing;

/**
 *  distribute with fixed item size
 *
 *  @param axisType        which axis to distribute items along
 *  @param fixedItemLength the fixed length of each item
 *  @param leadSpacing     the spacing before the first item and the container
 *  @param tailSpacing     the spacing after the last item and the container
 */
- (void)bm_distributeViewsAlongAxis:(BMAxisType)axisType withFixedItemLength:(CGFloat)fixedItemLength leadSpacing:(CGFloat)leadSpacing tailSpacing:(CGFloat)tailSpacing;

@end

NS_ASSUME_NONNULL_END
