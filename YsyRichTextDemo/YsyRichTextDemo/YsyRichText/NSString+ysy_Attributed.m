//
//  NSString+ysy_Attributed.m
//  AttributedDemo
//
//  Created by LH on 7/25/20.
//  Copyright © 2020 ysy. All rights reserved.
//

#import "NSString+ysy_Attributed.h"
#import "AttributedMaker.h"
@implementation NSString (ysy_Attributed)
- (NSMutableAttributedString *)ysy_Attributed:(void(^)(AttributedMaker *make))attributed{
    AttributedMaker *make = [[AttributedMaker alloc]init];
    [make.stringArr addObject:self];
    [make.attributedStringArr addObject:[[NSMutableAttributedString alloc] initWithString:self]];
    attributed(make);
    NSMutableAttributedString *attributedString = \
    [[NSMutableAttributedString alloc] init];
    [make.attributedStringArr enumerateObjectsUsingBlock:^(NSMutableAttributedString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [attributedString appendAttributedString:obj];
    }];
    return attributedString;;
}
@end

