//
//  ViewController.m
//  MyVideoPlayer
//
//  Created by 刘艳法 on 2017/4/24.
//  Copyright © 2017年 刘艳法. All rights reserved.
//

#import "ViewController.h"
#import "ZXVideo.h"
#import "PresentViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)playLocalVideo:(UIButton *)sender {
    NSURL *videoURL = [[NSBundle mainBundle] URLForResource:@"150511_JiveBike" withExtension:@"mov"];
    ZXVideo *video = [[ZXVideo alloc] init];
    video.playUrl = videoURL.absoluteString;
    video.title = @"Test";
    
    PresentViewController *vc = [[PresentViewController alloc] init];
    vc.video = video;
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)playRemotoVideo:(UIButton *)sender {
    ZXVideo *video = [[ZXVideo alloc] init];
    video.playUrl = @"http://baobab.wdjcdn.com/1451897812703c.mp4";
    video.title = @"Rollin'Wild 圆滚滚的";
    
    PresentViewController *vc = [[PresentViewController alloc] init];
    vc.video = video;
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
