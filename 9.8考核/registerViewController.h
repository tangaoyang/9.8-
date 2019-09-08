//
//  registerViewController.h
//  9.8考核
//
//  Created by cinderella on 2019/9/8.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol registerDelegate <NSObject>

- (void)passName:(NSString *)name passPass:(NSString *)pass;

@end

@interface registerViewController : UIViewController

@property (nonatomic, strong) UITextField *nameTextField;
@property (nonatomic, strong) UITextField *passTextField;
@property id <registerDelegate> registerdelegate;

@end

NS_ASSUME_NONNULL_END
