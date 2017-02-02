//
//  ViewController.m
//  GitTutorial
//
//  Created by Ideabytes on 02/02/17.
//  Copyright © 2017 Ideabytes. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

#define M_PI   3.14159265358979323846264338327950288
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *myImage;

- (IBAction)buttonTapped:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [UIView animateWithDuration:10.0
//delay:0.0
//options:0
//animations:^{
//    _myImage.transform = CGAffineTransformMakeRotation(M_PI);
//}
//completion:^(BOOL finished){
//    NSLog(@"Done!");
//}];
    
    [self runSpinAnimationOnView:_myImage duration:1.0 rotations:1 repeat:5];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonTapped:(id)sender {
    NSLog(@"hi");
    NSLog(@"hi");
    
//    for(int i=0;i<100;i++){
//
//    //set point of rotation
////    _myImage.center = CGPointMake(100.0, 100.0);
//    
//    //rotate rect
//    _myImage.transform = CGAffineTransformMakeRotation(M_PI/2);
//    
//    }
    
}

- (void) runSpinAnimationOnView:(UIView*)view duration:(CGFloat)duration rotations:(CGFloat)rotations repeat:(float)repeat
{

    CABasicAnimation* rotationAnimation;
    rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
//    _myImage.layer.transform = CATransform3DMakeRotation(-M_PI*2, 0, 0, 1);

    rotationAnimation.toValue = [NSNumber numberWithFloat: M_PI * 2.0 /* full rotation*/ * rotations * duration ];
    rotationAnimation.duration = duration;
    rotationAnimation.cumulative = YES;
    rotationAnimation.repeatCount = repeat;
    
    [view.layer addAnimation:rotationAnimation forKey:@"rotationAnimation"];
}
@end
