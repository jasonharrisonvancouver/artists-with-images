//
//  ArtistFactory.m
//  MVC101
//
//  Created by jason harrison on 2019-01-14.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "ArtistFactory.h"
#import "Artist.h"
//@class Artist;
@interface ArtistFactory()

@property (nonatomic, strong, class, readonly)NSArray<Artist *> *artists;

@end

@implementation ArtistFactory

+ (NSArray<Artist *> *)artists{
    
    NSMutableArray<Artist *> *listOfArtists = [[NSMutableArray alloc] init];
    UIImage *taylorSwiftImage = [UIImage imageNamed:@"taylorSwift"];
    Artist *taylorSwift = [[Artist alloc] initWithName:@"Taylor Swift"
                           andImage:taylorSwiftImage];
    [listOfArtists addObject:taylorSwift];

    UIImage *justinBieberImage = [UIImage imageNamed:@"justinBieber"];
    Artist *justinBieber = [[Artist alloc] initWithName:@"Justin Bieber"
                           andImage:justinBieberImage];
    [listOfArtists addObject:justinBieber];
    //return listOfArtists;
    
    //shorthand:
    return @[
             [[Artist alloc] initWithName:@"Taylor Swift"
                                 andImage:[UIImage imageNamed:@"taylorSwift"]],
             [[Artist alloc] initWithName:@"Justin Bieber"
                                 andImage:justinBieberImage]
             ];
}

+ (Artist *)nextArtist{
    
    NSUInteger index = arc4random_uniform((uint32_t)ArtistFactory.artists.count);
    return ArtistFactory.artists[index];
    
    //return nil;
}

@end
