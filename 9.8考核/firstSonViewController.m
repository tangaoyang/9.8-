//
//  firstSonViewController.m
//  9.8考核
//
//  Created by cinderella on 2019/9/8.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import "firstSonViewController.h"
#import "upTableViewCell.h"
#import "scrollTableViewCell.h"
#import "TAYTableViewCell.h"
#import "TAY2TableViewCell.h"

@interface firstSonViewController ()

@end

@implementation firstSonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height - 100) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    [_tableView registerClass:[upTableViewCell class] forCellReuseIdentifier:@"up"];
    [_tableView registerClass:[scrollTableViewCell class] forCellReuseIdentifier:@"scroll"];
    [_tableView registerClass:[TAYTableViewCell class] forCellReuseIdentifier:@"111"];
    [_tableView registerClass:[TAY2TableViewCell class] forCellReuseIdentifier:@"222"];
    
    _showLabelArr = [[NSArray alloc] init];
    _showLabelArr = @[@"", @"", @"《我在未来等你》直面史上最大反差剧团", @"高燃！“最强联盟为国冲顶”", @"阑珊", @"哈哈哈哈哈哈哈", @"距离放假啊的家乐福看电视", @"飞机耳机不给你打开喝牛奶", @"粉色那款类似法律人士", @"防守反击饿哦", @"张内存卡拿快递", @"女是发发额你家"];

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 12;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        return 320;
    } else if (indexPath.row == 1) {
        return 250;
    } else {
        return 220;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    NSArray *imageArr = @[@"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @"", @""];
    
    if (indexPath.row == 0) {
        upTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"up" forIndexPath:indexPath];
        cell.headImageView.image = [UIImage imageNamed:@"head.png"];
        cell.frameImageView.image = [UIImage imageNamed:@"frame.png"];
        return cell;
    } else if (indexPath.row == 1) {
        scrollTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"scroll" forIndexPath:indexPath];
        for (int i = 0; i < 8; i++) {
            UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"t%d.png", i + 1]]];
            imageView.frame = CGRectMake(5 + i * [UIScreen mainScreen].bounds.size.width / 4, 5, [UIScreen mainScreen].bounds.size.width / 4 - 2, 180);
            [cell.imageArr addObject:imageView];
            [cell.scroll addSubview:cell.imageArr[i]];
        }
        
        return cell;
    } else {
        if (indexPath.row % 2) {
            TAYTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"111" forIndexPath:indexPath];
            cell.showLabel.text = _showLabelArr[indexPath.row];
            cell.showImageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%ld.jpg", (long)indexPath.row]];
            return cell;
        } else {
            TAY2TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"222" forIndexPath:indexPath];
            cell.showLabel.text = _showLabelArr[indexPath.row];
            cell.showImageView1.image = [UIImage imageNamed:[NSString stringWithFormat:@"%ld.jpg", (long)indexPath.row ]];
            cell.showLabel.text = _showLabelArr[indexPath.row];
            cell.showImageView2.image = [UIImage imageNamed:[NSString stringWithFormat:@"%ld.jpg", (long)indexPath.row + 5]];
            cell.showLabel.text = _showLabelArr[indexPath.row];
            cell.showImageView3.image = [UIImage imageNamed:[NSString stringWithFormat:@"%ld.jpg", (long)indexPath.row + 10]];
            return cell;
        }
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
