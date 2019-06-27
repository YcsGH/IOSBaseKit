//
//  StringUtils.h
//  Pods
//
//  Created by yangcs on 2018/4/16.
//
//

#import <Foundation/Foundation.h>

@interface StringUtils : NSObject

+(BOOL)isEmpty:(NSString *)str;

+(BOOL)isNotEmpty:(NSString *)str;

+(NSString *)buildNotEmptyStr:(NSString *)str;

+(NSString *)trim:(NSString *)str;

/** 去掉URL链接后边的'/' */
+(NSString *)buildServiceUrl:(NSString *)baseUrl;

+(NSString *)uuidStr;

+(NSString *)convertToUTF8String:(char *)sourceStr;

/** NSString转成C字符串 */
+(const char *)convertToCString:(NSString *)text;

@end
