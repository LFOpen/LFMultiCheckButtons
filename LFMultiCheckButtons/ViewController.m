//
//  ViewController.m
//  LFMultiCheckButtons
//
//  Created by archerLj on 2018/2/25.
//  Copyright © 2018年 com.bocodo.csr. All rights reserved.
//

#import "ViewController.h"
#import "LFMultiCheckButtons.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet LFMultiCheckButtons *MultiCheckBtns;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.MultiCheckBtns.buttonTitles = @[@"推荐",@"上海",@"视频",@"热点",@"新时代",@"科技",@"头条号",@"财经",@"房产",@"图片"];
    self.MultiCheckBtns.lineSize = 4;
    self.MultiCheckBtns.titleFont = [UIFont systemFontOfSize:14.0];
    self.MultiCheckBtns.btnGap = 10.0;
    self.MultiCheckBtns.btnHeight = 36.0;
    self.MultiCheckBtns.edgeInsets = UIEdgeInsetsMake(10.0, 15.0, 10.0, 15.0);
    self.MultiCheckBtns.lineGap = 10.0;
    self.MultiCheckBtns.normalTitleColor = [UIColor blackColor];
    self.MultiCheckBtns.selectedTitleColor = [UIColor whiteColor];
    self.MultiCheckBtns.normalBgColor = [UIColor whiteColor];
    self.MultiCheckBtns.selectedBgColor = [UIColor blueColor];
    self.MultiCheckBtns.normalBorderColor = [UIColor lightGrayColor];
    self.MultiCheckBtns.selectedBorderColor = [UIColor redColor];
    self.MultiCheckBtns.cornerRadius = 5.0;
    self.MultiCheckBtns.isMultipule = YES;
    [self.MultiCheckBtns showWithSelected:@[@(2), @(4)] withEditable:NO];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.MultiCheckBtns getSelectedIndexs];
    NSLog(@"");
}


@end
