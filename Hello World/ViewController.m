//
//  ViewController.m
//  Hello World
//
//  Created by Zack on 4/5/17.
//  Copyright © 2017 Zack. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 100, 280, 50)];
    UIButton *button =[UIButton buttonWithType:UIButtonTypeSystem];
    button.frame=CGRectMake(0, 0, 200, 50);
    button.backgroundColor=[UIColor redColor];
    [button setTitle:@"click" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(changeColor) forControlEvents:UIControlEventTouchUpInside];
    label.text=@"hello";
    label.numberOfLines=10;
    [self.view addSubview:label];
    [self.view addSubview:button];
    
    
}

-(void) changeColor{
    self.view.backgroundColor = [UIColor colorWithRed:arc4random()%255/255.0 green:arc4random()%255/255.0 blue:arc4random()%255/255.0 alpha:1];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
