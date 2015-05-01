//
//  ViewController.m
//  PaypalTestWebView
//
//  Created by dev on 4/21/15.
//  Copyright (c) 2015 self. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIWebViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self.webView setDelegate:self];
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.paypal.com/signin/?country.x=US&locale.x=en_US"]]];
    
    self.webView.paginationMode = UIWebPaginationModeTopToBottom;
    self.webView.pageLength = 768;
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
}

- (IBAction)reloadWebpage:(id)sender
{
    [self.webView reload];
}


@end
