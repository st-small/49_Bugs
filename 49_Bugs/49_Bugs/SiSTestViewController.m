//
//  SiSTestViewController.m
//  49_Bugs
//
//  Created by Stanly Shiyanovskiy on 03.08.16.
//  Copyright © 2016 Stanly Shiyanovskiy. All rights reserved.
//

#import "SiSTestViewController.h"

@interface SiSTestViewController ()

@end

@implementation SiSTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect r = self.view.bounds;
    r.origin = CGPointZero;
    
    UIImageView* imageView = [[UIImageView alloc] initWithFrame:r];
    imageView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    NSString* filePath = [[NSBundle mainBundle] pathForResource:@"image" ofType:@"png"];
    
    imageView.image = [UIImage imageWithContentsOfFile:filePath];
    
    [self.view addSubview:imageView];
    
    //[self testMethod];
    
    //CGMutablePathRef path = CGPathCreateMutable();
    //CGPathAddEllipseInRect(path, &CGAffineTransformIdentity, CGRectZero);
    //CGPathRelease(path);
    
    //__weak SiSTestViewController* weakSelf = self;
    
//    [[NSNotificationCenter defaultCenter] addObserverForName:@"TestNotification"
//                                                      object:nil
//                                                       queue:[NSOperationQueue mainQueue]
//                                                  usingBlock:^(NSNotification * note) {
//                                                      [self testMethod];
//                                                  }];
    
//    [self testMethod];
//    
//    [self testMethod];
//    
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        NSLog(@"a");
//    });
//    
//    NSLog(@"b");
}

- (void) testMethod {
    
    NSLog(@"testMethod");
}

- (void) dealloc {
    
    NSLog(@"SiSTestViewController deallocated");
}

@end
