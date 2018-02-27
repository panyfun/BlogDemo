//
//  ViewController.m
//  LayoutSubDemo
//
//  Created by Pany on 2018/2/22.
//  Copyright © 2018年 Pany. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"
#import "CustomScrollView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet CustomView *viewA;
@property (weak, nonatomic) IBOutlet CustomView *viewB;
@property (weak, nonatomic) IBOutlet CustomScrollView *viewC;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _viewC.contentSize = CGSizeMake([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height * 2);
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        // 尝试修改viewB的size
//        _viewB.frame = CGRectMake(_viewB.frame.origin.x, _viewB.frame.origin.y, 100, 100);
        
        // 尝试修改viewB的origin
//        _viewB.frame = CGRectMake(10, 100, _viewB.frame.size.width, _viewB.frame.size.height);
        
        // 尝试修改viewA的size
        //        _viewA.frame = CGRectMake(_viewA.frame.origin.x, _viewA.frame.origin.y, 100, 100);
        
        // 尝试修改viewA的origin
//        _viewA.frame = CGRectMake(10, 100, _viewA.frame.size.width, _viewA.frame.size.height);
        
        //尝试修改scrollView的contentSize
//        _viewC.contentSize = CGSizeMake(500, 500);
        
        // 尝试以代码形式修改scrollView的contentOffset
//        [_viewC setContentOffset:CGPointMake(0, 200) animated:YES];

    });
}

@end
