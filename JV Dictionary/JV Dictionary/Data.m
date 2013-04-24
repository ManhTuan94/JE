//
//  Data.m
//  JV Dictionary
//
//  Created by Tuan EM on 4/24/13.
//  Copyright (c) 2013 Tuan EM. All rights reserved.
//

#import "Data.h"

@implementation Data
@synthesize keys,photos,sounds,topics,dic;
+(Data*) data {
    static Data* data = nil;
    if (!data) {
        data = [[super allocWithZone:nil] init];
    }
    return data;
}
+(id) allocWithZone:(NSZone *)zone
{
    return [self data];
}

-(id) init
{
    self = [super init];
    if (self) {
        
        NSString* path = [[NSBundle mainBundle] pathForResource:@"JV"ofType:@"plist"];
        dic = [NSDictionary dictionaryWithContentsOfFile:path];
        NSArray* array = [dic allKeys];
        topics = [array sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
        
    }
    return self;
}
@end
