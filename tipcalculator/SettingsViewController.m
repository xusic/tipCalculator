//
//  SettingsViewController.m
//  tipcalculator
//
//  Created by David Law on 2/19/14.
//  Copyright (c) 2014 Stephen Hsiao. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
@property (strong, nonatomic) IBOutlet UISegmentedControl *defaultTip;

- (IBAction)onTap:(id)sender;
- (void)updateDefaultTip;

@end

@implementation SettingsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title= @"Default Tip Settings";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    self.defaultTip.selectedSegmentIndex = [defaults integerForKey:@"defTip"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTap:(id)sender {
    [self updateDefaultTip];
}

- (void)updateDefaultTip {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:self.defaultTip.selectedSegmentIndex forKey:@"defTip"];
    [defaults synchronize];
    
}

@end
