//
//  RdFirstViewController.m
//  Raden
//
//  Created by tonic on 13-10-23.
//  Copyright (c) 2013年 tonic. All rights reserved.
//

#import "RdFirstViewController.h"

@interface RdFirstViewController ()

@end

@implementation RdFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)snapshotClicked:(id)sender {
    UIImage *image = [self imageFromView:self.view];
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    self.imageView.image = image;
}

- (UIImage *)imageFromView: (UIView *)theView {
    UIGraphicsBeginImageContext(theView.frame.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    [theView.layer renderInContext:context];
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}
@end
