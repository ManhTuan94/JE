//
//  Data.h
//  JV Dictionary
//
//  Created by Tuan EM on 4/24/13.
//  Copyright (c) 2013 Tuan EM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Data : NSObject
@property (strong,nonatomic) NSArray* keys;
@property (strong,nonatomic) NSArray* photos;
@property (strong,nonatomic) NSArray* sounds;
@property (strong,nonatomic) NSArray* topics;
@property (strong,nonatomic) NSDictionary* dic;
+(Data*) data;
@end