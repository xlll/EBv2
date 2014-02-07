//
//  EBv2SecondView.h
//  EBv2
//
//  Created by Xue Li on 2/6/14.
//  Copyright (c) 2014 Xue Li. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DLPieChart.h"


@interface EBv2SecondView : UIViewController{
    
    IBOutlet UIButton *backButton;
}

- (IBAction)back:(id)sender;
- (IBAction)showFig:(id)sender;

@property (nonatomic, retain) IBOutlet DLPieChart *pieChartView;


@end
