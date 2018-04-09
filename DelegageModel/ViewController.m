//
//  ViewController.m
//  DelegageModel
//
//  Created by chriseleee on 2018/4/9.
//  Copyright © 2018年 chriseleee. All rights reserved.
//

#import "ViewController.h"
#import "TableViewDelegateObj.h"
@interface ViewController ()

@property (strong, nonatomic) TableViewDelegateObj *tableDelegate;

@property (strong, nonatomic) UITableView *tableView;

//数据源
@property (strong, nonatomic) NSArray *dataList;
@end

@implementation ViewController

-(NSArray *)dataList{
    if (!_dataList) {
        _dataList = @[@"hahhahah",@"111111",@"22222222",@"33333333",@"4444444",@"555555555",@"hahhahah",@"111111",@"22222222",@"33333333",@"4444444",@"555555555"];
    }
    return _dataList;
}

-(UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc]init];
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.backgroundColor = [UIColor whiteColor];
        [self.view addSubview:_tableView];
    }
    return _tableView;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.tableView.frame = self.view.frame;
    
    
    self.tableDelegate = [TableViewDelegateObj createTableViewDelegateWithDataList:self.dataList
                                                                       selectBlock:^(NSIndexPath *indexPath) {
                                                                           NSLog(@"点击了%ld行cell", (long)indexPath.row);
                                                                       }];
    self.tableView.delegate = self.tableDelegate;
    self.tableView.dataSource = self.tableDelegate;
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
