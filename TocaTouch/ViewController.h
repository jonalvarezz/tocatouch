//
//  ViewController.h
//  TocaTouch
//
//  Created by Jonathan Alvarez Gonzalez on 4/18/15.
//  Copyright (c) 2015 Jonathan Alvarez Gonzalez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController <AVAudioPlayerDelegate> {
    
    AVAudioPlayer * welcomeVoice;
    
}


@end

