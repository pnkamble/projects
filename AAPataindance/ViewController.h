//
//  ViewController.h
//  AAPataindance
//
//  Created by Student P_08 on 22/05/17.
//  Copyright © 2017 Felix. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "nextViewController.h"
@interface ViewController : UIViewController


@property (strong, nonatomic) IBOutlet UITextField *empNo_textF;

@property (strong, nonatomic) IBOutlet UITextField *empName_textF;

@property (strong, nonatomic) IBOutlet UITextField *empDate_textF;

- (IBAction)insert_Button:(id)sender;


@property (strong, nonatomic) IBOutlet UITextField *emp_AP;

- (IBAction)deleteButton:(id)sender;



@property NSArray *nameArray;

@property NSArray *ApArray;
@property NSArray *IDArray;
@property NSArray *dataArray;
@property NSArray *empDetailArray;
@property NSManagedObjectContext *s_context;


@end

