//
//  TopicList.h
//  JV Dictionary
//
//  Created by Tuan EM on 4/24/13.
//  Copyright (c) 2013 Tuan EM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TopicList : UITableViewController <UITableViewDelegate,UITableViewDataSource>
@property(strong,nonatomic) NSArray* content;
@end
