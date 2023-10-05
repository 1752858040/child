//
//  FirstViewController.m
//  childbase
//
//  Created by liht29 on 2023/10/5.
//  Copyright © 2023年 liht29. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImageView * background = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"background"]];
    [self.view addSubview:background];
    
}


@end
