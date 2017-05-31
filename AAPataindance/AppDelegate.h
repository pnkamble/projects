//
//  AppDelegate.h
//  AAPataindance
//
//  Created by Student P_08 on 22/05/17.
//  Copyright © 2017 Felix. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

