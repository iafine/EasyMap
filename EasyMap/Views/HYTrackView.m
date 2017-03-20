//
//  HYTrackView.m
//  EasyMap
//
//  Created by hyyy on 2017/3/14.
//  Copyright © 2017年 hyyy. All rights reserved.
//

#import "HYTrackView.h"

@interface HYTrackView()

@property (nonatomic, strong) UILabel *stepCountValueLabel;
@property (nonatomic, strong) UILabel *distanceLabel;
@property (nonatomic, strong) UILabel *distanceValueLabel;
@property (nonatomic, strong) UILabel *floorsLabel;
@property (nonatomic, strong) UILabel *floorsValueLabel;

@end

@implementation HYTrackView

#pragma mark - lifecycle
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self initUI];
        [self initLayout];
    }
    return self;
}

#pragma mark - init UI and Layout
- (void)initUI {
    [self addSubview:self.stepCountLabel];
    [self addSubview:self.stepCountValueLabel];
    [self addSubview:self.distanceLabel];
    [self addSubview:self.distanceValueLabel];
    [self addSubview:self.floorsLabel];
    [self addSubview:self.floorsValueLabel];
}

- (void)initLayout {
    [self.stepCountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.mas_centerX);
        make.top.equalTo(self.mas_top).offset(20);
        make.size.mas_equalTo(CGSizeMake(200, 50));
    }];
    [self.stepCountValueLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.mas_centerX);
        make.top.equalTo(self.stepCountLabel.mas_bottom).offset(5);
        make.size.mas_equalTo(CGSizeMake(200, 50));
    }];
    [self.distanceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.stepCountValueLabel.mas_bottom);
        make.left.equalTo(self.mas_left);
        make.size.mas_equalTo(CGSizeMake(CGRectGetWidth(self.frame)/2, 35));
    }];
    [self.distanceValueLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.distanceLabel.mas_bottom).offset(5);
        make.left.equalTo(self.mas_left);
        make.size.mas_equalTo(CGSizeMake(CGRectGetWidth(self.frame)/2, 35));
    }];
    [self.floorsLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.stepCountValueLabel.mas_bottom);
        make.left.equalTo(self.distanceLabel.mas_right);
        make.size.mas_equalTo(CGSizeMake(CGRectGetWidth(self.frame)/2, 35));
    }];
    [self.floorsValueLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.distanceLabel.mas_bottom).offset(5);
        make.left.equalTo(self.distanceValueLabel.mas_right);
        make.size.mas_equalTo(CGSizeMake(CGRectGetWidth(self.frame)/2, 35));
    }];
}

#pragma mark - Events


#pragma mark - setter and getter
- (UILabel *)stepCountLabel {
    if (!_stepCountLabel) {
        _stepCountLabel = [UILabel new];
        _stepCountLabel.font = [UIFont systemFontOfSize:30.0f];
        _stepCountLabel.textAlignment = NSTextAlignmentCenter;
        _stepCountLabel.text = @"今日步数";
    }
    return _stepCountLabel;
}

- (UILabel *)stepCountValueLabel {
    if (!_stepCountValueLabel) {
        _stepCountValueLabel = [UILabel new];
        _stepCountValueLabel.font = [UIFont systemFontOfSize:30.0f];
        _stepCountValueLabel.textAlignment = NSTextAlignmentCenter;
        _stepCountValueLabel.textColor = [UIColor lightGrayColor];
        _stepCountValueLabel.text = @"12021";
    }
    return _stepCountValueLabel;
}

- (UILabel *)distanceLabel {
    if (!_distanceLabel) {
        _distanceLabel = [UILabel new];
        _distanceLabel.font = [UIFont systemFontOfSize:18.0f];
        _distanceLabel.textAlignment = NSTextAlignmentCenter;
        _distanceLabel.text = @"距离";
    }
    return _distanceLabel;
}

- (UILabel *)distanceValueLabel {
    if (!_distanceValueLabel) {
        _distanceValueLabel = [UILabel new];
        _distanceValueLabel.font = [UIFont systemFontOfSize:18.0f];
        _distanceValueLabel.textAlignment = NSTextAlignmentCenter;
        _distanceValueLabel.textColor = [UIColor lightGrayColor];
        _distanceValueLabel.text = @"4.2公里";
    }
    return _distanceValueLabel;
}

- (UILabel *)floorsLabel {
    if (!_floorsLabel) {
        _floorsLabel = [UILabel new];
        _floorsLabel.font = [UIFont systemFontOfSize:18.0f];
        _floorsLabel.textAlignment = NSTextAlignmentCenter;
        _floorsLabel.text = @"楼层";
    }
    return _floorsLabel;
}

- (UILabel *)floorsValueLabel {
    if (!_floorsValueLabel) {
        _floorsValueLabel = [UILabel new];
        _floorsValueLabel.font = [UIFont systemFontOfSize:18.0f];
        _floorsValueLabel.textAlignment = NSTextAlignmentCenter;
        _floorsValueLabel.textColor = [UIColor lightGrayColor];
        _floorsValueLabel.text = @"9层";
    }
    return _floorsValueLabel;
}

@end
