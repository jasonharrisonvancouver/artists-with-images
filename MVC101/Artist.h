//
//  Artitst.h
//  MVC101
//
//  Created by jason harrison on 2019-01-14.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Artist : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) UIImage *image;
- (instancetype) initWithName:(NSString *)name
                     andImage:(UIImage *)image;
@end

NS_ASSUME_NONNULL_END
