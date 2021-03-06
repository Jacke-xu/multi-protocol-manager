//
//  ButtonView.m
//  deleacVC
//
//  Created by 尚宇 on 2019/5/9.
//  Copyright © 2019 cython. All rights reserved.
//

#import "ButtonView.h"

@implementation ButtonView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, self.bounds.size.width/2, self.bounds.size.height)];
        btn.backgroundColor = [UIColor redColor];
        [btn addTarget:self action:@selector(delegateSelector) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:btn];
        
        UIButton *btn2 = [[UIButton alloc] initWithFrame:CGRectMake(self.bounds.size.width/2, 0, self.bounds.size.width/2, self.bounds.size.height)];
        btn2.backgroundColor = [UIColor blueColor];
        [self addSubview:btn2];
    }
    return self;
}

- (void)delegateSelector{
    if ([_delegate respondsToSelector:@selector(tapView:)]) {
        [_delegate tapView:self];
    }
    
    if ([_delegate respondsToSelector:@selector(printDescrtion)]) {
        [_delegate printDescrtion];
    }
    
}

@end
