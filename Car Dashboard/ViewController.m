//
//  ViewController.m
//  Car Dashboard
//
//  Created by Nikhil Shah on 2/13/17.
//  Copyright © 2017 Nikhil Shah. All rights reserved.
//

#import "ViewController.h"

// Refer: http://stackoverflow.com/questions/8246070/ios-launching-settings-restrictions-url-scheme/8246814#8246814
// For deep link urls
#define SETTINGS_GENERAL @"App-Prefs:root=General&path=%@"
#define PATH_ACCESSIBILITY_LARGER_TEXT @"ACCESSIBILITY/LARGER_TEXT"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)enterAccessibilitySettings:(id)sender {
    
    NSURL *appSettings = [NSURL URLWithString:[NSString stringWithFormat:SETTINGS_GENERAL, PATH_ACCESSIBILITY_LARGER_TEXT]];
    [[UIApplication sharedApplication] openURL:appSettings options:@{} completionHandler:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
