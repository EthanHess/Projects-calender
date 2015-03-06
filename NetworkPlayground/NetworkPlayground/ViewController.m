//
//  ViewController.m
//  NetworkPlayground
//
//  Created by Ethan Hess on 3/3/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <NSURLSessionDelegate, NSURLSessionDownloadDelegate> {
    NSURLSession *_session;
}


@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIProgressView *progressBar;
@property (weak, nonatomic) IBOutlet UIButton *cancelButton;
@property (weak, nonatomic) IBOutlet UIButton *resumeButton;
@property (strong, nonatomic) NSURLSessionDownloadTask *downloadTask;
@property (strong, nonatomic) NSData *resumeData;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    NSURLSession *session = [NSURLSession sharedSession];
//    
//    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:@"https://itunes.apple.com/search?term=aple&media=software"] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
//        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
//        NSLog(@"%@", json);
//    }];
//
//    [dataTask resume];
    
    [self session]; 
    
    [self addObserver:self forKeyPath:@"resumeData" options:NSKeyValueObservingOptionNew context:NULL];
    [self addObserver:self forKeyPath:@"downloadTask" options:NSKeyValueObservingOptionNew context:NULL]; 
     
    
    self.downloadTask = [_session downloadTaskWithURL:[NSURL URLWithString:@"http://i.imgur.com/W5Kz8cY.jpg"]];
    
    [self.downloadTask resume];
    
    
//    NSURLSessionConfiguration *sessionConfig = [NSURLSessionConfiguration defaultSessionConfiguration];
//    
//    [sessionConfig setAllowsCellularAccess:YES];
//    [sessionConfig setHTTPAdditionalHeaders:@{@"Accept" : @"application/json" }];
//    
//    NSURLSession *session = [NSURLSession sessionWithConfiguration:sessionConfig delegate:self delegateQueue:nil];
    
    
    
}
    
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    
    if([keyPath isEqualToString:@"resumeData"]) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.resumeButton setHidden:(self.resumeData == nil)];
        });
    }
    else if ([keyPath isEqualToString:@"downloadTask"]) {
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.cancelButton setHidden:(self.cancelButton == nil)];
        });
    }
         
}
     
     
- (NSURLSession *)session {
    
    if (!_session) {
        
        NSURLSessionConfiguration *sessionConfig = [NSURLSessionConfiguration defaultSessionConfiguration];
        
        _session = [NSURLSession sessionWithConfiguration:sessionConfig delegate:self delegateQueue:nil];
    }
    
    return _session;
}

#pragma mark - NSURLSession Delegate Methods

-(void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didFinishDownloadingToURL:(NSURL *)location {
    
    NSData *data = [NSData dataWithContentsOfURL:location];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.progressBar setHidden:YES];
        [self.imageView setImage:[UIImage imageWithData:data]];
    });
    
    [_session finishTasksAndInvalidate];
}

-(void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didResumeAtOffset:(int64_t)fileOffset expectedTotalBytes:(int64_t)expectedTotalBytes {
    
}

-(void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didWriteData:(int64_t)bytesWritten totalBytesWritten:(int64_t)totalBytesWritten totalBytesExpectedToWrite:(int64_t)totalBytesExpectedToWrite {
    
    float progress = (double)totalBytesWritten/(double)totalBytesExpectedToWrite;
    
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.progressBar setProgress:progress];
    });
    
}

#pragma mark - Button Action Methods

- (IBAction)cancel:(id)sender {
    
    if (!self.downloadTask) return;
    
    [self.cancelButton setHidden:YES];
    
    [self.downloadTask cancelByProducingResumeData:^(NSData *resumeData) {
        if (!resumeData) return;
        
        [self setResumeData:resumeData];
        [self setDownloadTask:nil];
    }];
    
}

- (IBAction)resume:(id)sender {
    
    if (!self.resumeData) return;
    
    [self.resumeButton setHidden:YES];
    self.downloadTask = [_session downloadTaskWithResumeData:self.resumeData];
    
    [self.downloadTask resume];
    
    [self setResumeData:nil];
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
