//
//  ViewController.m
//  tryJSON
//
//  Created by Ziwen Chen on 11/9/16.
//  Copyright © 2016 Ziwen Chen. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end


@implementation ViewController{
    NSArray <Person *> *people;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    Person * alex = [Person new];
    alex.name = @"Alex";
    alex.title = @"Mitchell";
    
    [super viewDidLoad];
    Person * titus = [Person new];
    titus.name = @"Titus";
    titus.title = @"Klinge";
    
    people = @[alex,titus];
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return people.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *nextCell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    Person *peep = people[indexPath.row];
    
    nextCell.textLabel.text = peep.name;
    nextCell.detailTextLabel.text = peep.title;
    
    return nextCell;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
