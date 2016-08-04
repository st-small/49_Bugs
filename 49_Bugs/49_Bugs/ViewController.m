//
//  ViewController.m
//  49_Bugs
//
//  Created by Stanly Shiyanovskiy on 02.08.16.
//  Copyright © 2016 Stanly Shiyanovskiy. All rights reserved.
//

#import "ViewController.h"
#import "SiSTestViewController.h"

@interface ViewController () <UIPopoverControllerDelegate>

@property (strong, nonatomic) UIPopoverController* popover;

@property (assign, nonatomic) id shmelegate;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //[[NSArray arrayWithObjects:@"a", @"b", nil] objectAtIndex:5];
    
    //[self performSelector:@selector(abc)];
}

#pragma mark - Actions

- (IBAction)actionTest:(UIButton*)sender {
    
    SiSTestViewController* vc = [[SiSTestViewController alloc] init];
    
    UIPopoverController* popover = [[UIPopoverController alloc] initWithContentViewController:vc];
    [popover setPopoverContentSize:CGSizeMake(300, 400)];
    popover.delegate = self;
    
    [popover presentPopoverFromRect:sender.bounds
                             inView:sender
           permittedArrowDirections:UIPopoverArrowDirectionAny
                           animated:YES];
    
//    vc.block = ^{
//        
//        [vc testMethod];
//    };
    
    self.popover = popover;
    
    self.shmelegate = popover;
}

#pragma mark - UIPopoverControllerDelegate

- (void) popoverControllerDidDismissPopover:(UIPopoverController *)popoverController {
    
    self.popover = nil;
    
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [self.shmelegate dismissPopoverAnimated:YES];
//    });
}

@end
