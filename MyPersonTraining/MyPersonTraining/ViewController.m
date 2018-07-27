//
//  ViewController.m
//  MyPersonTraining
//
//  Created by 魏庆洁 on 2018/7/27.
//  Copyright © 2018年 马银伟. All rights reserved.
//

#import "ViewController.h"
#import "MVVMViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"首页";
}
- (IBAction)mvvmClick:(id)sender {
    [self.navigationController pushViewController:[MVVMViewController new] animated:YES];
}


@end
