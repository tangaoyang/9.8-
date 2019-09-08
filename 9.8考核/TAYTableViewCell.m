
//
//  TAYTableViewCell.m
//  9.8考核
//
//  Created by cinderella on 2019/9/8.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import "TAYTableViewCell.h"

@implementation TAYTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    NSLog(@"1cell");
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    _showLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_showLabel];
    
    _showImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_showImageView];
    
    return self;
    
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    _showLabel.frame = CGRectMake(5, 5, [UIScreen mainScreen].bounds.size.width - 10, 50);
    _showLabel.font = [UIFont systemFontOfSize:20];
    _showLabel.textColor = [UIColor blackColor];
    
    _showImageView.frame = CGRectMake(5, 60, [UIScreen mainScreen].bounds.size.width - 10, 150);
    
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
