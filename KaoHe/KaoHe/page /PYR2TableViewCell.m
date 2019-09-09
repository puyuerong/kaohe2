//
//  PYR2TableViewCell.m
//  KaoHe
//
//  Created by 蒲悦蓉 on 2019/9/8.
//  Copyright © 2019 蒲悦蓉. All rights reserved.
//

#import "PYR2TableViewCell.h"

@implementation PYR2TableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self.themeLabel = [[UILabel alloc] init];
    self.imageView0 = [[UIImageView alloc] init];
    self.fromLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_themeLabel];
    [self.contentView addSubview:_imageView0];
    [self.contentView addSubview:_fromLabel];
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    _themeLabel.frame = CGRectMake(0, 0, 375, 50);
    _themeLabel.font = [UIFont systemFontOfSize:30];
    _imageView0.frame = CGRectMake(30, 70, 315, 130);
    _fromLabel.frame = CGRectMake(0, 210, 375, 40);
    _fromLabel.font = [UIFont systemFontOfSize:20];
}

@end
