//
//  LLVideoPlayerViewController.m
//  LLFoundation
//
//  Created by zhaomengWang on 2017/4/14.
//  Copyright © 2017年 MaoChao Network Co. Ltd. All rights reserved.
//

#import "LLVideoPlayerViewController.h"

@interface LLVideoPlayerViewController (){
    NSURL          *_videoUrl;
    LLAVPlayerView *_playerView;
}

@end

@implementation LLVideoPlayerViewController

- (instancetype)initWithVideoUrl:(NSURL *)videoUrl {
    self = [super init];
    if (self) {
        _videoUrl = videoUrl;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createViews];
}

- (void)createViews {
    _playerView = [[LLAVPlayerView alloc] initWithFrame:self.view.bounds];
    [_playerView playWith:_videoUrl];
    [self.view addSubview:_playerView];
}

- (UIInterfaceOrientationMask)ll_supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait|
    UIInterfaceOrientationMaskLandscapeLeft|
    UIInterfaceOrientationMaskLandscapeRight;
}

//隐藏状态栏
- (BOOL)prefersStatusBarHidden {
    return YES;
}

- (void)viewWillLayoutSubviews {
    _playerView.frame = self.view.bounds;
}

@end
