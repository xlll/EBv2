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
    NSMutableArray *dataArray = [[NSMutableArray alloc] init];
    
    for(int i=0; i<2; i++)
    {
        NSNumber *number = [NSNumber numberWithInt:(i+1)*15];
        // add number to array;
        [dataArray addObject:number];
    }
    
    // call DLPieChart method
    [self.pieChartView renderInLayer:self.pieChartView dataArray:dataArray];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)back:(id)sender {
    [self dismissViewControllerAnimated:NO completion:nil];
}
@end
