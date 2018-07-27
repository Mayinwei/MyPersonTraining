//
//  MVVMView.h
//  MyPersonTraining
//
//  Created by 魏庆洁 on 2018/7/27.
//  Copyright © 2018年 马银伟. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MVVMViewModel;
@interface MVVMView : UIView

//传递模型
-(void)setViewModelWithVM:(MVVMViewModel *)vm;
@end
