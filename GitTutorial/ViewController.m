//
//  ViewController.m
//  GitTutorial
//
//  Created by Ideabytes on 02/02/17.
//  Copyright © 2017 Ideabytes. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (IBAction)buttonTapped:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonTapped:(id)sender {
    NSLog(@"hi");
}
@end
