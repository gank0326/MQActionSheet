//
//  ViewController.m
//  MQActionSheet
//
//  Created by wywk on 16/3/25.
//  Copyright © 2016年 MsInfo. All rights reserved.
//

#import "ViewController.h"
#import "MQActionSheet.h"

@interface ViewController ()

@property (nonatomic, strong) UIImageView *bgImageView;
@property (nonatomic, strong) UIButton *MQButton;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.bgImageView];
    [self.view addSubview:self.MQButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    
    // Dispose of any resources that can be recreated.
}

- (void)showAction {
    MQActionSheet *actionSheet = [[MQActionSheet alloc] initWithTitle:nil
                                                    cancelButtonTitle:NSLocalizedString(@"取消", @"Cancel")
                                                    otherButtonTitles:@[NSLocalizedString(@"拍照", @"拍照"),NSLocalizedString(@"相册选取", @"相册选取")]
                                                       clickedAtIndex:^(NSInteger index) {
                                                           NSLog(@"%ld",index);
                                                       }];
    [actionSheet show];

}

- (UIImageView *)bgImageView {
    if (!_bgImageView) {
        _bgImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MQActionSheet.jpg"]];
        _bgImageView.frame = self.view.bounds;
    }
    return _bgImageView;
}

- (UIButton *)MQButton {
    if (!_MQButton) {
        _MQButton = [[UIButton alloc] initWithFrame:CGRectMake(50, 100, 80, 40)];
        [_MQButton setTitle:@"show" forState:UIControlStateNormal];
        [_MQButton addTarget:self action:@selector(showAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _MQButton;
}
@end
