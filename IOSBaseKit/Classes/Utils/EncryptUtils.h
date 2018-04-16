//
//  EncryptUtils.h
//  Pods
//
//  Created by yangcs on 2017/11/7.
//
//

#import <Foundation/Foundation.h>

/** 常用的密码工具类 */
@interface EncryptUtils : NSObject

+(NSString *)md5:(NSString *)str;


NSString * aesEncryptString(NSString *content, NSString *key);
NSString * aesDecryptString(NSString *content, NSString *key);

NSData * aesEncryptData(NSData *data, NSData *key);
NSData * aesDecryptData(NSData *data, NSData *key);





@end
