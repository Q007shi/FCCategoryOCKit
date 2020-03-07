//
//  UIImage+FCGradientImage.h
//  FCCategoryOCKit
//
//  Created by 石富才 on 2020/3/7.
//


#import <UIKit/UIKit.h>
#import "FCGradientModel.h"

@interface UIImage (FCGradientImage)

/**
 根据指定内容生成图片
 @param imageSize 图片大小
 @param gradientModel 图片颜色
 @param contentAttri 文本内容
 @param cornerRadius 图片圆角
 */
+ (UIImage *)fc_gradientImageWithImageSize:(CGSize)imageSize gradientModel:(FCGradientModel *)gradientModel contentAttri:(NSAttributedString *)contentAttri cornerRadius:(CGFloat)cornerRadius;

@end

