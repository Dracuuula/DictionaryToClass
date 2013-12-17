//
//  JSONClass.m
//  JSONClass
//
//  Created by Dracuuula on 13-12-12.
//  Copyright (c) 2013年 Dracuuula. All rights reserved.
//

#import "DictionaryToClass.h"

@implementation DictionaryToClass

+(id)dictionaryToClass:(NSDictionary *)dic ModelName:(NSString *)modelName
{
    id modelClass = [[NSClassFromString(modelName) alloc] init];
    
    if (modelClass != nil) {
        unsigned int count;
        
        objc_property_t* props = class_copyPropertyList([modelClass class], &count);
        
        for (int i = 0; i < count; i++) {
            objc_property_t property = props[i];
            const char * name = property_getName(property);
            NSString *propertyName = [NSString stringWithCString:name encoding:NSUTF8StringEncoding];
            const char * type = property_getAttributes(property);
            NSString * typeString = [NSString stringWithUTF8String:type];
            NSArray * attributes = [typeString componentsSeparatedByString:@","];
            NSString * typeAttribute = [attributes objectAtIndex:0];
            NSString * propertyType = [typeAttribute substringFromIndex:1];
            const char * rawPropertyType = [propertyType UTF8String];
            
            if (strcmp(rawPropertyType, @encode(int)) == 0) {
                //int value
                NSNumber * num = [dic objectForKey:propertyName];
                
                if ([modelClass respondsToSelector:NSSelectorFromString(propertyName)])
                {
                    [modelClass setValue:num forKey:propertyName];
                }

            } else if (strcmp(rawPropertyType, @encode(unsigned int)) == 0) {
                //unsigned int value
                NSNumber * num = [dic objectForKey:propertyName];
                
                if ([modelClass respondsToSelector:NSSelectorFromString(propertyName)])
                {
                    [modelClass setValue:num forKey:propertyName];
                }
            }else if (strcmp(rawPropertyType, @encode(BOOL)) == 0) {
                //bool value
                NSNumber * num = [dic objectForKey:propertyName];
                
                if ([modelClass respondsToSelector:NSSelectorFromString(propertyName)])
                {
                    [modelClass setValue:num forKey:propertyName];
                }
            } else if (strcmp(rawPropertyType, @encode(float)) == 0) {
                //float value
                NSNumber * num = [dic objectForKey:propertyName];
                
                if ([modelClass respondsToSelector:NSSelectorFromString(propertyName)])
                {
                    [modelClass setValue:num forKey:propertyName];
                }
            } else if(strcmp(rawPropertyType, @encode(short)) == 0){
                //short value
                NSNumber * num = [dic objectForKey:propertyName];
                
                if ([modelClass respondsToSelector:NSSelectorFromString(propertyName)])
                {
                    [modelClass setValue:num forKey:propertyName];
                }
            }else if(strcmp(rawPropertyType, @encode(unsigned short)) == 0){
                //unsigned short value
                NSNumber * num = [dic objectForKey:propertyName];
                
                if ([modelClass respondsToSelector:NSSelectorFromString(propertyName)])
                {
                    [modelClass setValue:num forKey:propertyName];
                }
            }else if(strcmp(rawPropertyType, @encode(long)) == 0){
                //long value
                NSNumber * num = [dic objectForKey:propertyName];
                
                if ([modelClass respondsToSelector:NSSelectorFromString(propertyName)])
                {
                    [modelClass setValue:num forKey:propertyName];
                }
            }else if(strcmp(rawPropertyType, @encode(unsigned long)) == 0){
                //unsigned long value
                NSNumber * num = [dic objectForKey:propertyName];
                
                if ([modelClass respondsToSelector:NSSelectorFromString(propertyName)])
                {
                    [modelClass setValue:num forKey:propertyName];
                }
            }else if(strcmp(rawPropertyType, @encode(double)) == 0){
                //double value
                NSNumber * num = [dic objectForKey:propertyName];
                
                if ([modelClass respondsToSelector:NSSelectorFromString(propertyName)])
                {
                    [modelClass setValue:num forKey:propertyName];
                }
            }else if(strcmp(rawPropertyType, @encode(char)) == 0){
                //char value
                NSNumber * num = [dic objectForKey:propertyName];
                
                if ([modelClass respondsToSelector:NSSelectorFromString(propertyName)])
                {
                    [modelClass setValue:num forKey:propertyName];
                }
            }else if(strcmp(rawPropertyType, @encode(unsigned char)) == 0){
                //unsigned char value
                NSNumber * num = [dic objectForKey:propertyName];
                
                if ([modelClass respondsToSelector:NSSelectorFromString(propertyName)])
                {
                    [modelClass setValue:num forKey:propertyName];
                }
            }else if(strcmp(rawPropertyType, @encode(long long)) == 0){
                //long long value
                NSNumber * num = [dic objectForKey:propertyName];
                
                if ([modelClass respondsToSelector:NSSelectorFromString(propertyName)])
                {
                    [modelClass setValue:num forKey:propertyName];
                }
            }else if(strcmp(rawPropertyType, @encode(unsigned long long)) == 0){
                //unsigned long long value
                NSNumber * num = [dic objectForKey:propertyName];
                
                if ([modelClass respondsToSelector:NSSelectorFromString(propertyName)])
                {
                    [modelClass setValue:num forKey:propertyName];
                }
            }else{
//            }else if(strcmp(rawPropertyType, @encode(id)) == 0){//why this doesn't work?
                //object value
                if ([typeAttribute hasPrefix:@"T@"] && [typeAttribute length] > 1) {
                    NSString * typeClassName = [typeAttribute substringWithRange:NSMakeRange(3, [typeAttribute length]-4)];
                    Class typeClass = NSClassFromString(typeClassName);
                    if (typeClass != nil) {
                        
                        if ([modelClass respondsToSelector:NSSelectorFromString(propertyName)])
                        {
                            [modelClass setValue:[dic objectForKey:propertyName] forKey:propertyName];
                        }
                        
                    }
                }
            }

        }
        free(props);
        
        return modelClass;
    }else{
        NSLog(@"Your class name is error");
    }
    
    return nil;

}

@end
