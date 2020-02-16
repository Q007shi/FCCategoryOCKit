//
//  FCViewController.m
//  FCCategoryOCKit
//
//  Created by 2585299617@qq.com on 01/28/2020.
//  Copyright (c) 2020 2585299617@qq.com. All rights reserved.
//

#import "FCViewController.h"
#import <FCCategoryOCKit/FCStringCategoryHeader.h>

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
    
    
    FCPerson person = {@"张三",100};
    FCPerson p = person;
    NSLog(@"%@",p.name);
    person.name = @"123";
    p.name = @"1234";
    NSLog(@"%@",p.name);
}

- (NSString *)description{
    return @"";
}

@end
