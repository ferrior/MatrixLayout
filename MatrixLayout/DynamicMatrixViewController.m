//
//  DynamicMatrixViewController.m
//  MatrixLayout
//
//  Created by bliu on 1/29/16.
//  Copyright © 2016 bliu. All rights reserved.
//

#import "DynamicMatrixViewController.h"

@interface DynamicMatrixViewController ()

@end

@implementation DynamicMatrixViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	int column = 5;
	int row = 9;
	CGFloat rowMutiplier = (CGFloat)2/(row + 1);
	CGFloat columnMutiplier = (CGFloat)2/(column + 1);
	
	for (int i = 0; i < row; i++) {
		for (int j = 0; j < column; j++) {
			//create button
			//add button
			//layout button
			UIButton* button = [[UIButton alloc] init];
			[button sizeToFit];
			[self.view addSubview:button];
			button.backgroundColor = [UIColor greenColor];

			button.translatesAutoresizingMaskIntoConstraints = NO;
			//constrasting
			//button.conterY = super.centerY * rowMutiplier*(i+1)
			NSLayoutConstraint *constraintsY = [NSLayoutConstraint
									constraintWithItem:button
									attribute:NSLayoutAttributeCenterY
									relatedBy:NSLayoutRelationEqual
									toItem:self.view
									attribute:NSLayoutAttributeCenterY
									multiplier:rowMutiplier*(i+1)
									constant:0];
			[self.view addConstraint:constraintsY];
			
			//button.conterX = super.centerX * columnMutiplier*(j+1)
			NSLayoutConstraint *constraintsX = [NSLayoutConstraint
									constraintWithItem:button
									attribute:NSLayoutAttributeCenterX
									relatedBy:NSLayoutRelationEqual
									toItem:self.view
									attribute:NSLayoutAttributeCenterX
									multiplier:columnMutiplier*(j+1)
									constant:0];
			[self.view addConstraint:constraintsX];
	
			
		}
	}
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
