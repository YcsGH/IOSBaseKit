//
//  FileAssistant.m
//  Pods
//
//  Created by yangcs on 2018/4/16.
//
//

#import "FileAssistant.h"

@implementation FileAssistant

+(NSString *)getDocumentsPath {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    return documentsDirectory;
}

+(NSString *)getCachesPath {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    return documentsDirectory;
}

+(void)createDirectoryAtPath:(NSString *)filePath {
    if(filePath == nil){return;}
    if (![[self defaultManager]fileExistsAtPath:filePath]) {
        [[self defaultManager]createDirectoryAtPath:filePath withIntermediateDirectories:YES attributes:nil error:nil];
    }
}

+(BOOL)createFileAtPath:(NSString *)filePath {
    if (filePath == nil) { return NO;}
    NSError *error = nil;
    if ([[self defaultManager]fileExistsAtPath:filePath]) {
        [[self defaultManager]removeItemAtPath:filePath error:&error];
    }
    return [[self defaultManager]createFileAtPath:filePath contents:nil attributes:nil];
}

+(void)removeFileAtPath:(NSString *)filePath {
    if (filePath == nil) { return;}
    if (![[self defaultManager]fileExistsAtPath:filePath]) {
        return;
    }
    NSError *error = nil;
    [[self defaultManager]removeItemAtPath:filePath error:&error];
    if (error != nil) {
        NSLog(@"IOSBaseKit: remove file error:%@",error.localizedDescription);
    }
}


@end
