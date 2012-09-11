//
//  CustomCell.m
//  ProgressViewTest
//
//  Created by Tim Ekl on 9/11/12.
//  Copyright (c) 2012 Tim Ekl. All rights reserved.
//

#import "CustomCell.h"
#import "PVTNotifications.h"

@implementation CustomCell

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self configureProgressBar];
    }
    return self;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self configureProgressBar];
    }
    return self;
}

- (void)configureProgressBar {
    self.progressView = [[UIProgressView alloc] initWithProgressViewStyle:UIProgressViewStyleBar];
    [self.progressView setFrame:CGRectMake(10, 10, 92, 28)];
    [self.progressView setProgress:0.0];
    [self.progressView setHidden:YES];
    [self addSubview:self.progressView];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(iconDownloaded:) name:kDownloadedIcon object:nil];
}

- (void)iconDownloaded:(NSNotification *)notification {
    [self performSelectorOnMainThread:@selector(updateProgressBar:) withObject:notification waitUntilDone:YES];
}

- (void)updateProgressBar:(NSNotification *)notification {
    [self.progressView setHidden:NO];
    [self.progressView setProgress:1.0/2.0];
}

@end
