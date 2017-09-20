//
//  Tools.h
//  单例模式
//
//  Created by apple on 2017/9/19.
//  Copyright © 2017年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Single.h"

@interface Tools : NSObject<NSCopying,NSMutableCopying>

SingleH(Tools)

//提供一个类方法
//1.表明身份，说明这是一个单例
//2.方便外界访问
//3.注意点：类方法命名规范，一般以share+类名|default+类名

//+(instancetype)shareTools;

@end
