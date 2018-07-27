//
//  MVVMView.m
//  MyPersonTraining
//
//  Created by 魏庆洁 on 2018/7/27.
//  Copyright © 2018年 马银伟. All rights reserved.
//

#import "MVVMView.h"
//#import "MVVMPaper.h"
#import "MVVMViewModel.h"
#import "FBKVOController.h"
#import "NSObject+FBKVOController.h"
@interface MVVMView()
@property(nonatomic,strong)UILabel *contentLab;
@property(nonatomic,strong)MVVMViewModel *vm;
@end
@implementation MVVMView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.contentLab=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 40)];
        self.contentLab.textAlignment=NSTextAlignmentCenter;
        self.contentLab.font=[UIFont systemFontOfSize:15];
        [self addSubview:self.contentLab];
        
        //按钮
        UIButton *btn=[UIButton buttonWithType:0];
        btn.frame=CGRectMake(0, 44, 80, 40);
        [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
        btn.titleLabel.font=[UIFont systemFontOfSize:14];
        [btn setTitle:@"点击改变值" forState:UIControlStateNormal];
        [self addSubview:btn];
    }
    return self;
}

-(void)setViewModelWithVM:(MVVMViewModel *)vm{
    _vm=vm;
    [self.KVOController observe:vm keyPath:@"contentStr" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionInitial block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSKeyValueChangeKey,id> * _Nonnull change) {
        self.contentLab.text=change[NSKeyValueChangeNewKey];
    }];
}


-(void)btnClick{
    [self.vm print];
}

@end
