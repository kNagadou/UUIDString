//
//  ViewController.m
//  UUIDString
//
//  Created by k_nagadou on 2016/09/07.
//  Copyright © 2016年 dreamarts.co.jp. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *uideviceLabel;
@property (weak, nonatomic) IBOutlet UILabel *nsuuidLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUUID];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)setUUID {
    // 何回呼び出しても変わらない
    self.uideviceLabel.text = [[UIDevice currentDevice].identifierForVendor UUIDString];
    // 呼び出す毎に変わる
    self.nsuuidLabel.text = [[NSUUID UUID] UUIDString];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onButton:(UIButton *)sender {
    [self setUUID];
}

@end
