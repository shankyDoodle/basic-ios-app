//
//  ViewController.m
//  basic-ios-app
//
//  Created by Shashank Kaldate on 1/29/19.
//  Copyright © 2019 Shashank Kaldate. All rights reserved.
//

#import "ViewController.h"
#import <Lottie/Lottie.h>
#import <UIKit/UIKit.h>
#import <MaterialButtons.h>

@interface ViewController ()

@end

@implementation ViewController

LOTAnimationView *animation;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MDCButton *button = [[MDCButton alloc] init];
    [button setTitle:@"Start Course Journey" forState:UIControlStateNormal];
    [button setFrame:CGRectMake(100, 450, 210, 48)];
    [button addTarget:self action:@selector(didTapStart:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)didTapStart:(UIButton *)sender {
    sender.hidden = YES;
    
    animation = [LOTAnimationView animationNamed:@"funky-chicken.json"];
    animation.loopAnimation = true;
    [animation setFrame:CGRectMake(15, 300, 400, 400)];
    [self.view addSubview:animation];
    [animation playWithCompletion:^(BOOL animationFinished) {
        
    }];
    
    MDCButton *walkButton = [[MDCButton alloc] init];
    [walkButton setTitle:@"Walk" forState:UIControlStateNormal];
    [walkButton setFrame:CGRectMake(70, 750, 100, 48)];
    [walkButton addTarget:self action:@selector(didTapWalk:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:walkButton];
    
    MDCButton *runButton = [[MDCButton alloc] init];
    [runButton setTitle:@"Run" forState:UIControlStateNormal];
    [runButton setFrame:CGRectMake(250, 750, 100, 48)];
    [runButton addTarget:self action:@selector(didTapRun:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:runButton];
    
}

- (void)didTapRun:(id)sender {
    [animation setAnimationSpeed:3];
}

- (void)didTapWalk:(id)sender {
    [animation setAnimationSpeed:1];
}
@end
