//
//  LFMultiCheckButtons.m
//  LFMultiCheckButtons
//
//  Created by archerLj on 2018/2/25.
//  Copyright © 2018年 com.bocodo.csr. All rights reserved.
//

#import "LFMultiCheckButtons.h"

@interface LFMultiCheckButtons()
@property (nonatomic, strong) NSMutableArray *btnArr;
@property (nonatomic, assign) Boolean canEdit;
@end

@implementation LFMultiCheckButtons

/******************************************************************/
//             public methods
/******************************************************************/
-(void)showWithSelected:(NSArray *)selectedIndexs withEditable:(Boolean)editable {
    
    [self initWith:editable];
    
    if (selectedIndexs.count > 0) {
        if (self.isMultipule) { // 多选的话，全部选中
            for (NSNumber *index in selectedIndexs) {
                int intIndex = [index intValue];
                UIButton *selectedBtn =  self.btnArr[intIndex];
                selectedBtn.selected = YES;
                [self setSelected:selectedBtn];
            }
        } else { // 单选的话，只选中第一个
            int index = [selectedIndexs[0] intValue];
            UIButton *selectedBtn =  self.btnArr[index];
            selectedBtn.selected = YES;
            [self setSelected:selectedBtn];
        }
    }
}

-(NSArray *)getSelectedIndexs {
    
    NSMutableArray *selectedIndexs = [[NSMutableArray alloc] init];
    for (int i = 0; i < self.btnArr.count; i++) {
        UIButton *btn = self.btnArr[i];
        if (btn.selected) {
            [selectedIndexs addObject:@(i)];
        }
    }
    return selectedIndexs;
}


/******************************************************************/
//             private methods
/******************************************************************/
-(void)initWith:(Boolean)canEdit {
    
    self.canEdit = canEdit;
    
    CGFloat btnWith = (self.bounds.size.width - self.edgeInsets.left - self.edgeInsets.right - (self.lineSize - 1) * self.btnGap) / self.lineSize;
    
    for (int i = 0; i < self.buttonTitles.count; i++) {
        CGFloat x = (i % self.lineSize) * (btnWith + self.btnGap) + self.edgeInsets.left;
        CGFloat y = self.edgeInsets.top + (i / self.lineSize) * (self.btnHeight + self.lineGap);
        
        UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(x, y, btnWith, self.btnHeight)];
        [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
        [btn setTitle:self.buttonTitles[i] forState:UIControlStateNormal];
        [btn setTitleColor:self.normalTitleColor forState:UIControlStateNormal];
        [btn setBackgroundColor:self.normalBgColor];
        btn.titleLabel.font = self.titleFont;
        
        if (self.borderWidth > 0) {
            btn.layer.borderWidth = self.borderWidth;
        } else {
            btn.layer.borderWidth = 1;
        }
        btn.layer.borderColor = self.normalBorderColor.CGColor;
        btn.layer.cornerRadius = self.cornerRadius;
        
        
        [self addSubview:btn];
        [self.btnArr addObject:btn];
    }
}

-(void)btnAction:(UIButton *)sender {

    if (self.canEdit) {
        if (self.isMultipule) { // 如果是多选按钮，则可以取消选中
            sender.selected = !sender.selected;
            if (sender.selected) {
                [self setSelected:sender];
            } else {
                [self setNormal:sender];
            }
        } else {
            if (!sender.selected) {
                for (UIButton *btn in self.btnArr) {
                    btn.selected = NO;
                    [self setNormal:btn];
                }
                sender.selected = YES;
                [self setSelected:sender];
            }
        }
    }
}

-(void)setSelected:(UIButton *)sender {
    [sender setTitleColor:self.selectedTitleColor forState:UIControlStateNormal];
    [sender setBackgroundColor:self.selectedBgColor];
    sender.layer.borderColor = self.selectedBorderColor.CGColor;
}

-(void)setNormal:(UIButton *)sender {
    [sender setTitleColor:self.normalTitleColor forState:UIControlStateNormal];
    [sender setBackgroundColor:self.normalBgColor];
    sender.layer.borderColor = self.normalBorderColor.CGColor;
}


/******************************************************************/
//             Setter && Getter
/******************************************************************/
-(NSMutableArray *)btnArr {
    if (_btnArr == nil) {
        _btnArr = [[NSMutableArray alloc] init];
    }
    return _btnArr;
}

@end
