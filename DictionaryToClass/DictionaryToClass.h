//
//  JSONClass.h
//  JSONClass
//
//  Created by Dracuuula on 13-12-12.
//  Copyright (c) 2013年 Dracuuula. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/message.h>
#import <objc/runtime.h>

@interface DictionaryToClass : NSObject

+(id)dictionaryToClass:(NSDictionary *)dic ModelName:(NSString *)modelName;

@end
