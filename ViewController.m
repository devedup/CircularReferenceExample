//
//  ViewController.m
//  ExampleCircularReference
//
//  Created by David Casserly on 22/10/2015.
//  Copyright © 2015 DevedUpLtd. All rights reserved.
//

#import "ViewController.h"
#import "MyObject.h"

@interface ViewController ()
@property (nonatomic, strong) MyObject *myObject;
@end

@implementation ViewController

- (void) dealloc {
    NSLog(@"View controller is being dealloced");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.myObject = [MyObject.alloc init];
    
    // THIS CODE WILL CAUSE RETAIN CYCLE
    [self.myObject registerBlockForFuture:^{
        [self runThisInFuture];
    }];
    
    // THIS CODE WILL NOT CAUSE RETAIN CYCLE
//    __weak typeof(self) weakSelf = self;
//    [self.myObject registerBlockForFuture:^{
//        [weakSelf runThisInFuture];
//    }];
}

- (void) runThisInFuture {
    NSLog(@"This is being run in future");
}

- (IBAction) buttonWasTapped:(id)sender {
    ViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
