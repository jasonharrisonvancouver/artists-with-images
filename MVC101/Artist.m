//
//  Artitst.m
//  MVC101
//
//  Created by jason harrison on 2019-01-14.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "Artist.h"

@implementation Artist

- (instancetype) initWithName:(NSString *)name
                     andImage:(UIImage *)image;
{
    self = [super init];
    if (self!=nil) {
        self.name = name;
        self.image = image;
    }
    return self;
}

@end
