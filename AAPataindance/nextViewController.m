//
//  nextViewController.m
//  AAPataindance
//
//  Created by Student P_08 on 22/05/17.
//  Copyright © 2017 Felix. All rights reserved.
//

#import "nextViewController.h"
#import "ViewController.h"
#import "secondTableViewCell.h"
@interface nextViewController ()

@end

@implementation nextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //[self.myTableView reloadData];
    NSLog(@"%@",self.nextApArray);
    // Do any additional setup after loading the view.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.nameArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //secondTableViewCell *cell=[[secondTableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"mycell"];
    //cell.textLabel.text=[self.nameArray objectAtIndex:indexPath.row];
    //cell.detailTextLabel.text=[self.ApArray objectAtIndex:indexPath.row];
    //return cell;
    
    //-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
    
    //secondTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"mycell"];
    secondTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"mycell"];
    NSString *idString=[NSString stringWithFormat:@"%@",[self.IDArray objectAtIndex:indexPath.row]];
        cell.idemp.text=idString;
        cell.nameEmp.text=[self.nameArray objectAtIndex:indexPath.row];
    NSString *string1=[self.dataArray objectAtIndex:indexPath.row];
    NSLog(@"Date=%@",string1);
   // if([string1 isEqual: [NSNull null]])
    //{
     //   cell.DateEmp.text=[self.dataArray objectAtIndex:indexPath.row];


    //}
    //else
    //{
       // cell.DateEmp.text=@"Date not available";

   // }
    
    //if ((NSNull *)string1 == [NSNull null]) {
        cell.DateEmp.text=[self.dataArray objectAtIndex:indexPath.row];

    //}
    //else {
        // cell.DateEmp.text=@"date is not available";
    //}
    
    
    
    NSLog(@" Number of Items is apArray=%lu",(unsigned long)self.nextApArray.count);
    if(self.nextApArray.count >0)
    {
        cell.APemp.text=[self.nextApArray objectAtIndex:indexPath.row];
        
}
    
    

    NSLog(@"%@",[self.nextApArray objectAtIndex:indexPath.row]);
        return cell;
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)searching_textField:(id)sender {
    UITextField *search=sender;
    //NSString *search=textField.text;
    if(search.text.length>0)
    {
        NSPredicate *searchPredicate=[NSPredicate predicateWithFormat:@"SELF Contains[c]%@",search];
        NSLog(@"%@",searchPredicate);
        self.nameArray=[self.employeArray filteredArrayUsingPredicate:searchPredicate];
        // [self.myTableView reloadData];
        //NSLog(@"%@",self.employeArray);
    }
}
@end
