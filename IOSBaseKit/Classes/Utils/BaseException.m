//
//  BaseException.m
//  MvvmDemo
//
//  Created by gaojx on 2018/4/12.
//  Copyright © 2018年 facemeeting. All rights reserved.
//

#import "BaseException.h"

@implementation BaseException

+(BaseException *)initWithErrorCode:(NSInteger)errorcode
                        withMessage:(NSString *)message {
    BaseException *ex = [[self alloc]init];
    ex.errorcode = errorcode;
    ex.message = message;
    return ex;
}

-(void)printStackTrace {
    NSLog(@"IOSBaseKit/ERROR:%ld,%@",(long)_errorcode,_message);
}

@end
