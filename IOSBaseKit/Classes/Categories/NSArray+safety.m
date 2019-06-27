//
//  NSArray+safety.m
//  HELLO
//
//  Created by yangcs on 2017/5/8.
//  Copyright © 2017年 facemeeting. All rights reserved.
//

#import "NSArray+safety.h"

@implementation NSArray (safety)

-(BOOL)checkSafetyAt:(NSInteger)index {
    return self.count > index && index >= 0;
}


@end







