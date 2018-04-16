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
+(NSString *)trim:(NSString *)str;
///去掉URL链接后边的'/'
+(NSString *)buildServiceUrl:(NSString *)baseUrl;
+(NSString *)uuidStr;
+(NSString *)buildNotEmptyStr:(NSString *)str;
+(NSString *)convertToUTF8String:(char *)sourceStr;
///获取汉字拼音
+(NSString *)transform:(NSString *)chinese;

@end
