//
//  OCFileView.h
//  CallOC
//
//  Created by Yan on 16/12/11.
//  Copyright © 2016年 YY. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol OCFileViewDelegate <NSObject>

- (void)shareToQQ;
- (void)shareToWX;
- (void)shareToSina;

@end

@interface OCFileView : UIView

- (instancetype)initWithFrame:(CGRect)frame;

@property(nonatomic,weak) id <OCFileViewDelegate> delegate;

@end
