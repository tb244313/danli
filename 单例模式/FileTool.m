
//
//  FileTool.m
//  单例模式
//
//  Created by apple on 2017/9/20.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "FileTool.h"
#import "Single.h"

@implementation FileTool
static FileTool *_instance;

singleM(FileTool)

//+(instancetype)allocWithZone:(struct _NSZone *)zone
//{
//    
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        _instance = [super allocWithZone:zone];
//        
//    });
//    //    @synchronized (self) {
//    //        if (_instance == nil) {
//    //
//    //            //线程1
//    //
//    //            _instance = [super allocWithZone:zone];
//    //        }
//    //
//    //    }
//    
//    return _instance;
//}
//
////返回一个实例话对象 
//+(instancetype)shareTools
//{
//    //注意：最好写self
//    return [[self alloc] init];
//}
//
//
//
////严谨起见
//-(id)copyWithZone:(NSZone *)zone
//{
//    //    return [[self class] allocWithZone:zone];
//    return _instance;
//    
//    
//    
//}
//
//-(id)mutableCopy
//{
//    return _instance;
//}

@end
