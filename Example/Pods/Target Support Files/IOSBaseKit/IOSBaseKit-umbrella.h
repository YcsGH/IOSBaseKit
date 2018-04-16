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
#import "SharedPreference.h"
#import "IOSBaseKit.h"
#import "StringUtils.h"
#import "UIViewFactory.h"

FOUNDATION_EXPORT double IOSBaseKitVersionNumber;
FOUNDATION_EXPORT const unsigned char IOSBaseKitVersionString[];

