//
//  AppDelegate.m
//  TestProblems
//
//  Created by Ethan Hess on 2/12/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

//@property (nonatomic, assign)int sumOfAllNumbers;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    
    return YES;

}

//- (BOOL)fibonacciChecker:(NSInteger *)integer {
//    
//    NSInteger fibonacci;
//    NSInteger firstOperand;
//    NSInteger secondOperand;
//    NSInteger sumOfFirstAndSecondOperand;
//    
//    sumOfFirstAndSecondOperand = firstOperand + secondOperand;
//    
//    if (firstOperand + secondOperand == sumOfFirstAndSecondOperand) {
//        sumOfFirstAndSecondOperand = fibonacci;
//    }
//    else
//    {
//        return NO;
//    }
//    
//    
//    return YES;
//}
//
//- (BOOL)isInFibonacci:(NSInteger *)number {
//    
//    BOOL isInFib = YES;
//    NSInteger n0 = 0;
//    NSInteger n1 = 1;
//    NSInteger answer = 0;
//    
//    while (answer <= number)
//    {
//        if (answer == number)
//    {
//        return isInFib;
//    }
//    else
//    {
//        
//        answer = n0 + n1;
//        n0 = n1;
//        n1 = answer;
//        
//    }
//    
//}
//
//return !isInFib;
//
//}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    
    //    NSLog (@"%ld", (long)[self vowelCounter]);
    
    
    //    [self findingMultiples:100];
    //    NSLog(@"My sum is: %d", self.sumOfAllNumbers);
    //
    //    return YES;
    //}
    //
    //- (void)findingMultiples:(int)myNumber {
    //
    //    for (myNumber = 0; myNumber < 1000; myNumber++) {
    //        if ((myNumber % 3 == 0) && !(myNumber % 5 == 0)) {
    //            self.sumOfAllNumbers = self.sumOfAllNumbers + myNumber;
    //        }
    //        if (myNumber % 5 == 0) {
    //            self.sumOfAllNumbers = self.sumOfAllNumbers + myNumber;
    //        }
    //    }
    //
    //
    //}
    
    
    
    //}
    //
    //
    //- (NSInteger)vowelCounter {
    //
    //    NSString *childHoodHome = @"I grew up near Philadelphia in a town called Ardmore.";
    //
    //    NSArray *vowels = @[@"a",@"A",@"e",@"E",@"i",@"I",@"o",@"O",@"u",@"U",@"y",@"Y"];
    //
    //    NSInteger count = 0;
    //
    //
    //    for (int i = 0; i < childHoodHome.length; i++) {
    //        for (int v = 0; v < vowels.count; v++) {
    //            NSString *character = [NSString stringWithFormat:@"%c",[childHoodHome characterAtIndex:i]];
    //
    //            if ([character isEqualToString:[vowels objectAtIndex:v]])
    //            {
    //                count ++;
    //            }
    //            
    //        }
    //        
    //    }
    //    
    //    NSLog(@"%ld", (long)count);
    //    
    //    
    //    return count;
    //    
    //
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
