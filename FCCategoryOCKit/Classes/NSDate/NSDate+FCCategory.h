//
//  NSDate+FCCategory.h
//  FCCategoryOCKit
//
//  Created by 石富才 on 2020/3/4.
//

#import <Foundation/Foundation.h>

@interface NSDate (FCCategory)

/**
 将当前时间转换为指定格式的字符串
 */
- (NSString *)fc_stringWithFormat:(NSString *)Format;

@end
