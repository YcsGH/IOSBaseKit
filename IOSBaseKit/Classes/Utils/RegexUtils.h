//
//  RegexUtils.h
//  Pods
//
//  Created by yangcs on 2017/11/7.
//
//

#import <Foundation/Foundation.h>

/** 常用正则表达式 */
@interface RegexUtils : NSObject

///邮箱有效性检查
+(BOOL)checkEmailAddress:(NSString *)email;

/** 在一段文本中捕获首次出现的IP地址或域名<优先捕获IP地址> */
NSString *CaptureUrlInText(NSString *text);


@end
