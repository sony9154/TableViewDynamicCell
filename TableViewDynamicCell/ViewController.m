//
//  ViewController.m
//  TableViewDynamicCell
//
//  Created by Peter Yo on 1月/1/17.
//  Copyright © 2017年 Peter Hsu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    NSMutableArray *cellArray;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    cellArray = [[NSMutableArray alloc] initWithArray:@[@"A",@"B",@"C"]];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return cellArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = cellArray[indexPath.row];
    return cell;
}
- (IBAction)barItemTapped:(id)sender {
    [cellArray addObject:@"D"];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:cellArray.count - 1 inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationMiddle];
    
}

@end
