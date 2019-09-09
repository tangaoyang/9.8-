//
//  TAY2TableViewCell.m
//  9.8考核
//
//  Created by cinderella on 2019/9/8.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import "TAY2TableViewCell.h"

@implementation TAY2TableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    _showLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_showLabel];
    
    _showImageView1 = [[UIImageView alloc] init];
    [self.contentView addSubview:_showImageView1];
    
    _showImageView2 = [[UIImageView alloc] init];
    [self.contentView addSubview:_showImageView2];
    
    _showImageView3 = [[UIImageView alloc] init];
    [self.contentView addSubview:_showImageView3];
    
    return self;
    
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    _showLabel.frame = CGRectMake(5, 5, [UIScreen mainScreen].bounds.size.width - 10, 50);
    _showLabel.font = [UIFont systemFontOfSize:20];
    _showLabel.textColor = [UIColor blackColor];
    
    _showImageView1.frame = CGRectMake(5, 60, 132, 150);
    
    _showImageView2.frame = CGRectMake(140, 60, 132, 150);
    
    _showImageView3.frame = CGRectMake(275, 60, 132, 150);
    
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
