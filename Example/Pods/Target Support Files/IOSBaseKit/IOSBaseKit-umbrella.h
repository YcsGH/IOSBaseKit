#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "NSArray+safety.h"
#import "FileAssistant.h"
#import "SharedPreference.h"
#import "IOSBaseKit.h"
#import "BaseException.h"
#import "EncryptUtils.h"
#import "MathUtils.h"
#import "RegexUtils.h"
#import "StringUtils.h"
#import "UIViewFactory.h"

FOUNDATION_EXPORT double IOSBaseKitVersionNumber;
FOUNDATION_EXPORT const unsigned char IOSBaseKitVersionString[];

