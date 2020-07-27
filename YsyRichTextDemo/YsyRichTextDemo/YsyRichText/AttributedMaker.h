//
//  AttributedMaker.h
//  AttributedDemo
//
//  Created by LH on 7/25/20.
//  Copyright © 2020 ysy. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
//工具类
@interface AttributedMaker : NSObject
@property (nonatomic, strong,readonly) NSMutableArray<NSString *> *stringArr;
@property (nonatomic, strong,readonly) NSMutableArray<NSMutableAttributedString *> *attributedStringArr;


///设置font
- (AttributedMaker *(^)(UIFont *value))font;
///设置斜体
- (AttributedMaker *(^)(float value))obliqueness;
///设置文字颜色
- (AttributedMaker *(^)(UIColor *value))foregroundColor;
///设置背景颜色
- (AttributedMaker *(^)(UIColor *value))backgroundColor;
///删除线高度
- (AttributedMaker *(^)(NSInteger value))strikethroughStyle;
///删除线颜色
- (AttributedMaker *(^)(UIColor *value))strikethroughColor;
///删除线基线偏移属性(有bug)
//- (AttributedMaker *(^)(NSInteger value))baselineOffset;
///下滑线粗度
- (AttributedMaker *(^)(NSInteger value))underlineStyle;
///下滑线颜色
- (AttributedMaker *(^)(UIColor *value))underlineColor;
///字体描边宽度
- (AttributedMaker *(^)(float value))strokeWidth;
///字体描边颜
- (AttributedMaker *(^)(UIColor *value))strokeColor;
///字体阴影
- (AttributedMaker *(^)(NSShadow *value))shadow;
///字间距
- (AttributedMaker *(^)(float value))kern;
///行间距
- (AttributedMaker *(^)(float value))lineSpacing;
///对齐方式
- (AttributedMaker *(^)(NSTextAlignment value))textAlignment;
///字符截断类型
- (AttributedMaker *(^)(NSLineBreakMode value))lineBreakMode;
///设置URL跳转 UITextView才有效，UILabel和UITextField里面无效
- (AttributedMaker *(^)(NSString *value))link;
///插入图片(图片，尺寸，位置)
- (AttributedMaker *(^)(UIImage *image,CGRect bounds,NSInteger index))insertImage;


///追加文字
- (AttributedMaker *(^)(NSString *string))append;
///合并（例如追加完文字以后，来个总设置）
- (AttributedMaker *)merge;
@end

