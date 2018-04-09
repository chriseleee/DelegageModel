//
//  TableViewDelegateObj.h
//  DelegageModel
//
//  Created by chriseleee on 2018/4/9.
//  Copyright © 2018年 chriseleee. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void (^selectCell) (NSIndexPath *indexPath);
//  代理对象(UITableView的协议需要声明在.h文件中，不然外界在使用的时候会报黄色警告，看起来不太舒服)
@interface TableViewDelegateObj : NSObject <UITableViewDelegate, UITableViewDataSource>

/**
 *  创建代理对象实例，并将数据列表传进去
 *  代理对象将消息传递出去，是通过block的方式向外传递消息的
 *  @return 返回实例对象
 */
+ (instancetype)createTableViewDelegateWithDataList:(NSArray *)dataList
                                        selectBlock:(selectCell)selectBlock;
@end
