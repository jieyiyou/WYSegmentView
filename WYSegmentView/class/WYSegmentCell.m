//
//  WYSegmentCell.m
//  WYSegmentView
//
//  Created by WY on 2018/6/22.
//  Copyright © 2018年 WY. All rights reserved.
//

#import "WYSegmentCell.h"

#define RGB(R,G,B)   [UIColor colorWithRed:R/255.0f green:G/255.0f blue:B/255.0f alpha:1.0f]

@interface WYSegmentCell ()

@property (nonatomic, strong) UILabel *titleLabel;

@end

@implementation WYSegmentCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];        
        _selectedColor = RGB(0, 166, 83);
        _normalColor = [UIColor whiteColor];
        _selectedFont = _normalFont = [UIFont systemFontOfSize:14];
        
        _titleLabel = [[UILabel alloc]init];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.backgroundColor = [UIColor whiteColor];
        [self.contentView addSubview:_titleLabel];
        
        
        _bottomLine = [[UILabel alloc]init];
        _bottomLine.backgroundColor = RGB(234,235,240);
        [self.contentView addSubview:_bottomLine];
    }
    
    return self;
}


- (void)setTitle:(NSString *)title
{
    _title = title;
    _titleLabel.text = _title;
}

- (void)setSelected:(BOOL)selected
{
    super.selected = selected;
    if (selected) {
        _titleLabel.font = _selectedFont;
        _titleLabel.textColor = _selectedColor;
    }else{
        _titleLabel.font = _normalFont;
        _titleLabel.textColor = _normalColor;
    }
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    _bottomLine.frame = CGRectMake(0, self.frame.size.height - 0.8, [UIScreen mainScreen].bounds.size.width, 0.8);
    _titleLabel.frame = self.bounds;
}

@end
