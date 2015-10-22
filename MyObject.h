//
//  MyObject.h
//  ExampleCircularReference
//
//  Created by David Casserly on 22/10/2015.
//  Copyright © 2015 DevedUpLtd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyObject : NSObject

- (void) registerBlockForFuture:(dispatch_block_t)block;

@end
