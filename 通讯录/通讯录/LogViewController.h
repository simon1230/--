//
//  LogViewController.h
//  通讯录
//
//  Created by 黄宏伟 on 16/4/7.
//  Copyright © 2016年 黄宏伟. All rights reserved.
//

#import <UIKit/UIKit.h>
@class showTableViewController;
@interface LogViewController : UIViewController
@property(strong ,nonatomic)UILabel *labal1;
@property(strong ,nonatomic)UILabel *labal2;
@property(strong ,nonatomic)UITextField  *text1;
@property(strong ,nonatomic)UITextField *text2;
@property(strong ,nonatomic)UILabel *labal3;
@property(strong ,nonatomic)UILabel *labal4;
@property(strong ,nonatomic)UISwitch *switch1;
@property(strong,nonatomic)UISwitch *switch2;
@property(strong ,nonatomic)UIButton *button;


@property(strong ,nonatomic)showTableViewController  *aaa;
@end
