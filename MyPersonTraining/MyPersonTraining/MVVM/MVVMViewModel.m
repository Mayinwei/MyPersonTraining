//
//  MVVMViewModel.m
//  MyPersonTraining
//
//  Created by 魏庆洁 on 2018/7/27.
//  Copyright © 2018年 马银伟. All rights reserved.
//

#import "MVVMViewModel.h"
#import "MVVMPaper.h"

@interface MVVMViewModel()
@property(nonatomic,strong)NSString *contentStr;
@property(nonatomic,strong)MVVMPaper *paper;
@end
@implementation MVVMViewModel

//传入model
-(void)setModelWithPaper:(MVVMPaper *)paper{
    self.paper=paper;
    self.contentStr=paper.contentStr;
}

-(void)print{
    self.paper.contentStr=@"点击改变了";
    self.contentStr=@"点击改变了";
}
@end
