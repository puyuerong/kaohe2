//
//  PYR1TableViewCell.m
//  KaoHe
//
//  Created by 蒲悦蓉 on 2019/9/8.
//  Copyright © 2019 蒲悦蓉. All rights reserved.
//

#import "PYR1TableViewCell.h"

@implementation PYR1TableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self.themeLabel = [[UILabel alloc] init];
    self.imageView1 = [[UIImageView alloc] init];
    self.imageView2 = [[UIImageView alloc] init];
    self.imageView3 = [[UIImageView alloc] init];
    self.fromLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_themeLabel];
    [self.contentView addSubview:_imageView1];
    [self.contentView addSubview:_imageView2];
    [self.contentView addSubview:_imageView3];
    [self.contentView addSubview:_fromLabel];
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    _themeLabel.frame = CGRectMake(0, 0, 375, 50);
    _themeLabel.font = [UIFont systemFontOfSize:30];
    _imageView1.frame = CGRectMake(10, 70, 110, 110);
    _imageView2.frame = CGRectMake(132, 70, 110, 110);
    _imageView3.frame = CGRectMake(254, 70, 110, 110);
    _fromLabel.frame = CGRectMake(0, 200, 375, 50);
    _fromLabel.font = [UIFont systemFontOfSize:20];
}
@end
