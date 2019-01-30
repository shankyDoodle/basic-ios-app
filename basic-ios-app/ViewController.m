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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    MDCButton *button = [[MDCButton alloc] init];
    [button setTitle:@"Start Course Journey" forState:UIControlStateNormal];
    [button setFrame:CGRectMake(100, 500, 210, 48)];
    [button addTarget:self action:@selector(didTapStart:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)didTapStart:(id)sender {
    LOTAnimationView *animation = [LOTAnimationView animationNamed:@"funky-chicken.json"];
    animation.loopAnimation = true;
    [animation setFrame:CGRectMake(15, 390, 400, 400)];
    [self.view addSubview:animation];
    [animation playWithCompletion:^(BOOL animationFinished) {
        // Do Something
    }];
}
@end
