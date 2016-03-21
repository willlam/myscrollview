//
//  MyScrollView.h
//  myscrollview
//
//  Created by William Lam on 2016-03-21.
//  Copyright © 2016 William Lam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyScrollView : UIView

@property (nonatomic) CGSize contentSize;
@property (nonatomic, strong) UIPanGestureRecognizer *panGesture;


@end
