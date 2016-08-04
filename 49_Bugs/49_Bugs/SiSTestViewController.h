//
//  SiSTestViewController.h
//  49_Bugs
//
//  Created by Stanly Shiyanovskiy on 03.08.16.
//  Copyright © 2016 Stanly Shiyanovskiy. All rights reserved.
//

#import "ViewController.h"

typedef void (^TestBlock)(void);

@interface SiSTestViewController : UIViewController

@property (copy, nonatomic) TestBlock block;

- (void) testMethod;

@end
