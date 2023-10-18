//
//  FirstViewController.m
//  childbase
//
//  Created by liht29 on 2023/10/5.
//  Copyright © 2023年 liht29. All rights reserved.
//

#import "FirstViewController.h"
#import "utils/RandomObjectFactory.h"
#import "model/CCLevel.h"

@interface FirstViewController ()

@property (nonatomic, strong) UIProgressView *progressBar;
@property (nonatomic, strong) CCLevel *levelModels;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.levelModels = [RandomObjectFactory buildLevel:1];
    CCTrial *trial = self.levelModels.trials[0];
    // Do any additional setup after loading the view, typically from a nib.
    UIImageView * background = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"background"]];
    [self.view addSubview:background];
    
    // Create the progress bar
    self.progressBar = [[UIProgressView alloc] initWithProgressViewStyle:UIProgressViewStyleDefault];
    self.progressBar.frame = CGRectMake(50, 100, 200, 20);
    [self.view addSubview:self.progressBar];
    
    // Update the progress
    [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(updateProgress) userInfo:nil repeats:YES];
    PlaygroundView * pv1 = [[PlaygroundView alloc] initWithFrame:CGRectMake(50, 200, 200, 200)];
    [self.view addSubview:pv1];
    pv1.backgroundColor = [UIColor whiteColor];
    [pv1 refreshWithKind:CCKindCandy Number:trial.leftNums];
    
    PlaygroundView * pv2 = [[PlaygroundView alloc] initWithFrame:CGRectMake(500, 200, 200, 200)];
    [self.view addSubview:pv2];
    pv2.backgroundColor = [UIColor whiteColor];
    [pv2 refreshWithKind:CCKindCandy Number:trial.rightNums];
    
}

- (void)updateProgress {
    static float progress = 0.0;
    progress += 0.1;
    
    if (progress >= 1.0) {
        progress = 0.0;
    }
    
    [self.progressBar setProgress:progress animated:YES];
}


@end
