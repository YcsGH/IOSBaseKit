//
//  StringUtils.m
//  Pods
//
//  Created by yangcs on 2018/4/16.
//
//

#import "StringUtils.h"

@implementation StringUtils

+(BOOL)isEmpty:(NSString *)str {
    if (nil == str || [@"" isEqualToString:str]) {
        return YES;
    }
    return NO;
}

+(BOOL)isNotEmpty:(NSString *)str {
    if (nil == str || [@"" isEqualToString:str]) {
        return NO;
    }
    return YES;
}

+(NSString *)trim:(NSString *)str {
    if(str == nil) return @"";
    return [str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

+(NSString *)convertToUTF8String:(char *)sourceStr {
    if(sourceStr == NULL) return @"";
    NSString *reet = [NSString stringWithCString:sourceStr encoding:CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGB_18030_2000)];
    return [self buildNotEmptyStr:reet];
}

+(NSString *)buildNotEmptyStr:(NSString *)str {
    return (str != nil) ? str : @"";
}

+(NSString *)buildServiceUrl:(NSString *)baseUrl {
    if (baseUrl == nil) { return @"";}
    if ([baseUrl hasSuffix:@"/"]) {
        return [baseUrl substringToIndex:baseUrl.length-1];
    }
    return baseUrl;
}

+(NSString *)uuidStr {
    CFUUIDRef puuid = CFUUIDCreate(nil);
    CFStringRef uuidString = CFUUIDCreateString(nil, puuid);
    NSString * ret = (NSString *)CFBridgingRelease(CFStringCreateCopy(NULL, uuidString));
    CFRelease(puuid);
    CFRelease(uuidString);
    return ret;
}

//获取汉字拼音
+(NSString *)transform:(NSString *)chinese{
    NSMutableString *pinyin = [chinese mutableCopy]; //将汉字转换为拼音(带音标)
    CFStringTransform((__bridge CFMutableStringRef)pinyin, NULL, kCFStringTransformMandarinLatin, NO); //去掉音标
    CFStringTransform((__bridge CFMutableStringRef)pinyin, NULL, kCFStringTransformStripCombiningMarks, NO);
    return pinyin;
}


+(const char *)convertToCString:(NSString *)text {
    const char *c_name = [text cStringUsingEncoding:CFStringConvertEncodingToNSStringEncoding (kCFStringEncodingGB_18030_2000)];
    return c_name;
}








































@end
