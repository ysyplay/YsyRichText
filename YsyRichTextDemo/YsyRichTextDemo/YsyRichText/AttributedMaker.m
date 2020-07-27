//
//  AttributedMaker.m
//  AttributedDemo
//
//  Created by LH on 7/25/20.
//  Copyright © 2020 ysy. All rights reserved.
//
#import "AttributedMaker.h"

@interface AttributedMaker()
@property (nonatomic, strong) NSMutableArray<NSString *> *stringArr;
@property (nonatomic, strong) NSMutableArray<NSMutableAttributedString *> *attributedStringArr;

@property (nonatomic, assign) float           pLineSpacing;
@property (nonatomic, assign) NSLineBreakMode pLineBreakMode;
@property (nonatomic, assign) NSTextAlignment pAlignment;

@end

//工具类
@implementation AttributedMaker

- (instancetype)init {
    self = [super init];
    if (self) {
        _stringArr = [[NSMutableArray alloc] initWithCapacity:0];
        _attributedStringArr = [[NSMutableArray alloc] initWithCapacity:0];
    }
    return self;
}
- (AttributedMaker *(^)(UIFont *value))font {
    __weak typeof (self) weakSelf = self;
    return ^(UIFont *value )
    {
        NSString *string = weakSelf.stringArr.lastObject;
        NSMutableAttributedString *attributedString = weakSelf.attributedStringArr.lastObject;
        [attributedString addAttribute:NSFontAttributeName
                                 value:value
                                 range:NSMakeRange(0, string.length)];
        return weakSelf;
    };
}
- (AttributedMaker *(^)(UIColor *value))foregroundColor {
    __weak typeof (self) weakSelf = self;
    return ^(UIColor *value )
    {
        NSString *string = weakSelf.stringArr.lastObject;
        NSMutableAttributedString *attributedString = weakSelf.attributedStringArr.lastObject;
        [attributedString addAttribute: NSForegroundColorAttributeName
                                 value:value
                                 range:NSMakeRange(0, string.length)];
        return weakSelf;
    };
}
- (AttributedMaker *(^)(UIColor *value))backgroundColor {
    __weak typeof (self) weakSelf = self;
    return ^(UIColor *value )
    {
        NSString *string = weakSelf.stringArr.lastObject;
        NSMutableAttributedString *attributedString = weakSelf.attributedStringArr.lastObject;
        [attributedString addAttribute: NSBackgroundColorAttributeName
                                 value:value
                                 range:NSMakeRange(0, string.length)];
        return weakSelf;
    };
}
- (AttributedMaker *(^)(NSInteger value))strikethroughStyle {
    __weak typeof (self) weakSelf = self;
    return ^(NSInteger value )
    {
        NSString *string = weakSelf.stringArr.lastObject;
        NSMutableAttributedString *attributedString = weakSelf.attributedStringArr.lastObject;
        [attributedString addAttribute: NSStrikethroughStyleAttributeName
                                 value:@(value)
                                 range:NSMakeRange(0, string.length)];
        return weakSelf;
    };
}
- (AttributedMaker *(^)(NSInteger value))baselineOffset {
    __weak typeof (self) weakSelf = self;
    return ^(NSInteger value )
    {
        NSString *string = weakSelf.stringArr.lastObject;
        NSMutableAttributedString *attributedString = weakSelf.attributedStringArr.lastObject;
        [attributedString addAttribute: NSBaselineOffsetAttributeName
                                 value:@(value)
                                 range:NSMakeRange(0, string.length)];
        return weakSelf;
    };
}
- (AttributedMaker *(^)(UIColor *value))strikethroughColor {
    __weak typeof (self) weakSelf = self;
    return ^(UIColor *value )
    {
        NSString *string = weakSelf.stringArr.lastObject;
        NSMutableAttributedString *attributedString = weakSelf.attributedStringArr.lastObject;
        [attributedString addAttribute: NSStrikethroughColorAttributeName
                                 value:value
                                 range:NSMakeRange(0, string.length)];
        return weakSelf;
    };
}
- (AttributedMaker *(^)(NSInteger value))underlineStyle {
    __weak typeof (self) weakSelf = self;
    return ^(NSInteger value )
    {
        NSString *string = weakSelf.stringArr.lastObject;
        NSMutableAttributedString *attributedString = weakSelf.attributedStringArr.lastObject;
        [attributedString addAttribute: NSUnderlineStyleAttributeName
                                 value:@(value)
                                 range:NSMakeRange(0, string.length)];
        return weakSelf;
    };
}
- (AttributedMaker *(^)(UIColor *value))underlineColor {
    __weak typeof (self) weakSelf = self;
    return ^(UIColor *value)
    {
        NSString *string = weakSelf.stringArr.lastObject;
        NSMutableAttributedString *attributedString = weakSelf.attributedStringArr.lastObject;
        [attributedString addAttribute: NSUnderlineColorAttributeName
                                 value:value
                                 range:NSMakeRange(0, string.length)];
        return weakSelf;
    };
}
- (AttributedMaker *(^)(UIColor *value))strokeColor {
    __weak typeof (self) weakSelf = self;
    return ^(UIColor *value)
    {
        NSString *string = weakSelf.stringArr.lastObject;
        NSMutableAttributedString *attributedString = weakSelf.attributedStringArr.lastObject;
        [attributedString addAttribute: NSStrokeColorAttributeName
                                 value:value
                                 range:NSMakeRange(0, string.length)];
        return weakSelf;
    };
}
- (AttributedMaker *(^)(float value))strokeWidth {
    __weak typeof (self) weakSelf = self;
    return ^(float value)
    {
        NSString *string = weakSelf.stringArr.lastObject;
        NSMutableAttributedString *attributedString = weakSelf.attributedStringArr.lastObject;
        [attributedString addAttribute: NSStrokeWidthAttributeName
                                 value:@(value)
                                 range:NSMakeRange(0, string.length)];
        return weakSelf;
    };
}
- (AttributedMaker *(^)(NSShadow *value))shadow {
    __weak typeof (self) weakSelf = self;
    return ^(NSShadow *value)
    {
        NSString *string = weakSelf.stringArr.lastObject;
        NSMutableAttributedString *attributedString = weakSelf.attributedStringArr.lastObject;
        [attributedString addAttribute: NSShadowAttributeName
                                 value:value
                                 range:NSMakeRange(0, string.length)];
        return weakSelf;
    };
}
- (AttributedMaker *(^)(float value))obliqueness {
    __weak typeof (self) weakSelf = self;
    return ^(float value)
    {
        NSString *string = weakSelf.stringArr.lastObject;
        NSMutableAttributedString *attributedString = weakSelf.attributedStringArr.lastObject;
        [attributedString addAttribute: NSObliquenessAttributeName
                                 value:@(value)
                                 range:NSMakeRange(0, string.length)];
        return weakSelf;
    };
}
- (AttributedMaker *(^)(NSString *value))link {
    __weak typeof (self) weakSelf = self;
    return ^(NSString *value)
    {
        NSString *string = weakSelf.stringArr.lastObject;
        NSMutableAttributedString *attributedString = weakSelf.attributedStringArr.lastObject;
        [attributedString addAttribute: NSLinkAttributeName
                                 value:[NSURL URLWithString:value]
                                 range:NSMakeRange(0, string.length)];
        return weakSelf;
    };
}
- (AttributedMaker *(^)(UIImage *image,CGRect bounds,NSInteger index))insertImage {
    __weak typeof (self) weakSelf = self;
    return ^(UIImage *image,CGRect bounds,NSInteger index)
    {
        NSTextAttachment *textAttachment = [[NSTextAttachment alloc] init];
        textAttachment.image = image;  //设置图片源
        textAttachment.bounds = bounds;          //设置图片位置和大小
        NSAttributedString *coreText2 = [NSAttributedString attributedStringWithAttachment: textAttachment];
 
        NSMutableAttributedString *attributedString = weakSelf.attributedStringArr.lastObject;
        [attributedString insertAttributedString:coreText2 atIndex:index];
        return weakSelf;
    };
}







