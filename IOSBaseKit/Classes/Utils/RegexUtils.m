//
//  RegexUtils.m
//  Pods
//
//  Created by yangcs on 2017/11/7.
//
//

#import "RegexUtils.h"

@implementation RegexUtils

+(BOOL)checkEmailAddress:(NSString *)email {
    if (email == nil) { return NO;}
    NSString *pattern =@"^\\w+(\\.\\w*)*@\\w+(\\.\\w{2,3}){1,3}$";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",pattern];
    BOOL isMatch = [pred evaluateWithObject:email];
    return isMatch;
}

/** 在一段文本中捕获首次出现的IP地址或域名<优先捕获IP地址> */
NSString *CaptureUrlInText(NSString *text) {
    NSString *reet = @"";
    if (text == NULL || [text isEqualToString:@""]) {
        return @"";
    }
    /* 匹配IP地址 */
    NSError *error = NULL;
    NSString *pattern1 = @"(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|[1-9])\\.(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|\\d)\\.(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|\\d)\\.(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|\\d)";
    NSString *pattern2 = @"(?=^.{3,255}$)[a-zA-Z0-9][-a-zA-Z0-9]{0,62}(\\.[a-zA-Z0-9][-a-zA-Z0-9]{0,62})+";
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:pattern1 options:NSRegularExpressionDotMatchesLineSeparators error:&error];
    NSRange matchedRange = [regex rangeOfFirstMatchInString:text options:NSMatchingReportCompletion range:NSMakeRange(0, text.length)];
    if (text.length >= matchedRange.location + matchedRange.length) {
        reet = [text substringWithRange:matchedRange];
    }
    if ([reet isEqualToString:@""]) { /* 匹配域名 */
        // 这里也会匹配到192.168这样的地址.不过已经达到项目要求
        NSRegularExpression *regex2 = [NSRegularExpression regularExpressionWithPattern:pattern2 options:NSRegularExpressionDotMatchesLineSeparators error:&error];
        NSRange matchedRange = [regex2 rangeOfFirstMatchInString:text options:NSMatchingReportCompletion range:NSMakeRange(0, text.length)];
        if (text.length >= matchedRange.location + matchedRange.length) {
            reet = [text substringWithRange:matchedRange];
        }
    }
    return reet;
}


@end
