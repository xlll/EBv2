//
//  EBv2SecondView.m
//  EBv2
//
//  Created by Xue Li on 2/6/14.
//  Copyright (c) 2014 Xue Li. All rights reserved.
//

#import "EBv2SecondView.h"

@interface EBv2SecondView ()

@end

@implementation EBv2SecondView

@synthesize pieChartView;

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

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)back:(id)sender {
    [self dismissViewControllerAnimated:NO completion:nil];
}

- (IBAction)showFig:(id)sender {
    backButton.hidden = YES;
    NSMutableArray *dataArray = [[NSMutableArray alloc] init];
    
    for(int i=0; i<6; i++)
    {
        NSNumber *number = [NSNumber numberWithInt:(i+1)*15];
        // add number to array;
        [dataArray addObject:number];
    }
    
    // call DLPieChart method
    [pieChartView renderInLayer:pieChartView dataArray:dataArray];
}

@end
