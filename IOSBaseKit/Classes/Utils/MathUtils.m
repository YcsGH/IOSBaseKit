//
//  MathUtils.m
//  Pods
//
//  Created by yangcs on 2018/4/16.
//
//

#import "MathUtils.h"

@implementation MathUtils

/* 阶乘 */
long Factorial(long n){
    if (n < 0) { return 0;}
    else if (n == 0 || n == 1){ return 1;}
    else return n * Factorial(n - 1);
}

/* A(n,m) 在n个当中取m个的排列 */
long Arrangement(long n,long m){
    if (n <= 0 || m < 0 || m > n) { /* n，m ∈ N*，且m ≤ n */
        return 0;
    }
    return Factorial(n) / Factorial(n-m);
}

/* C(n,m) 在n种组合中选m个 */
long Combination(long n,long m){
    if (n <= 0 || m < 0 || m > n) { /* n,m 都是正整数 */
        return 0;
    }
    long mm = Factorial(m) * Factorial(n-m);
    return Factorial(n) / mm;
}


@end
