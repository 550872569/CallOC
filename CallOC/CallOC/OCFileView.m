//
//  OCFileView.m
//  CallOC
//
//  Created by Yan on 16/12/11.
//  Copyright © 2016年 YY. All rights reserved.
//

#import "OCFileView.h"

@implementation OCFileView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self initUIWithFrame:(CGRect)frame];
    }
    return self;
}


- (void)initUIWithFrame:(CGRect)frame {
    
    NSInteger num = 3;
    CGFloat x,y,w,h;
    w = frame.size.width / 3;
    h = frame.size.height / 3;
    for (NSInteger i = 0; i < num; i ++) {
        x = i * w;
        UIButton * button = [[UIButton alloc]initWithFrame:CGRectMake(x, y, w, h)];
        [button setTitle:[NSString stringWithFormat:@"ShareTo-%ld",i] forState:UIControlStateNormal];
        button.tag = i;
        button.tintColor = [UIColor whiteColor];
        button.titleLabel.font = [UIFont systemFontOfSize:17];
        if (button.tag == 0) {
            button.backgroundColor = [UIColor yellowColor];
        } else if (button.tag == 1) {
            button.backgroundColor = [UIColor greenColor];
        } else if (button.tag == 2) {
            button.backgroundColor = [UIColor redColor];
        }
        [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button];
    }
}

- (void)buttonAction:(UIButton *)sender {
   
    if (sender.tag == 0) {
//        if (self.delegate  && [self.delegate respondsToSelector:@selector(shareToQQ)]) {
//            [self.delegate shareToQQ];
//        }
        NSLog(@"0");
    } else if (sender.tag == 1) {
        NSLog(@"1");
//        if (self.delegate  && [self.delegate respondsToSelector:@selector(shareToWX)]) {
//            [self.delegate shareToWX];
//        }
    } else if (sender.tag == 2) {
        NSLog(@"2");
//        if (self.delegate  && [self.delegate respondsToSelector:@selector(shareToSina)]) {
//            [self.delegate shareToSina];
//        }
    }

}

@end
