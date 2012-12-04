//
//  Created by Rene Dohan on 10/26/12.
//


#import "CSNavigationController.h"
#import "UINavigationController+Extension.h"


@implementation CSNavigationController

- (UIViewController *)popViewControllerAnimated:(BOOL)animated {
		_popped = self.last;
		return [super popViewControllerAnimated:animated];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
		_popped = nil;
		[super pushViewController:viewController animated:animated];
}

- (void)pushRootViewController:(UIViewController *)newRoot {
		_popped = nil;
		[super pushRootViewController:newRoot];
}

- (NSArray *)popToRootViewControllerAnimated:(BOOL)animated {
		return [super popToRootViewControllerAnimated:animated];
}

- (NSArray *)popToViewController:(UIViewController *)viewController animated:(BOOL)animated {
		_popped = viewController;
		return [super popToViewController:viewController animated:animated];
}

@end