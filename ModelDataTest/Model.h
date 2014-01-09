//
//  Model.h
//  ModelDataTest
//
//  Created by SDT1 on 2014. 1. 9..
//  Copyright (c) 2014년 SDT1. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Model : NSObject

@property NSMutableArray *data;

- (void)addProduct:(id)product;
- (void)removeProductt:(int)index;

- (id)productAt:(int)productId;
- (int)numberOfProducts;

+ (Model *)sharedModel;

@end
