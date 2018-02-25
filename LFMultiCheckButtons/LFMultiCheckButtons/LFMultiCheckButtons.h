//
//  LFMultiCheckButtons.h
//  LFMultiCheckButtons
//
//  Created by archerLj on 2018/2/25.
//  Copyright © 2018年 com.bocodo.csr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LFMultiCheckButtons : UIView

// 全局设置
@property (assign, nonatomic) UIEdgeInsets edgeInsets; // 多选按钮组所在视图的上下左右边距
@property (strong, nonatomic) NSArray *buttonTitles; // 所有按钮的标题
@property (assign, nonatomic) int lineSize; // 一行的按钮数量
@property (assign, nonatomic) Boolean isMultipule; // 是否可多选，默认是单选按钮


// 单个按钮的设置
@property (assign, nonatomic) CGFloat cornerRadius; // 按钮圆角
@property (assign, nonatomic) CGFloat btnHeight; // 按钮的高度
@property (assign, nonatomic) CGFloat btnGap; // 按钮之间的间隙
@property (assign, nonatomic) CGFloat lineGap; // 按钮行之间的间隙
@property (assign, nonatomic) CGFloat borderWidth; // 按钮边框宽度
@property (strong, nonatomic) UIFont *titleFont; // 按钮标题字体样式

@property (strong, nonatomic) UIColor *normalTitleColor; // 正常按钮标题颜色
@property (strong, nonatomic) UIColor *selectedTitleColor; // 选中时按钮标题颜色
@property (strong, nonatomic) UIColor *normalBgColor; // 正常按钮背景颜色
@property (strong, nonatomic) UIColor *selectedBgColor; // 选中时按钮背景颜色
@property (strong, nonatomic) UIColor *normalBorderColor; // 正常按钮边框颜色
@property (strong, nonatomic) UIColor *selectedBorderColor; // 选中时按钮边框颜色


/**
 * 当把上面所有的属性设置好之后，调用该方法展示即可
 * selectedIndexs: 展示时默认选中的按钮下标数组
 * editable: 该按钮组是否可编辑，YES: 按钮可点击 NO: 按钮不可点击
 */
-(void)showWithSelected:(NSArray *)selectedIndexs withEditable:(Boolean)editable;

// 获取选中按钮的下标
-(NSArray *)getSelectedIndexs;
@end
