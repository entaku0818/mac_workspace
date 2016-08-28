//
//  ViewController.m
//  UIImageView
//
//  Created by 遠藤拓弥 on 2016/08/22.
//  Copyright © 2016年 遠藤拓弥. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //画像を３つ用意し、配列に格納
    UIImage *img1 = [UIImage imageNamed:@"/Users/endo/mac_workspace/UIImageView/UIImageView/1468826749_Info.png"];
    UIImage *img2 = [UIImage imageNamed:@"/Users/endo/mac_workspace/UIImageView/UIImageView/1468826749_Info.png"];
    UIImage *img3 = [UIImage imageNamed:@"/Users/endo/mac_workspace/UIImageView/UIImageView/1468826749_Info.png"];
    NSArray *images = [NSArray arrayWithObjects:img1, img2, img3, nil];
    
    //アニメーションをセット
    UIImageView.animationImages = images;
    
    //1コマが切り替わる時間を１秒にセット
    UIImageView.animationDuration = 2.0;
    
    //リピート回数は無限
    UIImageView.animationRepeatCount = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Start:(id)sender {
    NSLog(@"Startが押されました");
    [UIImageView startAnimating];
}

- (IBAction)End:(id)sender {
    NSLog(@"Endが押されました");
    [UIImageView stopAnimating];
}
@end
