//
//  TestModel.h
//  JSONClass
//
//  Created by Dracuuula on 13-12-12.
//  Copyright (c) 2013年 Dracuuula. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestModel : NSObject

@property (strong, nonatomic) NSString* str1;
@property (strong, nonatomic) NSArray * darray;

@property (assign, nonatomic) float floatV;
@property (assign, nonatomic) double doubleV;
@property (assign, nonatomic) BOOL _IsInEurope;

@property (assign, nonatomic) int idNum;
@property (assign, nonatomic) unsigned int uintNum;

@property (assign, nonatomic) short shortV;
@property (assign, nonatomic) unsigned short ushortV;

@property (assign, nonatomic) long longV;
@property (assign, nonatomic) unsigned long ulongV;

@property (assign, nonatomic) long long longlongV;
@property (assign, nonatomic) unsigned long long ulonglongV;

@property (assign, nonatomic) char charV;
@property (assign, nonatomic) unsigned char ucharV;

@end
