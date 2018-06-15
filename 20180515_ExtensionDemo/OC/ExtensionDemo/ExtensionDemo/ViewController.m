//
//  ViewController.m
//  ExtensionDemo
//
//  Created by Pany on 2018/6/15.
//  Copyright © 2018年 Pany. All rights reserved.
//

#import "ViewController.h"

#import <objc/runtime.h>

#import "Man.h"
#import "Man+Secret.h"
#import "Woman.h"
#import "Woman+Secret.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Man *Richard = [Man new];
    NSLog(@"Richard's age = %ld", (long)Richard.age);
    Woman *Lara = [Woman new];
    NSLog(@"Lara's age = %ld", (long)Lara.age);
    
    // 打印方法列表
    unsigned int count;
    Method *methodList = class_copyMethodList(NSClassFromString(@"Woman"), &count);
    for (unsigned int i = 0; i < count; i++) {
        Method method = methodList[i];
        NSLog(@"method->%@", NSStringFromSelector(method_getName(method)));
    }
}

@end
