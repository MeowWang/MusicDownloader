//
//  ViewController.m
//  MusicDownloader
//
//  Created by Wang Xue Li on 16/6/14.
//  Copyright © 2016年 Wang Xue Li. All rights reserved.
//

#import "ViewController.h"
#import "MusicDownloadViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn setFrame:CGRectMake(0, 0, 100, 60)];
    btn.center = CGPointMake(self.view.frame.size.width/2, 300);
    [btn.layer setBorderWidth:1.0];
    [btn setTitle:@"开始吧~" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(openMusicDownloader) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)openMusicDownloader
{
    MusicDownloadViewController *musicVC = [MusicDownloadViewController new];
    
    //todo
    
    [self presentViewController:musicVC animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
