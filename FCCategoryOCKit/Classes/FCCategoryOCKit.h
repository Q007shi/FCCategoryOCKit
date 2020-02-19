//
//  FCCategoryOCKit.h
//  FCCategoryOCKit
//
//  Created by 石富才 on 2020/2/16.
//

#ifndef FCCategoryOCKit_h
#define FCCategoryOCKit_h

//---
#define fc_attriAttachment(attachment) [NSAttributedString attributedStringWithAttachment:attachment]
#define fc_mAttriAttachment(attachment) [NSMutableAttributedString alloc]initWithAttributedString:[NSAttributedString attributedStringWithAttachment:attachment];
//---
#define fc_attri(str, color, fontSize) [[NSAttributedString alloc]initWithString:str attributes:@{NSForegroundColorAttributeName : color,NSFontAttributeName : [UIFont systemFontOfSize:fontSize]}]
#define fc_attriBold(str, color, fontSize) [[NSAttributedString alloc]initWithString:str attributes:@{NSForegroundColorAttributeName : color,NSFontAttributeName : [UIFont boldSystemFontOfSize:fontSize]}]
#define fc_attriUnderLine(str, color, fontSize) [[NSAttributedString alloc]initWithString:str attributes:@{NSForegroundColorAttributeName : color,NSFontAttributeName : [UIFont systemFontOfSize:fontSize],NSUnderlineStyleAttributeName : @1}]
#define fc_attriStrikethrough(str, color, fontSize) [[NSAttributedString alloc]initWithString:str attributes:@{NSForegroundColorAttributeName : color,NSFontAttributeName : [UIFont systemFontOfSize:fontSize],NSStrikethroughStyleAttributeName : @1}]

//---
#define fc_mAttri(str, color, fontSize) [[NSMutableAttributedString alloc]initWithString:str attributes:@{NSForegroundColorAttributeName : color,NSFontAttributeName : [UIFont systemFontOfSize:fontSize]}]
#define fc_mAttriUnderLine(str, color, fontSize) [[NSMutableAttributedString alloc]initWithString:str attributes:@{NSForegroundColorAttributeName : color,NSFontAttributeName : [UIFont systemFontOfSize:fontSize],NSUnderlineStyleAttributeName : @1}]

#define fc_mAttriStrikethrough(str, color, fontSize) [[NSMutableAttributedString alloc]initWithString:str attributes:@{NSForegroundColorAttributeName : color,NSFontAttributeName : [UIFont systemFontOfSize:fontSize],NSStrikethroughStyleAttributeName : @1}]

//------
#define fc_mAttriBold(str, color, fontSize) [[NSMutableAttributedString alloc]initWithString:str attributes:@{NSForegroundColorAttributeName : color,NSFontAttributeName : [UIFont boldSystemFontOfSize:fontSize]}]

#define fc_mAttriBoldUnderLine(str, color, fontSize) [[NSMutableAttributedString alloc]initWithString:str attributes:@{NSForegroundColorAttributeName : color,NSFontAttributeName : [UIFont boldSystemFontOfSize:fontSize],NSUnderlineStyleAttributeName : @1}]

#define fc_mAttriBoldStrikethrough(str, color, fontSize) [[NSMutableAttributedString alloc]initWithString:str attributes:@{NSForegroundColorAttributeName : color,NSFontAttributeName : [UIFont boldSystemFontOfSize:fontSize],NSStrikethroughStyleAttributeName : @1}]


#import "NSObject+FCCategory.h"
#import "FCStringCategoryHeader.h"
#import "UIView+FrameCategory.h"
#import "UIButton+FCCategory.h"
#import "UIColor+TransformCategory.h"

#endif /* FCCategoryOCKit_h */
