//
//  ViewController.m
//  01-富文本
//
//  Created by 胡忠诚 on 15/12/7.
//  Copyright © 2015年 biyu6. All rights reserved.
//

#import "ViewController.h"
#import "NSAttributedString+Emoji.h"

@interface ViewController ()
@property(weak, nonatomic) IBOutlet UILabel *myLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  //文本 字符串   图片
  //文字和表情在一起显示
  NSString *str =
      @"心情很好, s012s014 202见心情很好,要回家了! s012s014 "
      @"202见心情很好,要s014回家了! s012s014 202见心情很好,要回s014家了! "
      @"s012s014 202见心情很s014好,要s014回家了! s012 "
      @"202见心情s014很好,要回家了! s012s014 202见心情很好,要回家了! s012s014 "
      @"202见心情s014很好,要回家了! s012s014 202见心情很好,要回家了! s012s014 "
      @"202见";
  self.myLabel.attributedText = [NSAttributedString
      emojiStringWithString:[[NSMutableAttributedString alloc]
                                initWithString:str]];
  self.myLabel.font = [UIFont boldSystemFontOfSize:23];
}

@end
