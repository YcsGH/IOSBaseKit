//
//  SharedPreference.m
//  Pods
//
//  Created by yangcs on 2018/4/16.
//
//

#import "SharedPreference.h"
#import "StringUtils.h"

@implementation SharedPreference

+(NSString*)stringForKey:(NSString *)key
             atPlistPath:(NSString *)plistName {
    if (key == nil || plistName == nil) {
        return @"";
    }
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:plistName ofType:@"plist"];
    NSDictionary *dictionary = [[NSDictionary alloc] initWithContentsOfFile:plistPath];
    NSString *str = dictionary[key];
    if (str == nil) { return @"";}
    return str;
}

///及时保存对象在UserDefaults中
+(void)saveObject:(id)object forKey:(NSString *)key {
    if (key == NULL || object == NULL) { return;}
    NSUserDefaults *userDef = [NSUserDefaults standardUserDefaults];
    [userDef setObject:object forKey:key];
    [userDef synchronize];
}

///从UserDefauts中获取对象
+(id)getObjectForKey:(NSString *)key {
    if(key == NULL) return NULL;
    return [[NSUserDefaults standardUserDefaults]objectForKey:key];
}

///从UserDefauts中获取一个字符串
+(NSString*)stringForKey:(NSString *)key {
    if(key == NULL) return @"";
    id value = [[NSUserDefaults standardUserDefaults]objectForKey:key];
    if ([value isKindOfClass:[NSString class]]) {
        return (NSString *)value;
    }
    return @"";
}

+(void)removeObjectForKey:(NSString *)key {
    if ([StringUtils isEmpty:key]) {
        return;
    }
    [[NSUserDefaults standardUserDefaults]removeObjectForKey:key];
}


@end
