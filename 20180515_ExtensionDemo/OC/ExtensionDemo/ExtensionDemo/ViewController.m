//
//  ViewController.m
//  ExtensionDemo
//
//  Created by Pany on 2018/6/15.
//  Copyright © 2018年 Pany. All rights reserved.
//

#import "ViewController.h"

#import <objc/runtime.h>

#import "Woman.h"
#import "Woman+Secret.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Woman *lara = [Woman new];
    NSInteger age = lara.age;
    
    unsigned int count;
    Method *methodList = class_copyMethodList(NSClassFromString(@"Woman"), &count);
    for (unsigned int i = 0; i < count; i++) {
        Method method = methodList[i];
        NSLog(@"method->%@", NSStringFromSelector(method_getName(method)));
    }
}

@end
