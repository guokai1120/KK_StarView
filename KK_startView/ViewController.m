//
//  ViewController.m
//  KK_startView
//
//  Created by Kaka on 2017/3/13.
//  Copyright © 2017年 Kaka. All rights reserved.
//

#import "ViewController.h"
#import "KK_StarView.h"

@interface ViewController ()<DQStarViewDelegate>

@property (nonatomic, strong) UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    KK_StarView *starView = [[KK_StarView alloc]init];
    starView.frame = CGRectMake(50, 150, 200, 40);
    //WithDQStarFrme:CGRectMake(50, 150, 200, 40) starTotal:10];
    starView.starTotalCount = 5;
    starView.delegate = self;
    //    starView.DefaultStarImageStr = @"star_nor";
    //    starView.starSpace = 0;
    [self.view addSubview:starView];
    starView.ShowStyle = DQStarShowStyleSingleHalfClick;
    [starView ShowDQStarScoreFunction:0.5];
    
    self.label = [UILabel new];
    self.label.font = [UIFont systemFontOfSize:16];
    self.label.textColor = [UIColor blackColor];
    self.label.frame = CGRectMake(self.view.frame.size.width-120, 150, 100, 30);
    self.label.text = [NSString stringWithFormat:@"评分:1"];
    [self.view addSubview:self.label];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)starScoreChangFunction:(UIView *)view andScore:(CGFloat)score{
    
    self.label.text = [NSString stringWithFormat:@"评分:%.1lf",score];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
