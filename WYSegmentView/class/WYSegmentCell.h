//
//  WYSegmentCell.h
//  WYSegmentView
//
//  Created by WY on 2018/6/22.
//  Copyright © 2018年 WY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WYSegmentCell : UICollectionViewCell

@property (nonatomic, copy) NSString *title;
/**
 *  默认分别是 [UIColor redColor],[UIColor whiteColor]
 */
@property (nonatomic, strong) UIColor *selectedColor;
@property (nonatomic, strong) UIColor *normalColor;

/**
 *  默认都是14号字体
 */
@property (nonatomic, strong) UIFont *selectedFont;
@property (nonatomic, strong) UIFont *normalFont;



/**
 *  底部分割线
 */
@property(nonatomic,strong) UILabel *bottomLine;


@end
