//
//  scrollTableViewCell.m
//  9.8考核
//
//  Created by cinderella on 2019/9/8.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import "scrollTableViewCell.h"

@implementation scrollTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    NSLog(@"scrollcell");
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    _nowBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.contentView addSubview:_nowBtn];
    
    _afterBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.contentView addSubview:_afterBtn];
    
    _scroll = [[UIScrollView alloc] init];
    [self.contentView addSubview:_scroll];
    
    return self;
}

- (void)layoutSubviews {
    
    _nowBtn.frame = CGRectMake(10, 10, 85, 30);
    _nowBtn.titleLabel.font = [UIFont systemFontOfSize:20];
    [_nowBtn setTitle:@"正在热映" forState:UIControlStateNormal];
    _nowBtn.tintColor = [UIColor blackColor];
    [_nowBtn addTarget:self action:@selector(pressNow) forControlEvents:UIControlEventTouchDown];
    
    _scroll.frame = CGRectMake(10, 40, [UIScreen mainScreen].bounds.size.width, 200);
    _scroll.contentSize = CGSizeMake([UIScreen mainScreen].bounds.size.width * 2, 200);
    _scroll.scrollEnabled = YES;
    _scroll.showsHorizontalScrollIndicator = YES;
    _imageArr = [[NSMutableArray alloc] init];
    _nowBtn.tintColor = [UIColor blackColor];
    _afterBtn.tintColor = [UIColor grayColor];
    if (_scroll.subviews) {
        [_scroll.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
        NSLog(@"removeNow");
    }
    for (int i = 0; i < 8; i++) {
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"t%d.png", i + 1]]];
        imageView.frame = CGRectMake(5 + i * [UIScreen mainScreen].bounds.size.width / 4, 5, [UIScreen mainScreen].bounds.size.width / 4 - 2, 180);
        [_imageArr addObject:imageView];
        [_scroll addSubview:_imageArr[i]];
    }
    
    _afterBtn.frame = CGRectMake(100, 10, 85, 30);
    _afterBtn.titleLabel.font = [UIFont systemFontOfSize:20];
    [_afterBtn setTitle:@"即将上映" forState:UIControlStateNormal];
    _afterBtn.tintColor = [UIColor grayColor];
    [_afterBtn addTarget:self action:@selector(pressAfter) forControlEvents:UIControlEventTouchDown];
    
}

- (void)pressNow {
    
    NSLog(@"now");
    _imageArr = [[NSMutableArray alloc] init];
    _nowBtn.tintColor = [UIColor blackColor];
    _afterBtn.tintColor = [UIColor grayColor];
    if (_scroll.subviews) {
        [_scroll.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
        NSLog(@"removeNow");
    }
    for (int i = 0; i < 8; i++) {
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"t%d.png", i + 1]]];
        imageView.frame = CGRectMake(5 + i * [UIScreen mainScreen].bounds.size.width / 4, 5, [UIScreen mainScreen].bounds.size.width / 4 - 2, 180);
        [_imageArr addObject:imageView];
        [_scroll addSubview:_imageArr[i]];
    }
    
}

- (void)pressAfter {
    
    NSLog(@"after");
    _imageArr = [[NSMutableArray alloc] init];
    _afterBtn.tintColor = [UIColor blackColor];
    _nowBtn.tintColor = [UIColor grayColor];
    if (_scroll.subviews) {
        [_scroll.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
        NSLog(@"afterRe");
    }
    for (int i = 0; i < 8; i++) {
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"t%d.png", (i + 2) % 8 + 1]]];
        imageView.frame = CGRectMake(5 + i * [UIScreen mainScreen].bounds.size.width / 4, 5, [UIScreen mainScreen].bounds.size.width / 4 - 2, 180);
        [_imageArr addObject:imageView];
        [_scroll addSubview:_imageArr[i]];
    }
    
}




- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
