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
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)boton:(id)sender {
    _counter = [NSNumber numberWithInt:( [_counter intValue] + 1 )];
    
    if( [_counter isEqualToNumber:_maxTouch] ) {
        // Gana
        // reproduce sonido gano
        
    }
    else if ( [_counter intValue] > [_maxTouch intValue]) {
        //pierde
        // reproduce sonido perdio
    }
    
    NSLog(@"%d", [_counter intValue]);
    
}
@end
