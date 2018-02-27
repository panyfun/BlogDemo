//
//  CustomView.m
//  LayoutSubDemo
//
//  Created by Pany on 2018/2/22.
//  Copyright © 2018年 Pany. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

- (void)layoutSubviews {
    [super layoutSubviews];
    NSLog(@"view(%ld) layoutSubviews", self.tag);
}

@end
