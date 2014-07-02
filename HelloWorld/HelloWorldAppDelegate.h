//
//  HelloWorldAppDelegate.h
//  HelloWorld
//
//  Created by Dong Yoon Park on 11/14/11.
//  Copyright (c) 2011 http://www.cre8ive.kr. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HelloWorldViewController;

@interface HelloWorldAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) HelloWorldViewController *viewController;

@end
