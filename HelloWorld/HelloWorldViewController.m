//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by Dong Yoon Park on 11/14/11.
//  Copyright (c) 2011 http://www.cre8ive.kr. All rights reserved.
//

#import "HelloWorldViewController.h"

@implementation HelloWorldViewController
@synthesize label_hello;
@synthesize button_iphone;
@synthesize button_ipad;
@synthesize button_ipod;
@synthesize image_bird;
@synthesize slider_alpha;

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        if (CGRectContainsPoint([image_bird frame], [touch locationInView:self.view])) {
            image_bird.center = [touch locationInView:self.view];
        }
    }
}

- (IBAction) button1Touched {
    self.label_hello.text = @"Hello iPhone!";
}
- (IBAction) button2Touched {
    self.label_hello.text = @"Hello iPad!";
}
- (IBAction) button3Touched {
    self.label_hello.text = @"Hello iPod!";
}

- (IBAction) sliderChanged {
	image_bird.alpha = slider_alpha.value;
}

- (void)dealloc {
    [label_hello release];
    [button_iphone release];
    [button_ipad release];
    [button_ipod release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad {
    [[UIAccelerometer sharedAccelerometer] setUpdateInterval:(1.0 / 30)];
    [[UIAccelerometer sharedAccelerometer] setDelegate:self];
}

- (void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration {
    NSLog(@"UIAccelerometer = (%f,%f,%f)", acceleration.x, acceleration.y, acceleration.z);
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
