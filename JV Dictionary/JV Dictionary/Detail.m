//
//  Detail.m
//  JV Dictionary
//
//  Created by Tuan EM on 4/24/13.
//  Copyright (c) 2013 Tuan EM. All rights reserved.
//

#import "Detail.h"

@interface Detail ()

@end

@implementation Detail
- (IBAction)replay:(id)sender {
    [self.player play];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
      
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.replay setImage:[UIImage imageNamed:@"replay"] forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
   
}

@end
