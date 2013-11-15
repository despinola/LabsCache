//
//  WebViewController.m
//  Nerdfeed
//
//  Created by David Espinola on 16/10/13.
//  Copyright (c) 2013 David Espinola. All rights reserved.
//

#import "WebViewController.h"

@implementation WebViewController

- (void)loadView
{
    // Create an instance of UIWebView as large as the screen
    CGRect screenFrame = [[UIScreen mainScreen] applicationFrame];
    UIWebView *wv = [[UIWebView alloc] initWithFrame:screenFrame];
    // Tell web view to scale web content to fit within bounds of webview
    [wv setScalesPageToFit:YES];
    
    [self setView:wv];
}

- (UIWebView *)webView
{
    return (UIWebView *)[self view];
}

-(void)viewDidAppear:(BOOL)animated{
    // Construct a URL that will ask the service for what you want -
    // note we can concatenate literal strings together on multiple
    // lines in this way - this results in a single NSString instance

    NSURL *url = [NSURL URLWithString:
                  @"http://www.infojobs.net"];
   
    
    // Put that URL into an NSURLRequest
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    
    // Create a connection that will exchange this request for data from the URL
//    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:req
//                                                 delegate:self
//                                         startImmediately:YES];

    [[self webView] loadRequest:req];
}
@end
