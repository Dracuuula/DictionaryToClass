DictionaryToClass
============================================

Summary
 
 DictionaryToClass is a library, it can analyze a dictionary to a class.

============================================
Requirements 

 none

============================================
Basic usage

 1. ARC or MRC, IOS or OSX all support
 2. Cpoy the DictionaryToClass sub-folder into you Objective-C project
 
============================================

Example

 NSDictionary * modeldIc:
 
 {
  "id": "123",
  "name": "Product name",
  "num": 12.95
 }

 Class
 
 @interface TestModel : NSObject
 @property (assign, nonatomic) int id;
 @property (strong, nonatomic) NSString* name;
 @property (assign, nonatomic) float num;
 @end

 TestModel * resultmodel = [DictionaryToClass dictionaryToClass:modeldIc ModelName:@"TestModel"];
