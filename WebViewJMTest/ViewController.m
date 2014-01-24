//
//  ViewController.m
//  WebViewJMTest
//
//  Created by Paul Von Schrottky on 1/24/14.
//  Copyright (c) 2014 PVS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
    
@property (strong, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"];
    NSURL *fileURL = [NSURL fileURLWithPath:filePath];
    NSURLRequest *request = [NSURLRequest requestWithURL:fileURL];
    [self.webView loadRequest:request];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
