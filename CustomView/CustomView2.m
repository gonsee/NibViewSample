//
//  CustomView2.m
//  CustomView
//
//  Created by gonsee on 2014/03/18.
//  Copyright (c) 2014 Simple Beep. All rights reserved.
//

#import "CustomView2.h"

@implementation CustomView2

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self p_commonInit];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self p_commonInit];
    }
    return self;
}

- (void)p_commonInit
{
    NSString *className = NSStringFromClass([self class]);
    [[NSBundle mainBundle] loadNibNamed:className owner:self options:0];
    
    // Adjust size of self to fit the content view.
    self.frame = ({
        CGRect frame = self.frame;
        frame.size = self.contentView.frame.size;
        frame;
    });
    [self addSubview:self.contentView];
    
    self.label.text = className;
}

- (IBAction)buttonTapped:(id)sender
{
    NSLog(@"tapped.");
}

@end
