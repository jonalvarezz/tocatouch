//
//  ViewController.m
//  TocaTouch
//
//  Created by Jonathan Alvarez Gonzalez on 4/18/15.
//  Copyright (c) 2015 Jonathan Alvarez Gonzalez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString * voiceURI = [[NSBundle mainBundle]pathForResource:@"inicio" ofType:@"m4a"];
    
    welcomeVoice = [[AVAudioPlayer alloc]initWithContentsOfURL:[NSURL fileURLWithPath:voiceURI]  error:NULL];
    
    welcomeVoice.delegate = self;
    
    welcomeVoice.numberOfLoops = 0;
    
    [welcomeVoice play];
    
}

- (void)viewDidDisappear:(BOOL)animated {
    [welcomeVoice stop];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
