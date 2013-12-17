//
//  MainViewController.m
//  DictionaryToClass
//
//  Created by Dracuuula on 13-12-17.
//  Copyright (c) 2013年 Dracuuula. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSArray * testArray = @[@"1", @"2",@"3"];
    
    NSDictionary * modeldIc = [[NSDictionary alloc] initWithObjectsAndKeys:@"str111",@"str1",
                               testArray,@"darray",
                               [NSNumber numberWithFloat:2.1],@"floatV",
                               [NSNumber numberWithDouble:2.1],@"doubleV",
                               [NSNumber numberWithBool:YES],@"_IsInEurope",
                               [NSNumber numberWithInt:10],@"idNum",
                               [NSNumber numberWithUnsignedInt:15],@"uintNum",
                               [NSNumber numberWithShort:12],@"shortV",
                               [NSNumber numberWithUnsignedShort:11],@"ushortV",
                               [NSNumber numberWithLong:1111111],@"longV",
                               [NSNumber numberWithUnsignedLong:2222222222],@"ulongV",
                               [NSNumber numberWithLongLong:33333333333333],@"longlongV",
                               [NSNumber numberWithUnsignedLongLong:44444444444],@"ulonglongV",
                               [NSNumber numberWithChar:'a'],@"charV",
                               [NSNumber numberWithUnsignedChar:'b'],@"ucharV",nil];
    
    TestModel * resultmodel = [DictionaryToClass dictionaryToClass:modeldIc ModelName:@"TestModel"];
    NSLog(@"resultmodel.str1 %@  resultmodel.darray %@ ", resultmodel.str1, resultmodel.darray);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
