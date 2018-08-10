//
//  TableViewController.h
//  GoodQuote
//
//  Created by Ada 2018 on 23/03/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Quote.h"
#import "Author.h"
#import "Manager.h"

@interface TableViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

    @property Manager* m;
    @property Author* author;
    @property NSMutableArray<Quote*>* quotes;

@end
