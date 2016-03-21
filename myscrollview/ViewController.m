//
//  ViewController.m
//  myscrollview
//
//  Created by William Lam on 2016-03-21.
//  Copyright © 2016 William Lam. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()<UIScrollViewDelegate>

@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIImageView *image;
@property (nonatomic, strong) MyScrollView *rootView;

@end

@implementation ViewController


- (void)viewDidLoad {
	[super viewDidLoad];
	
//	self.view0 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height-200)];
//	self.view0.backgroundColor = [UIColor purpleColor];
//	
//	[self.view addSubview:self.view0];
	
	
	self.rootView = [[MyScrollView alloc] initWithFrame:self.view.frame];
	
	[self.view addSubview:self.rootView];

	[self setupOtherViews];

}

- (void) viewDidAppear:(BOOL)animated {
	self.rootView.bounds = CGRectMake(0, 100, self.view.bounds.size.width, self.view.bounds.size.height);
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


- (void) setupOtherViews {


	UIView *red = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 150, 200)];
	red.backgroundColor = [UIColor redColor];
	[self.rootView addSubview:red];
	
	UIView *green = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
	green.backgroundColor = [UIColor greenColor];
	[self.rootView addSubview:green];
	
	UIView *blue = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
	blue.backgroundColor = [UIColor blueColor];
	[self.rootView addSubview:blue];
	
	UIView *yellow = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
	yellow.backgroundColor = [UIColor yellowColor];
	[self.rootView addSubview:yellow];
}






@end
