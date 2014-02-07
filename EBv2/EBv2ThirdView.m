//
//  EBv2ThirdView.m
//  EBv2
//
//  Created by Xue Li on 2/7/14.
//  Copyright (c) 2014 Xue Li. All rights reserved.
//

#import "EBv2ThirdView.h"

@interface EBv2ThirdView ()
@end

@implementation EBv2ThirdView
@synthesize pieChart3;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    NSMutableArray *dataArray3 = [[NSMutableArray alloc] init];
    
    for(int i=0; i<3; i++)
    {
        NSNumber *number3 = [NSNumber numberWithInt:(i+1)*15];
        // add number to array;
        [dataArray3 addObject:number3];
    }
    
    // call DLPieChart method
    [pieChart3 renderInLayer:pieChart3 dataArray:dataArray3];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    }

@end
