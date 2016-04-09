//
//  LogViewController.m
//  通讯录
//
//  Created by 黄宏伟 on 16/4/7.
//  Copyright © 2016年 黄宏伟. All rights reserved.
//

#import "LogViewController.h"

#import "showTableViewController.h"
@interface LogViewController ()<UITextFieldDelegate>


@end

@implementation LogViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title=@"通讯录";
    [self showView];
    
    //给文本框设置监听器，及时监听文本框的改变   UIControlEventEditingChanged是监听器监听的事件
    [_text1 addTarget:self action:@selector(textChange) forControlEvents:UIControlEventEditingChanged];
    [_text2 addTarget:self action:@selector(textChange) forControlEvents:UIControlEventEditingChanged];
}
//任意一个文本框的内容的改变都会调用这个函数
-(void)textChange
{
    if (_text1.text.length&&_text2.text.length) {
        _button.enabled=YES;
    }else
    {
        _button.enabled=NO;
    }
    
}
-(void)showView
{
    _labal1=[[UILabel alloc]initWithFrame:CGRectMake(30, 80, 35, 30)];
    _labal1.text=@"账号";
    _labal1.textColor=[UIColor blackColor];
    [self.view addSubview:_labal1];

    
    _labal2=[[UILabel alloc]initWithFrame:CGRectMake(30, 120, 35, 30)];
    _labal2.text=@"密码";
    _labal2.textColor=[UIColor blackColor];
    [self.view addSubview:_labal2];
    
    
    _text1=[[UITextField alloc]initWithFrame:CGRectMake(80, 80, 200, 30)];
    _text1.borderStyle=UITextBorderStyleRoundedRect;   //有了输入框右边的删除号
    _text1.placeholder=@"请输入账号";
    _text1.clearButtonMode=UITextFieldViewModeWhileEditing;
    [self.view addSubview:_text1];
    
    
    _text2=[[UITextField alloc]initWithFrame:CGRectMake(80, 120, 200, 30)];
    _text2.borderStyle=UITextBorderStyleRoundedRect;
    _text2.placeholder=@"请输入密码";
    _text2.secureTextEntry=YES;
    _text2.clearButtonMode=UITextFieldViewModeWhileEditing;
    [self.view addSubview:_text2];
    
    
    _labal3=[[UILabel alloc]initWithFrame:CGRectMake(30, 200, 50, 30)];
    _labal3.text=@"记住密码";
    _labal3.font=[UIFont systemFontOfSize:12];
    [self.view addSubview:_labal3];
    
    _switch1=[[UISwitch alloc]initWithFrame:CGRectMake(80, 200, 35, 30)];
    [_switch1 addTarget:self action:@selector(rmbPwdChange) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_switch1];

    
    _labal4=[[UILabel alloc]initWithFrame:CGRectMake(150, 200, 50, 30)];
    _labal4.text=@"自动登录";
    _labal4.font=[UIFont systemFontOfSize:12];
    [self.view addSubview:_labal4];
    
    _switch2=[[UISwitch alloc]initWithFrame:CGRectMake(200, 200 , 35, 30)];
    [_switch2 addTarget:self action:@selector(autoLoginChange) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_switch2];
    
    _button =[[UIButton alloc]initWithFrame:CGRectMake(140, 260, 40, 30)];
    [_button setTitle:@"登录" forState:UIControlStateNormal];
    [_button setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [_button setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    _button.enabled=NO;
    [_button addTarget:self action:@selector(buttonPressed) forControlEvents:UIControlEventTouchUpInside];  //选错了事件
    [self.view addSubview:_button ];
  
}
//记住密码按钮
-(void)rmbPwdChange
{
    if (_switch1.on==NO) {//取消记住密码
        
        [_switch2 setOn:NO animated:YES]; //取消自动登录
    }
}
//自动登录密码
-(void)autoLoginChange
{
    if (_switch2.on==YES) { //取消自动登录
        
        [_switch1 setOn:YES animated:YES];   //取消记住密码
    }
}
-(void)buttonPressed

{
    //验证账号密码是否正确
    if ([_text1.text isEqualToString:@"hhw"]&&[_text2.text isEqualToString:@"123"] ) {
        if (_aaa==nil) {
//            self. showTableViewController=[[showTableViewController alloc]init];   //错误老是不断
            _aaa=[[showTableViewController alloc]init];
        }
        
        UINavigationController  *navi=[[UINavigationController alloc]initWithRootViewController:_aaa];
       self.aaa.ppp=_text1.text;
        [self presentViewController:navi animated:YES completion:nil];

    }else
    {
        //账号或者密码错误
        NSLog(@"请重新输入");
    }
    

    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
