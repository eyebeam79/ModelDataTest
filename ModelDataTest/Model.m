//
//  Model.m
//  ModelDataTest
//
//  Created by SDT1 on 2014. 1. 9..
//  Copyright (c) 2014년 SDT1. All rights reserved.
//

#import "Model.h"

@implementation Model

static Model *instance;

+ (Model *)sharedModel
{
    if (instance == nil)
    {
        instance = [[Model alloc] init];
    }
    
    return instance;
}

- (id)init
{
    self = [super init];
    if (self)
    {
        self.data = [[NSMutableArray alloc] initWithObjects:@"iPhone", @"iPod", @"MacBook Air", @"MackBook Pro", @"MacBook Pro Retina", @"iMac", @"MacPro", nil];
    }
    
    return self;
}

- (void)addProduct:(id)product
{
    [self.data addObject:product];
}

- (void)removeProductt:(int)index
{
    [self.data removeObjectAtIndex:index];
}

- (id)productAt:(int)productId
{
    return [self.data objectAtIndex:productId];
}

- (int)numberOfProducts
{
    return [self.data count];
}



@end
