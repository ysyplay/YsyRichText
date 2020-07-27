//
//  ViewController.m
//  YsyRichTextDemo
//
//  Created by LH on 7/27/20.
//  Copyright © 2020 ysyplay. All rights reserved.
//

#import "ViewController.h"
#import "YsyRichText.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITextView *textView = [UITextView new];
    [self.view addSubview:textView];
    textView.frame = CGRectMake(100, 100, 200, 100);
    textView.backgroundColor = [UIColor orangeColor];
    textView.attributedText = [@"富文本：" ysy_Attributed:^(AttributedMaker *make) {
        make.font([UIFont systemFontOfSize:12]).foregroundColor([UIColor blueColor]).obliqueness(0.5);
        make.append(@"追加文字追加文字追加文字追加文字").font([UIFont systemFontOfSize:17]).foregroundColor([UIColor redColor]);
        make.merge.backgroundColor([UIColor yellowColor]);
        make.strikethroughStyle(1).strikethroughColor([UIColor whiteColor]).lineSpacing(15).textAlignment(NSTextAlignmentLeft);
        make.underlineStyle(2).underlineColor([UIColor blueColor]);
        make.insertImage([UIImage imageNamed:@"10.jpg"],CGRectMake(0, -5, 20, 20),10);
    }];
 
}


@end
