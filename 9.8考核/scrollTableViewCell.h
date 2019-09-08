//
//  scrollTableViewCell.h
//  9.8考核
//
//  Created by cinderella on 2019/9/8.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface scrollTableViewCell : UITableViewCell

@property (nonatomic, strong) UIButton *nowBtn;
@property (nonatomic, strong) UIButton *afterBtn;
@property (nonatomic, strong) UIScrollView *scroll;

@end

NS_ASSUME_NONNULL_END
