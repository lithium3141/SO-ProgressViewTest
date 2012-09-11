//
//  PVTDetailViewController.h
//  ProgressViewTest
//
//  Created by Tim Ekl on 9/11/12.
//  Copyright (c) 2012 Tim Ekl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PVTDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
