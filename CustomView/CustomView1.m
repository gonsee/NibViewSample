//
//  CustomView1.m
//  CustomView
//
//  Created by gonsee on 2014/03/17.
//  Copyright (c) 2014 Simple Beep. All rights reserved.
//

#import "CustomView1.h"

@implementation CustomView1

- (id)initWithFrame:(CGRect)frame
{
    self = [[self class] view];
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        
    }
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    // Some initialization tasks
    self.label.text = NSStringFromClass([self class]);
}

+ (instancetype)view
{
    NSString *className = NSStringFromClass([self class]);
    return [[[NSBundle mainBundle] loadNibNamed:className owner:nil options:0] firstObject];
}

- (IBAction)buttonTapped:(id)sender {
    NSLog(@"tapped.");
}

@end