- (AttributedMaker *(^)(float value))kern {
    __weak typeof (self) weakSelf = self;
    return ^(float value)
    {
        NSString *string = weakSelf.stringArr.lastObject;
        NSMutableAttributedString *attributedString = weakSelf.attributedStringArr.lastObject;
        [attributedString addAttribute: NSKernAttributeName
                                 value:@(value)
                                 range:NSMakeRange(0, string.length)];
        return weakSelf;
    };
}
- (AttributedMaker *(^)(float value))lineSpacing {
    __weak typeof (self) weakSelf = self;
    return ^(float value)
    {
        NSString *string = weakSelf.stringArr.lastObject;
        NSMutableAttributedString *attributedString = weakSelf.attributedStringArr.lastObject;
        NSMutableParagraphStyle *style = [NSMutableParagraphStyle new];
        style.lineSpacing = value;
        weakSelf.pLineSpacing = value;
        if (weakSelf.pLineBreakMode) {
            style.lineBreakMode = weakSelf.pLineBreakMode;
        }
        if (weakSelf.pAlignment) {
            style.alignment = weakSelf.pAlignment;
        }
        [attributedString addAttribute: NSParagraphStyleAttributeName
                                 value:style
                                 range:NSMakeRange(0, string.length)];
        return weakSelf;
    };
}
- (AttributedMaker *(^)(NSTextAlignment value))textAlignment {
    __weak typeof (self) weakSelf = self;
    return ^(NSTextAlignment value)
    {
        NSString *string = weakSelf.stringArr.lastObject;
        NSMutableAttributedString *attributedString = weakSelf.attributedStringArr.lastObject;
        NSMutableParagraphStyle *style = [NSMutableParagraphStyle new];
        style.alignment = value;
        weakSelf.pAlignment = value;
        if (weakSelf.pLineSpacing) {
            style.lineSpacing = weakSelf.pLineSpacing;
        }
        if (weakSelf.pLineBreakMode) {
            style.lineBreakMode = weakSelf.pLineBreakMode;
        }
        [attributedString addAttribute: NSParagraphStyleAttributeName
                                 value:style
                                 range:NSMakeRange(0, string.length)];
        return weakSelf;
    };
}
- (AttributedMaker *(^)(NSLineBreakMode value))lineBreakMode {
    __weak typeof (self) weakSelf = self;
    return ^(NSLineBreakMode value)
    {
        NSString *string = weakSelf.stringArr.lastObject;
        NSMutableAttributedString *attributedString = weakSelf.attributedStringArr.lastObject;
        NSMutableParagraphStyle *style = [NSMutableParagraphStyle new];
        style.lineBreakMode = value;
        weakSelf.pLineBreakMode = value;
        if (weakSelf.pLineSpacing) {
            style.lineSpacing = weakSelf.pLineSpacing;
        }
        if (weakSelf.pAlignment) {
            style.alignment = weakSelf.pAlignment;
        }
        [attributedString addAttribute: NSParagraphStyleAttributeName
                                 value:style
                                 range:NSMakeRange(0, string.length)];
        return weakSelf;
    };
}




















- (AttributedMaker *(^)(NSString *string))append {
    __weak typeof (self) weakSelf = self;
    return ^(NSString *string)
    {
        [weakSelf.stringArr addObject:string];
        [weakSelf.attributedStringArr addObject:[[NSMutableAttributedString alloc] initWithString:string]];
        return weakSelf;
    };
}
- (AttributedMaker *)merge{
    __block  NSString *string = @"";
    [self.stringArr enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        string = [string stringByAppendingString:obj];
    }];
    [self.stringArr removeAllObjects];
    [self.stringArr addObject:string];
    
    NSMutableAttributedString *attributedString = \
    [[NSMutableAttributedString alloc] init];
    [self.attributedStringArr enumerateObjectsUsingBlock:^(NSMutableAttributedString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [attributedString appendAttributedString:obj];
    }];
    [self.attributedStringArr removeAllObjects];
    [self.attributedStringArr addObject:attributedString];
    return self;
}
@end

