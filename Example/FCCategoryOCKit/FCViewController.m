//
//  FCViewController.m
//  FCCategoryOCKit
//
//  Created by 2585299617@qq.com on 01/28/2020.
//  Copyright (c) 2020 2585299617@qq.com. All rights reserved.
//

#import "FCViewController.h"
#import <FCCategoryOCKit/FCCategoryOCKit.h>
#import "FCTestModel.h"

typedef NS_ENUM(NSInteger,Weak){
    SunDay,
    MonDay,
};

struct Person{
    NSString *name;
    NSInteger age;
};
typedef struct Person FCPerson;

@interface FCViewController ()

@end

@implementation FCViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    //71bb1263090e5e2f60078902592d6879
    NSLog(@"%@",@"FCCategory".fc_md5);
    NSLog(@"%@",@"YYText".fc_md5);
    NSLog(@"%@",@"YYText".fc_toArray);
    NSLog(@"%@",getIPAddress(YES));
    
    UIImageView *iv = [[UIImageView alloc]initWithFrame:CGRectMake(100, 100, 200, 100)];
    iv.backgroundColor = UIColor.whiteColor;
    [self.view addSubview:iv];
    
    FCGradientModel *gradientM = [[FCGradientModel alloc]init:^(FCGradientModel *gm) {
        gm.startPoint = CGPointMake(0, 0.5);
        gm.endPoint = CGPointMake(1, 0.5);
        FCGradientContentModel *contentM1 = [[FCGradientContentModel alloc]init:^(FCGradientContentModel *cm) {
            cm.color = UIColor.redColor;
            cm.location = 0;
        }];
        [gm.gradientContents addObject:contentM1];
        FCGradientContentModel *contentM2 = [[FCGradientContentModel alloc]init:^(FCGradientContentModel *cm) {
            cm.color = UIColor.blueColor;
            cm.location = 1;
        }];
        [gm.gradientContents addObject:contentM2];
    }];
    
//    UIImage *image = [UIImage fc_gradientImageWithImageSize:CGSizeMake(100, 50) gradientModel:gradientM contentAttri:fc_attri(@"FFF", UIColor.whiteColor, 10) cornerRadius:10];
//    iv.image = image;
    
//    UIImage *image = [UIImage fc_gradientImageWithImageSize:CGSizeMake(100, 50) gradientModel:gradientM contentAttri:fc_attri(@"FFF", UIColor.whiteColor, 10) corners:UIRectCornerTopLeft | UIRectCornerBottomLeft  cornerRadius:CGSizeMake(10, 20)];
    UIImage *image = [UIImage fc_gradientImageWithImageSize:CGSizeMake(100, 50) gradientModel:gradientM contentAttri:fc_attri(@"FFF", UIColor.whiteColor, 10) corners:UIRectCornerTopLeft | UIRectCornerBottomLeft  cornerRadius:CGSizeMake(10, 20) opaque:YES];
    iv.image = image;
    

    
}

- (NSString *)description{
    return @"";
}

@end
