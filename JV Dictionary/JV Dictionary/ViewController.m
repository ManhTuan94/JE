//
//  ViewController.m
//  JV Dictionary
//
//  Created by Tuan EM on 4/24/13.
//  Copyright (c) 2013 Tuan EM. All rights reserved.
//

#import "ViewController.h"
#import "TopicList.h"
#import "Data.h"
@interface ViewController ()
@property(strong,nonatomic) UITableView* tableViews;
@property(strong,nonatomic) NSDictionary* dic;
@end

@implementation ViewController
@synthesize tableViews,dic;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Topics";
	tableViews = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    tableViews.delegate=self;
    tableViews.dataSource=self;
    [self.view addSubview:tableViews];

}
-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSArray* array = [[[[Data data] dic] objectForKey:[[Data data]topics][indexPath.row]] allKeys];
    NSArray* sortedArray =[array sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    TopicList* topicView = [TopicList new];
    [self.navigationController pushViewController:topicView animated:YES];
    topicView.content = sortedArray;
    topicView.title = [NSString stringWithFormat:@"%@",[[Data data]topics][indexPath.row]];
    
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[Data data]topics].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.text = [[Data data]topics][indexPath.row];
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
