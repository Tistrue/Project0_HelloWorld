//
//  HelloWorldViewController.h
//  HelloWorld
//
//  Created by Dong Yoon Park on 11/14/11.
//  Copyright (c) 2011 http://www.cre8ive.kr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloWorldViewController : UIViewController <UIAccelerometerDelegate>
{
    IBOutlet UILabel  *label_hello;
    IBOutlet UIButton *button_iphone;
    IBOutlet UIButton *button_ipad;
    IBOutlet UIButton *button_ipod;
    IBOutlet UIImageView *image_bird;
    IBOutlet UISlider *slider_alpha;
}
- (IBAction) button1Touched;
- (IBAction) button2Touched;
- (IBAction) button3Touched;
- (IBAction) sliderChanged;
- (void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *) acceleration;


@property (nonatomic, retain) IBOutlet UILabel  *label_hello;
@property (nonatomic, retain) IBOutlet UIButton *button_iphone;
@property (nonatomic, retain) IBOutlet UIButton *button_ipad;
@property (nonatomic, retain) IBOutlet UIButton *button_ipod;
@property (nonatomic, retain) IBOutlet UIImageView *image_bird;
@property (nonatomic, retain) IBOutlet UISlider *slider_alpha;
@end
