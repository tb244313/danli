//
//  Single.h
//  单例模式
//
//  Created by apple on 2017/9/20.
//  Copyright © 2017年 apple. All rights reserved.
//

#define SingleH(name) +(instancetype)share##name;
#if __has_feature(objc_arc)


#define singleM(name) static id _instance;\
+(instancetype)allocWithZone:(struct _NSZone *)zone\
{\
    static dispatch_once_t onceToken;\
    dispatch_once(&onceToken, ^{\
        _instance = [super allocWithZone:zone];\
    });\
    return _instance;\
}\
\
+(instancetype)share##name\
{\
    return [[self alloc] init];\
}\
\
-(id)copyWithZone:(NSZone *)zone\
{\
    return _instance;\
}\
\
-(id)mutableCopyWithZone:(NSZone *)zone\
{\
    return _instance;\
}
#else
#define singleM static id _instance;\
+(instancetype)allocWithZone:(struct _NSZone *)zone\
{\
static dispatch_once_t onceToken;\
dispatch_once(&onceToken, ^{\
_instance = [super allocWithZone:zone];\
});\
return _instance;\
}\
\
+(instancetype)share##name\
{\
return [[self alloc] init];\
}\
\
-(id)copyWithZone:(NSZone *)zone\
{\
return _instance;\
}\
\
-(id)mutableCopyWithZone:(NSZone *)zone\
{\
return _instance;\
}\
-(void)release\
{\
    NSLog(@"---");\
}\
\
-(in)retain\
{\
    return _instance;\
}\
-(NSUInteger)retainCount\
{\
    return MAXFLOAT;\
}
#endif
