//
//  UIColor+TransformCategory.h
//  FCCategory
//
//  Created by Ganggang Xie on 2019/3/16.
//

#import <UIKit/UIKit.h>

struct RGBA{
    CGFloat R;//[0,1]
    CGFloat G;//[0,1]
    CGFloat B;//[0,1]
    CGFloat A;//[0,1]
};

typedef struct RGBA FC_RGBA;

@interface UIColor (TransformCategory)

#pragma mark - 属性
/** 获取当前颜色的透明度。为 nil  或 NSNull 返回  0 */
@property (nonatomic, assign, readonly) CGFloat fc_alpha;

/** 获取当前颜色的 RGBA 值。为 nil  或 NSNull 返回 {0,0,0,0}  */
@property (nonatomic, assign, readonly) FC_RGBA fc_rgba;
/**
 将当前颜色转换成 10X10 的可拉伸图片
10X10 的图片
 */
@property (nonatomic, strong, readonly) UIImage *fc_image;
/** 随机色 */
@property(nonatomic,strong, class, readonly)UIColor *fc_randomColor;

#pragma mark - 方法

/** 0xRRGGBB 转 Color */
+ (instancetype)fc_RGBValue:(UInt32)RGBValue;
/** 0xRRGGBBAA 转 Color */
+ (instancetype)fc_RGBAValue:(UInt32)RGBAValue;

/**
 * 字符串转颜色
 * 0xRGB 或 0xRGBA 或 0xRRGGBB 或 0xRRGGBBAA
 * #RGB 或 #RGBA 或 #RRGGBB 或 #RRGGBBAA
 * RGB 或 RGBA 或 RRGGBB 或 RRGGBBAA
 */
+ (instancetype)fc_hexValueString:(NSString *)hexValueString;

/**
 字符串转颜色
 
 @param hexValueString 0xRGB 或 0xRRGGBB 或 #RGB 或 #RRGGBB 或 RGB 或 RRGGBB
 @param alpha [0,1]
 @return UIColor
 */
+ (instancetype)fc_hexValueString:(NSString *)hexValueString alpha:(CGFloat)alpha;

/**
 fromColor 到 toColor 的渐变色
 
 @param fromColor 起始颜色
 @param toColor 结束颜色
 @param percent 百分比[0,1]
 @return 当前颜色
 */
+ (instancetype)fc_fromColor:(UIColor *)fromColor toColor:(UIColor *)toColor percent:(CGFloat)percent;
/**
 fromColor 到 toColor 的渐变色
 
 @param fromColor 起始颜色
 @param toColor 结束颜色
 @param percent 百分比[0,1]
 @param alpha 透明度
 @return 当前颜色
 */
+ (instancetype)fc_fromColor:(UIColor *)fromColor toColor:(UIColor *)toColor percent:(CGFloat)percent alpha:(CGFloat)alpha;

@end

