//
//  MyScrollView.m
//  myscrollview
//
//  Created by William Lam on 2016-03-21.
//  Copyright © 2016 William Lam. All rights reserved.
//

#import "MyScrollView.h"
#import "ViewController.h"

@implementation MyScrollView

- (instancetype)initWithFrame:(CGRect)frame
{
	self = [super initWithFrame:frame];
	if (self) {
		UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panMethod:)];
		[self addGestureRecognizer:panGesture];
	}
	return self;
}

- (void) panMethod:(UIPanGestureRecognizer *)sender {
	CGPoint translate = [sender translationInView:self];
	NSLog(@"%f, %f", translate.x, translate.y);
	self.bounds = CGRectMake(self.bounds.origin.x+translate.x, self.bounds.origin.y+translate.y, self.bounds.size.width, self.bounds.size.height);
	
}

@end
