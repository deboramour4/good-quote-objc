//
//  QuotesViewCell.h
//  GoodQuote
//
//  Created by Ada 2018 on 23/03/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Quote.h"

@interface QuotesViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *quoteText;
@property (weak, nonatomic) IBOutlet UILabel *authorName;
@property (weak, nonatomic) IBOutlet UIImageView *authorImage;

@property Quote* quote;

@end
