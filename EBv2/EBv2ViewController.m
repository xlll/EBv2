//
//  EBv2ViewController.m
//  EBv2
//
//  Created by Xue Li on 2/6/14.
//  Copyright (c) 2014 Xue Li. All rights reserved.
//

#import "EBv2ViewController.h"

@interface EBv2ViewController ()

@property (strong, nonatomic) IBOutlet UITextField *zipText;
@property (weak, nonatomic) IBOutlet UILabel *displayLoc;
- (IBAction)getGeoLoc:(id)sender;

@end

@implementation EBv2ViewController
@synthesize pieChartView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSMutableArray *dataArray = [[NSMutableArray alloc] init];
    
    for(int i=0; i<5; i++)
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


- (BOOL) textFieldShouldReturn:(UITextField *) theTextField
{
    if (theTextField == self.zipText)
    {
        self.zipCode = self.zipText.text;
        NSString *greeting = [[NSString alloc] initWithFormat:@"Loc is %@.", self.zipCode];
        self.displayLoc.text = greeting;
        [theTextField resignFirstResponder];
    }
    return YES;
}

// We will embed get location operation here in the future
// It was hardcoded as "37996".
- (IBAction)getGeoLoc:(id)sender {
    self.zipCode = @"37996";
    NSString *greeting = [[NSString alloc] initWithFormat:@"Loc is %@.", self.zipCode];
    self.displayLoc.text = greeting;
}
@end
