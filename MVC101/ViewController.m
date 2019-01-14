//
//  ViewController.m
//  MVC101
//
//  Created by jason harrison on 2019-01-14.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "ViewController.h"
#import "ArtistFactory.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *artistImage;
@property (weak, nonatomic) IBOutlet UILabel *artistLabel;
@property (weak, nonatomic) IBOutlet UIButton *artistButton;

@end

@implementation ViewController
- (IBAction)artistButtonTapped:(UIButton *)sender {
    // called whenever button tapped
    Artist *artist = ArtistFactory.nextArtist;
    self.artistImage.image = artist.image;
    self.artistLabel.text = artist.name;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


@end
