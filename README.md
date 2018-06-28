# WYSegmentView

导入#import "WYSegmentControlView.h"

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
![image]https://github.com/jieyiyou/WYSegmentView/blob/master/%E5%9B%BE%E7%89%87.png
