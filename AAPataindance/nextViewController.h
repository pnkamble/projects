//
//  nextViewController.h
//  AAPataindance
//
//  Created by Student P_08 on 22/05/17.
//  Copyright © 2017 Felix. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
@interface nextViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>


@property (strong, nonatomic) IBOutlet UITableView *myTableView;

@property NSArray *nameArray;

@property NSArray *nextApArray;
@property NSArray *IDArray;
@property NSArray *dataArray;
@property NSArray *employeArray;

- (IBAction)searching_textField:(id)sender;


@end
