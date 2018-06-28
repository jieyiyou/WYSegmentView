//
//  ViewController.m
//  WYSegmentView
//
//  Created by WY on 2018/6/22.
//  Copyright © 2018年 WY. All rights reserved.
//

#import "ViewController.h"
#import "WYSegmentControlView.h"


@interface ViewController ()<WYSegmentControlViewDelegate>

@property (nonatomic,strong)WYSegmentControlView *cursorView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupSubviews];
}

- (void)setupSubviews
{
    NSArray *titles = @[@"一",@"二",@"三",@"四",@"五"];
    
    _cursorView = [[WYSegmentControlView alloc] initWithFrame:CGRectMake(0, 20, self.view.bounds.size.width, 40)];
    //设置子页面容器的高度
    _cursorView.contentViewHeight = CGRectGetHeight(self.view.bounds)-40-49;
    //设置控件所在controller
    _cursorView.parentViewController = self;
    _cursorView.titles = titles;
    _cursorView.delegate = self;
    
    NSMutableArray *classNameArrays = [[NSMutableArray alloc] init];
    for (int i = 0; i < titles.count; i++) {
        UIViewController *controller = [[UIViewController alloc] init];
        [classNameArrays addObject:controller];
    }
    _cursorView.controllers = [classNameArrays copy];
    
    //设置字体和颜色
    _cursorView.selectedColor = [UIColor redColor];
    _cursorView.selectedFont = [UIFont systemFontOfSize:14];
    _cursorView.normalFont = [UIFont systemFontOfSize:14];
    _cursorView.backgroundColor = [UIColor whiteColor];
    _cursorView.lineView.backgroundColor = [UIColor redColor];
    [self.view addSubview:_cursorView];
    //属性设置完成后，调用此方法绘制界面
    [_cursorView reloadPages];
}

- (void)didClickedOneIndex:(NSInteger )curentIndex
{
    NSLog(@"didSelect == %ld",curentIndex);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
