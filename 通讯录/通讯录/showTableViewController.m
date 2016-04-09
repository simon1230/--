//
//  showTableViewController.m
//  通讯录
//
//  Created by 黄宏伟 on 16/4/8.
//  Copyright © 2016年 黄宏伟. All rights reserved.
//

#import "showTableViewController.h"

@interface showTableViewController ()<UIActionSheetDelegate>

@end

@implementation showTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
  
    UIBarButtonItem *button1=[[UIBarButtonItem alloc]initWithTitle:@"注销" style:0 target:self action:@selector(buttonPressed1)];
    self.navigationItem.leftBarButtonItem=button1;
    UIBarButtonItem  *buttonAdd=[[UIBarButtonItem alloc]initWithTitle:@"添加" style:0 target:self action:@selector(buttonPressed2)];
    self.navigationItem.rightBarButtonItem=buttonAdd;
    
//    self.navigationItem.title=@"联系人列表";
    self.navigationItem.title=[NSString stringWithFormat:@"%@联系人列表",self.ppp];
    
}

//点击注销后的反应
-(void)buttonPressed1
{
    UIActionSheet *sheet=[[UIActionSheet alloc]initWithTitle:@"是否注销" delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:@"注销" otherButtonTitles:nil , nil];
    [sheet showInView:self.view];
}
#pragma mark-协议方法
-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
   
    if (buttonIndex==0) {
       
        [self dismissViewControllerAnimated:YES completion:nil];

    }
   
}
-(void)buttonPressed2
{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
