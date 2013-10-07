//
//  BDKSlideController.m
//  BDKSlider
//
//  Created by Ben Kreeger on 10/6/13.
//  Copyright (c) 2013 Ben Kreeger. All rights reserved.
//

#import "BDKSlideController.h"

@interface BDKSlideController () <UIScrollViewDelegate>

@property (strong, nonatomic) UIView *centerView;
@property (strong, nonatomic) UIScrollView *centerScrollView;
@property (strong, nonatomic) UIView *leftView;
@property (strong, nonatomic) UIScrollView *leftScrollView;
@property (strong, nonatomic) UIView *rightView;
@property (strong, nonatomic) UIScrollView *rightScrollView;

@end

@implementation BDKSlideController

#pragma mark - Lifecycle

+ (instancetype)slideControllerWithCenterVC:(UIViewController *)centerVC {
    return [self slideControllerWithCenterVC:centerVC leftVC:nil rightVC:nil];
}

+ (instancetype)slideControllerWithCenterVC:(UIViewController *)centerVC leftVC:(UIViewController *)leftVC {
    return [self slideControllerWithCenterVC:centerVC leftVC:leftVC rightVC:nil];
}

+ (instancetype)slideControllerWithCenterVC:(UIViewController *)centerVC rightVC:(UIViewController *)rightVC {
    return [self slideControllerWithCenterVC:centerVC leftVC:nil rightVC:rightVC];
}

+ (instancetype)slideControllerWithCenterVC:(UIViewController *)centerVC
                                     leftVC:(UIViewController *)leftVC
                                    rightVC:(UIViewController *)rightVC {
    return [[self alloc] initWithCenterVC:centerVC leftVC:leftVC rightVC:rightVC];
}

- (instancetype)init {
    return [self initWithCenterVC:nil leftVC:nil rightVC:nil];
}

- (instancetype)initWithCenterVC:(UIViewController *)centerVC {
    return [self initWithCenterVC:centerVC leftVC:nil rightVC:nil];
}

- (instancetype)initWithCenterVC:(UIViewController *)centerVC leftVC:(UIViewController *)leftVC {
    return [self initWithCenterVC:centerVC leftVC:leftVC rightVC:nil];
}

- (instancetype)initWithCenterVC:(UIViewController *)centerVC rightVC:(UIViewController *)rightVC {
    return [self initWithCenterVC:centerVC leftVC:nil rightVC:rightVC];
}

- (instancetype)initWithCenterVC:(UIViewController *)centerVC
                          leftVC:(UIViewController *)leftVC
                         rightVC:(UIViewController *)rightVC {
    self = [super init];
    if (!self) return nil;
    _centerVC = centerVC;
    _leftVC = leftVC;
    _rightVC = rightVC;
    return self;
}

- (void)loadView {
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

@end
