//
//  UIImage+FCGradientImage.m
//  FCCategoryOCKit
//
//  Created by 石富才 on 2020/3/7.
//

#import "UIImage+FCGradientImage.h"

@implementation UIImage (FCGradientImage)

/**
 根据指定内容生成图片
 @param imageSize 图片大小
 @param gradientModel 图片颜色
 @param contentAttri 文本内容
 @param cornerRadius 图片圆角
 */
+ (UIImage *)fc_gradientImageWithImageSize:(CGSize)imageSize gradientModel:(FCGradientModel *)gradientModel contentAttri:(NSAttributedString *)contentAttri cornerRadius:(CGFloat)cornerRadius{
    
    CAGradientLayer *layer = CAGradientLayer.layer;
    layer.frame = CGRectMake(0, 0, imageSize.width, imageSize.height);
    layer.contentsScale = UIScreen.mainScreen.scale;
    layer.cornerRadius = cornerRadius;
    layer.masksToBounds = YES;
    layer.backgroundColor = UIColor.clearColor.CGColor;
    
    if (gradientModel && gradientModel.gradientContents.count > 0) {
        NSMutableArray<id> *colors = NSMutableArray.array;
        NSMutableArray<NSNumber *> *locations = NSMutableArray.array;
        layer.startPoint = gradientModel.startPoint;
        layer.endPoint = gradientModel.endPoint;
        for (FCGradientContentModel *gradientContentM in gradientModel.gradientContents) {
            [colors addObject:(id)gradientContentM.color.CGColor];
            [locations addObject:@(gradientContentM.location)];
        }
        layer.colors = colors;
        layer.locations = locations;
    }
    
    
    //
    CGFloat contentH= contentAttri.size.height + 0.5;
    CGFloat h = imageSize.height <= contentH ? imageSize.height : (imageSize.height - contentH) * 0.5;
    CATextLayer *textLayer = CATextLayer.layer;
    textLayer.frame = CGRectMake(0, h, imageSize.width, imageSize.height - h);
    textLayer.contentsScale = UIScreen.mainScreen.scale;
    [layer addSublayer:textLayer];
    textLayer.string = contentAttri;
    textLayer.truncationMode = kCATruncationEnd;
    textLayer.alignmentMode = kCAAlignmentCenter;
    
    
    UIGraphicsBeginImageContextWithOptions(imageSize, NO, UIScreen.mainScreen.scale);;
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    [layer renderInContext:context];
    
    UIImage *layerImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return layerImage;
}

@end



