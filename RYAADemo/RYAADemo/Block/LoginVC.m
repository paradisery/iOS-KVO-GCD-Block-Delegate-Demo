//
//  LoginVC.m
//  RYAADemo
//
//  Created by ruanyang on 2016/11/3.
//  Copyright © 2016年 mengtukeji. All rights reserved.
//

#import "LoginVC.h"
#import "block.h"
#import "sharedInstance.h"
@interface LoginVC ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UILabel *lable;
@property (weak, nonatomic) IBOutlet UITextField *tf;
@property (weak, nonatomic) IBOutlet UIButton *btn;

@end

@implementation LoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)btn:(id)sender {
    //用block传值
    if (self.block) {
        self.block(_tf.text);
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}
- (IBAction)shareBack:(id)sender {
    //单例
    sharedInstance * ry=[sharedInstance sharedInstance];
    ry.useName=_tf.text;
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)nsudBack:(id)sender {
    //nsud
    NSUserDefaults * nsud=[NSUserDefaults standardUserDefaults];
    [nsud setObject:_tf.text forKey:@"userName"];
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(void)textFieldDidEndEditing:(UITextField *)textField{
    
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
