//
//  RegisterViewController.h
//  KaoHe
//
//  Created by 蒲悦蓉 on 2019/9/8.
//  Copyright © 2019 蒲悦蓉. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol RegisterViewControllerDelegate <NSObject>

- (void)pushName:(NSString*)nameStr password:(NSString*)psdStr;

@end

@interface RegisterViewController : UIViewController
@property id<RegisterViewControllerDelegate>delegate;
@end

NS_ASSUME_NONNULL_END
