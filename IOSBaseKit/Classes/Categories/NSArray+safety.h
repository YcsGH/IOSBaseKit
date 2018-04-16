//
//  NSArray+safety.h
//  HELLO
//
//  Created by yangcs on 2017/5/8.
//  Copyright © 2017年 facemeeting. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (safety)

/** 检查数组在index处取值是否安全 */
-(BOOL)checkSafetyAt:(NSInteger)index;

@end
