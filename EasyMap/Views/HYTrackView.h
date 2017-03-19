//
//  HYTrackView.h
//  EasyMap
//
//  Created by hyyy on 2017/3/14.
//  Copyright © 2017年 hyyy. All rights reserved.
//

#import <UIKit/UIKit.h>

#define HYTrackEventLocate  @"HYTrackEventLocate"  // 定位按钮事件
#define HYTrackEventTrack   @"HYTrackEventTrack"    // 轨迹追踪按钮事件

@interface HYTrackView : UIView

@property (strong, nonatomic) UILabel *stepCountLabel;

@end