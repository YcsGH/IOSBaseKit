//
//  BaseException.h
//  MvvmDemo
//
//  Created by gaojx on 2018/4/12.
//  Copyright © 2018年 facemeeting. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseException : NSObject

@property(nonatomic,assign)NSInteger errorcode;  // 错误码
@property(nonatomic,copy)NSString *message;      // 错误信息
@property(nonatomic,copy)NSString *suggestion;   // 建议

+(BaseException *)initWithErrorCode:(NSInteger)errorcode
                        withMessage:(NSString *)message;

@end
