//
//  ViewController.m
//  单例模式
//
//  Created by apple on 2017/9/19.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"
#import "Tools.h"
#import "FileTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    Tools *tool1 = [[Tools alloc] init];
    
    Tools *tool2 = [[Tools alloc] init];
    NSLog(@"%@----%@---%@",tool1,tool2,[Tools shareTools]);


    FileTool *t1 = [[FileTool alloc] init];
    FileTool *t2 = [FileTool new];
    
    NSLog(@"%@----%@---%@",t1,t2,[FileTool shareFileTool]);
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //条件编译
#if __has_feature(objc_arc)
    NSLog(@"ARC");
#else
    NSLog(@"MRC");
#endif
    
    
}






@end
