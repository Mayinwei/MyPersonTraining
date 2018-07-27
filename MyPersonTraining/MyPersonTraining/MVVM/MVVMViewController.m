//
//  MVVMViewController.m
//  MyPersonTraining
//
//  Created by 魏庆洁 on 2018/7/27.
//  Copyright © 2018年 马银伟. All rights reserved.
//

#import "MVVMViewController.h"
#import "MVVMPaper.h"
#import "MVVMView.h"
#import "MVVMViewModel.h"

@interface MVVMViewController ()
@property(nonatomic,strong)MVVMPaper *pager;
@property(nonatomic,strong)MVVMView *mvvmView;
@property(nonatomic,strong)MVVMViewModel *viewModel;
@end

@implementation MVVMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"MVVM";
    self.view.backgroundColor=[UIColor lightGrayColor];
    
    //实例化
    self.pager=[[MVVMPaper alloc]init];
    self.pager.contentStr=@"第一次打印";
    //视图
    self.mvvmView =[[MVVMView alloc]init];
    self.mvvmView.frame=CGRectMake(0, 100, self.view.bounds.size.width, 100);
    self.mvvmView.backgroundColor=[UIColor orangeColor];
    
    [self.view addSubview:self.mvvmView];
    //模型试图
    self.viewModel=[[MVVMViewModel alloc]init];
    [self.viewModel setModelWithPaper:self.pager];
    [self.mvvmView setViewModelWithVM:self.viewModel];
}


@end
