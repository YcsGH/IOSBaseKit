//
//  FileAssistant.h
//  Pods
//
//  Created by yangcs on 2018/4/16.
//
//

#import <Foundation/Foundation.h>

///文件管理助手
@interface FileAssistant : NSFileManager

+(NSString *)getDocumentsPath;
+(NSString *)getCachesPath;
+(void)createDirectoryAtPath:(NSString *)filePath;
+(BOOL)createFileAtPath:(NSString *)filePath;
+(void)removeFileAtPath:(NSString *)filePath;

@end
