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
    
    
    FCPerson person = {@"张三",100};
    FCPerson p = person;
    NSLog(@"%@",p.name);
    person.name = @"123";
    p.name = @"1234";
    NSLog(@"%@",p.name);
    
    
    NSLog(@"-----------");
    NSLog(@"------%@-----",@"\n 0000 ".fc_whitespaceAndNewlineCharacter);
    NSLog(@"-----------");
    
//    UITextView *textF = [[UITextView alloc]initWithFrame:CGRectMake(100, 100, 200, 40)];
//    textF.backgroundColor = UIColor.lightGrayColor;
//    textF.fc_maxLength = 10;
//    [self.view addSubview:textF];
//
//    textF.attributedText = fc_attri(@"9999", UIColor.redColor, 20);
    
    UIImageView *im = [[UIImageView alloc]initWithFrame:CGRectMake(100, 100, 300, 300)];
    im.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:im];
    im.backgroundColor = UIColor.lightGrayColor;
    
    UIImage *img1 = [UIColor.orangeColor fc_imageWithOpaque:YES size:CGSizeMake(10, 10)];
    UIImage *img2 = [UIColor.blueColor fc_imageWithOpaque:YES size:CGSizeMake(20, 20)];
    UIImage *img3 = [UIColor.redColor fc_imageWithOpaque:YES size:CGSizeMake(30, 30)];
    UIImage *img4 = [UIColor.blackColor fc_imageWithOpaque:YES size:CGSizeMake(10, 10)];
    im.image =  [UIImage fc_joinImages:@[img1,img2,img3,img4] joinType:FCImageJoinTypeHorizontal lineSpace:10];
}

- (NSString *)description{
    return @"";
}

@end
