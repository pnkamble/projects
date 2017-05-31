//
//  secondTableViewCell.h
//  AAPataindance
//
//  Created by Student P_08 on 23/05/17.
//  Copyright © 2017 Felix. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface secondTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *idemp;

@property (strong, nonatomic) IBOutlet UILabel *nameEmp;

@property (strong, nonatomic) IBOutlet UILabel *DateEmp;
@property (strong, nonatomic) IBOutlet UILabel *APemp;

@property NSArray *idArray,*nameArray;
@property NSArray *dateArray,*ApArray;

@end
