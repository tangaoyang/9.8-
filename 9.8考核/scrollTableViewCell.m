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
    [_nowBtn addTarget:self action:@selector(pressNow) forControlEvents:UIControlEventTouchDown];
    [_nowBtn setTitle:@"正在热映" forState:UIControlStateNormal];
    _nowBtn.tintColor = [UIColor blackColor];
    _nowBtn.titleLabel.font = [UIFont systemFontOfSize:20];
    
    _scroll.frame = CGRectMake(20, 480, [UIScreen mainScreen].bounds.size.width, 250);
    _scroll.contentSize = CGSizeMake([UIScreen mainScreen].bounds.size.width * 2, 250);
    _scroll.scrollEnabled = YES;
    _scroll.showsHorizontalScrollIndicator = YES;
    
    
    _afterBtn.frame = CGRectMake(100, 10, 85, 30);
    [_afterBtn addTarget:self action:@selector(pressAfter) forControlEvents:UIControlEventTouchDown];
    [_afterBtn setTitle:@"即将上映" forState:UIControlStateNormal];
    _afterBtn.tintColor = [UIColor blackColor];
    _afterBtn.titleLabel.font = [UIFont systemFontOfSize:20];
    
}

- (void)pressNow {
    
}

- (void)pressAfter {
    
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
