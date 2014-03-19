//
//  ViewController.m
//  CustomView
//
//  Created by gonsee on 2014/03/17.
//  Copyright (c) 2014 Simple Beep. All rights reserved.
//

#import "ViewController.h"
#import "CustomView1.h"
#import "CustomView2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    CustomView1 *cv1 = [CustomView1 view];
    cv1.frame = CGRectMake(70.0f, 40.0f, cv1.frame.size.width, cv1.frame.size.height);
    [self.view addSubview:cv1];
    
    CustomView2 *cv2 = [[CustomView2 alloc] init];
    cv2.frame = CGRectMake(70.0f, CGRectGetMaxY(cv1.frame) + 10.0f,
                           cv2.frame.size.width, cv2.frame.size.height);
    [self.view addSubview:cv2];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
