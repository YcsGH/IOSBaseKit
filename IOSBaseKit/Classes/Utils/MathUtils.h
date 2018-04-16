//
//  MathUtils.h
//  Pods
//
//  Created by yangcs on 2018/4/16.
//
//

#import <Foundation/Foundation.h>

@interface MathUtils : NSObject

/** 阶乘函数 */
long Factorial(long n);
/** A(n,m) 在n个当中取m个的排列 */
long Arrangement(long n,long m);
/** C(n,m) 在n种组合中选m个 */
long Combination(long n,long m);

@end
