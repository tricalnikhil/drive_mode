//
//  TodayViewController.m
//  Car Dashboard Widget
//
//  Created by Nikhil Shah on 2/13/17.
//  Copyright © 2017 Nikhil Shah. All rights reserved.
//

#import "TodayViewController.h"
#import "ViewController.h"
#import <NotificationCenter/NotificationCenter.h>

// Refer: http://stackoverflow.com/questions/8246070/ios-launching-settings-restrictions-url-scheme/8246814#8246814
// For deep link urls
#define SETTINGS_GENERAL @"App-Prefs:root=General&path=%@"
#define PATH_ACCESSIBILITY_LARGER_TEXT @"ACCESSIBILITY/LARGER_TEXT"

@interface TodayViewController () <NCWidgetProviding>

@end

@implementation TodayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)enterAccessibilitySettings:(id)sender {
    
    NSURL *appSettings = [NSURL URLWithString:[NSString stringWithFormat:SETTINGS_GENERAL, PATH_ACCESSIBILITY_LARGER_TEXT]];
    [self.extensionContext openURL:appSettings completionHandler:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)widgetPerformUpdateWithCompletionHandler:(void (^)(NCUpdateResult))completionHandler {
    // Perform any setup necessary in order to update the view.
    
    // If an error is encountered, use NCUpdateResultFailed
    // If there's no update required, use NCUpdateResultNoData
    // If there's an update, use NCUpdateResultNewData

    completionHandler(NCUpdateResultNewData);
}

@end
