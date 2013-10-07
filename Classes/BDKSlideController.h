//
//  BDKSlideController.h
//  BDKSlider
//
//  Created by Ben Kreeger on 10/6/13.
//  Copyright (c) 2013 Ben Kreeger. All rights reserved.
//

@import UIKit;

@interface BDKSlideController : UIViewController

@property (strong, nonatomic) UIViewController *leftVC;

@property (strong, nonatomic) UIViewController *centerVC;

@property (strong, nonatomic) UIViewController *rightVC;

+ (instancetype)slideControllerWithCenterVC:(UIViewController *)centerVC;
+ (instancetype)slideControllerWithCenterVC:(UIViewController *)centerVC leftVC:(UIViewController *)leftVC;
+ (instancetype)slideControllerWithCenterVC:(UIViewController *)centerVC rightVC:(UIViewController *)rightVC;

/**
 Creates and returns an instance of this container view controller with a center, left, and right view controller.

 @discussion This is the designated initializer.
 
 @param centerVC The view controller to be placed in the center sliding view.
 @param leftVC The view controller to be placed in the left panel.
 @param rightVC The view controller to be placed in the right panel.
 @return An allocated and initialized instance of this class.
 */
+ (instancetype)slideControllerWithCenterVC:(UIViewController *)centerVC
                                     leftVC:(UIViewController *)leftVC
                                    rightVC:(UIViewController *)rightVC;

/**
 Returns an instance of this container view controller with only a center view controller.

 @param centerVC The view controller to be placed in the center sliding view.
 @return An initialized instance of this class.
 */
- (instancetype)initWithCenterVC:(UIViewController *)centerVC;

/**
 Returns an instance of this container view controller with a center and a left view controller.

 @param centerVC The view controller to be placed in the center sliding view.
 @param leftVC The view controller to be placed in the left panel.
 @return An initialized instance of this class.
 */
- (instancetype)initWithCenterVC:(UIViewController *)centerVC leftVC:(UIViewController *)leftVC;

/**
 Returns an instance of this container view controller with a center and a right view controller.

 @param centerVC The view controller to be placed in the center sliding view.
 @param rightVC The view controller to be placed in the right panel.
 @return An initialized instance of this class.
 */
- (instancetype)initWithCenterVC:(UIViewController *)centerVC rightVC:(UIViewController *)rightVC;

/**
 Returns an instance of this container view controller with a center, left, and right view controller.

 @param centerVC The view controller to be placed in the center sliding view.
 @param leftVC The view controller to be placed in the left panel.
 @param rightVC The view controller to be placed in the right panel.
 @return An initialized instance of this class.
 */
- (instancetype)initWithCenterVC:(UIViewController *)centerVC
                          leftVC:(UIViewController *)leftVC
                         rightVC:(UIViewController *)rightVC;

@end
