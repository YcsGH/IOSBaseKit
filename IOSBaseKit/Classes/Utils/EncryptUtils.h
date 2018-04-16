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

///md5加密
+(NSString *)md5:(NSString *)str;
///AES加密
NSString* aesEncryptString(NSString *content, NSString *key);
///AES解密
NSString* aesDecryptString(NSString *content, NSString *key);
///RC4加密
NSString* HloveyRC4(NSString *aInput,NSString *aKey);


@end
