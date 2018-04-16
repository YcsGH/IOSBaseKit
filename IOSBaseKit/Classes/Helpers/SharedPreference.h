//
//  SharedPreference.h
//  Pods
//
//  Created by yangcs on 2018/4/16.
//
//

#import <Foundation/Foundation.h>

@interface SharedPreference : NSObject

///及时保存对象在UserDefaults中
+(void)saveObject:(id)object forKey:(NSString *)key;
///从UserDefauts中获取对象
+(id)getObjectForKey:(NSString *)key;
///从UserDefauts中获取一个字符串
+(NSString*)stringForKey:(NSString *)key;

@end
