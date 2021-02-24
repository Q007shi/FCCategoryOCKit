//
//  FCTextView.m
//  FCCategoryOCKit_Example
//
//  Created by yjy on 2021/2/24.
//  Copyright © 2021 2585299617@qq.com. All rights reserved.
//

#import "FCTextView.h"

@implementation FCTextView

+ (Class)layerClass{
    return CALayer.class;
}

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
    }
    return self;
}
- (instancetype)initWithCoder:(NSCoder *)coder{
    if (self = [super initWithCoder:coder]) {
    }
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
}


@end
