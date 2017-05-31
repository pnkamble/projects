//
//  ViewController.m
//  AAPataindance
//
//  Created by Student P_08 on 22/05/17.
//  Copyright © 2017 Felix. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "nextViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self fetchRequest];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)fetchRequest
{
    NSError *error;
    
    AppDelegate *delegate=(AppDelegate *)[UIApplication sharedApplication].delegate;
    self.s_context=delegate.persistentContainer.viewContext;
    NSEntityDescription *myEntity=[NSEntityDescription entityForName:@"Employe" inManagedObjectContext:self.s_context];
    
    NSFetchRequest *fetchRequest=[[NSFetchRequest alloc]initWithEntityName:@"Employe"];
    [fetchRequest setEntity:myEntity];
   // if(self..length>0)
   // {
    // NSPredicate *predicate=[NSPredicate predicateWithFormat:@"self contains[cd] %@",self.searchText.text];
   // [fetchRequest setPredicate:predicate];
    
   // }
   // self.e=[self.s_context executeFetchRequest:fetchRequest error:&error];
   // NSManagedObject *myObject;
    self.empDetailArray=[self.s_context executeFetchRequest:fetchRequest error:&error];
    NSManagedObject *myObject;
    if(self.empDetailArray.count!=0)
    {
        myObject=[self.empDetailArray firstObject];
        id no=[myObject valueForKey:@"emp_id12"];
        self.empNo_textF.text=[NSString stringWithFormat:@"%@",no];
        
        
        
        self.empName_textF.text=[myObject valueForKey:@"emp_name12"];
        
        self.empDate_textF.text=[myObject valueForKey:@"emp_date12"];
        
        self.emp_AP.text=[myObject valueForKey:@"emp_AP12"];
        
        
        
    }
    self.nameArray=[self.empDetailArray valueForKey:@"emp_name12"];
    self.IDArray=[self.empDetailArray valueForKey:@"emp_id12"];
    
    
    self.dataArray=[self.empDetailArray valueForKey:@"emp_date12"];
    NSLog(@"%@",self.dataArray);
    self.ApArray=[self.empDetailArray valueForKey:@"emp_AP12"];
    NSLog(@"%@",self.IDArray);
    NSLog(@"%@",self.dataArray);
    
    
    
    
    NSLog(@"%@",self.nameArray);
    NSLog(@"%@",self.ApArray);
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)insert_Button:(id)sender {
    NSEntityDescription *myEntity=[NSEntityDescription entityForName:@"Employe" inManagedObjectContext:self.s_context];
    NSManagedObject *newObject=[[NSManagedObject alloc]initWithEntity:myEntity insertIntoManagedObjectContext:self.s_context];
    
    
    NSNumberFormatter *f=[[NSNumberFormatter alloc]init];
    f.numberStyle=NSNumberFormatterDecimalStyle;
    NSNumber *number=[f numberFromString:self.empNo_textF.text];
    
    [newObject setValue:number forKey:@"emp_id12"];
    
    [newObject setValue:self.empName_textF.text forKey:@"emp_name12"];
    
    
    //NSNumberFormatter *f1=[[NSNumberFormatter alloc]init];
    // f1.numberStyle=NSNumberFormatterNoStyle;
    //NSNumber *number1=[f1 numberFromString:self.empDate_textF.text];
    
    [newObject setValue:self.emp_AP.text forKey:@"emp_AP12"];
    
    [newObject setValue:self.empDate_textF.text forKey:@"emp_date12"];
    
    
    NSError *error;
    [self.s_context save:&error];
    if(error)
    {
        NSLog(@"%@",error.localizedDescription);
    }
    else
    {
        NSLog(@"Insertion success");
    }
    //[self inserT_button:sender];
    [self fetchRequest];
    NSLog(@" Aparry: %@",self.ApArray);
    //[self.myTable reloadData];
    self.empNo_textF.text=@"";
    self.empName_textF.text=@"";
    self.empDate_textF.text=@"";
    self.emp_AP.text=@"";
    
    
    
    
    nextViewController *svc=[self.storyboard instantiateViewControllerWithIdentifier:@"nextViewController"];
    svc.nameArray=self.nameArray;
    NSLog(@"NAME %@",svc.nameArray);
    svc.IDArray=self.IDArray;
    
    svc.dataArray=self.dataArray;
    svc.nextApArray=self.ApArray;
    
    [self.navigationController pushViewController:svc animated:YES];
    
    
}



- (IBAction)deleteButton:(id)sender {
    NSError *error;
    AppDelegate *delegate=(AppDelegate *)[UIApplication sharedApplication].delegate;
    self.s_context=delegate.persistentContainer.viewContext;
    NSEntityDescription *myEntity=[NSEntityDescription entityForName:@"Employe" inManagedObjectContext:self.s_context];
    
    NSFetchRequest *fetchRequest=[[NSFetchRequest alloc]initWithEntityName:@"Employe"];
    [fetchRequest setEntity:myEntity];
    self.empDetailArray=[self.s_context executeFetchRequest:fetchRequest error:&error];
    NSManagedObject *myObject;
    myObject=self.empDetailArray.firstObject;
    [self.s_context deleteObject:myObject];

    
        
    [self.s_context save:&error];
        
        //[self update_button:sender];
        [self fetchRequest];
    
}


@end
