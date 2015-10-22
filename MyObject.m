//
//  MyObject.m
//  ExampleCircularReference
//
//  Created by David Casserly on 22/10/2015.
//  Copyright © 2015 DevedUpLtd. All rights reserved.
//

#import "MyObject.h"

@interface MyObject ()
@property (nonatomic, copy) dispatch_block_t codeToRunInFuture;
@end

@implementation MyObject

- (void) registerBlockForFuture:(dispatch_block_t)block {
    self.codeToRunInFuture = block;
}

@end
