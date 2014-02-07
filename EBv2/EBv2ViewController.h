//
//  EBv2ViewController.h
//  EBv2
//
//  Created by Xue Li on 2/6/14.
//  Copyright (c) 2014 Xue Li. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DLPieChart.h"

@interface EBv2ViewController : UIViewController <UITextFieldDelegate>

@property (copy, nonatomic) NSString *zipCode;
@property (nonatomic, retain) IBOutlet DLPieChart *pieChartView;

@end
