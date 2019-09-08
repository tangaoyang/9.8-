//
//  upTableViewCell.m
//  9.8考核
//
//  Created by cinderella on 2019/9/8.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import "upTableViewCell.h"

@implementation upTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    NSLog(@"upcell");
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    _textField = [[UITextField alloc] init];
    [self.contentView addSubview:_textField];
    
    _frameImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_frameImageView];
    
    _headImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_headImageView];
    
    return self;
    
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    _textField.frame = CGRectMake(100, 3, 260, 50);
    _textField.placeholder = @"找影院，影人，演出，图书";
    _textField.layer.masksToBounds = YES;
    _textField.layer.borderWidth = 2;
    _textField.layer.cornerRadius = 5;
    _textField.layer.borderColor = [UIColor blackColor].CGColor;
    
    _frameImageView.frame = CGRectMake(0, 3, 100, 50);
    
    _headImageView.frame = CGRectMake(0, 43, [UIScreen mainScreen].bounds.size.width, 270);
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
