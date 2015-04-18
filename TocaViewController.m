//
//  TocaViewController.m
//  TocaTouch
//
//  Created by Jonathan Alvarez Gonzalez on 4/18/15.
//  Copyright (c) 2015 Jonathan Alvarez Gonzalez. All rights reserved.
//

#import "TocaViewController.h"

@interface TocaViewController ()

@end

@implementation TocaViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _counter  = @0;
    _maxTouch = @2;
    
    // Inicialización media
    
    // Inicio toca
    NSString * resource = [[NSBundle mainBundle]pathForResource:@"toca" ofType:@"m4a"];
    
    voicePlayerInit = [[AVAudioPlayer alloc]initWithContentsOfURL:[NSURL fileURLWithPath:resource]  error:NULL];
    voicePlayerInit.delegate = self;
    voicePlayerInit.numberOfLoops = 0;
    
    // Ganador
    resource = [[NSBundle mainBundle]pathForResource:@"gana" ofType:@"m4a"];
    voicePlayerWin = [[AVAudioPlayer alloc]initWithContentsOfURL:[NSURL fileURLWithPath:resource]  error:NULL];
    voicePlayerWin.delegate = self;
    voicePlayerWin.numberOfLoops = 0;
    
    // Perdedor
    resource = [[NSBundle mainBundle]pathForResource:@"falla" ofType:@"m4a"];
    voicePlayerFail = [[AVAudioPlayer alloc]initWithContentsOfURL:[NSURL fileURLWithPath:resource]  error:NULL];
    voicePlayerFail.delegate = self;
    voicePlayerFail.numberOfLoops = 0;
    
    
    [voicePlayerInit play];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)boton:(id)sender {
    _counter = [NSNumber numberWithInt:( [_counter intValue] + 1 )];
    
    [voicePlayerInit stop];
    [voicePlayerWin stop];
    [voicePlayerFail stop];
    
    if( [_counter isEqualToNumber:_maxTouch] ) {
        // Gana
        [voicePlayerWin play];
        
    }
    else if ( [_counter intValue] > [_maxTouch intValue]) {
        //pierde
        [voicePlayerFail play];
    }
    
    NSLog(@"%d", [_counter intValue]);
    
}
@end
