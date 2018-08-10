//
//  QuoteViewController.h
//  GoodQuote
//
//  Created by Ada 2018 on 26/03/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Quote.h"
#import "Manager.h"

@interface QuoteViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *quoteText;
@property (weak, nonatomic) IBOutlet UIButton *authorButton;
@property (weak, nonatomic) IBOutlet UIButton *nextButton;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *copButton;
@property (weak, nonatomic) IBOutlet UILabel *iconQuote;
@property (weak, nonatomic) IBOutlet UILabel *titleQuoteText;

@property Quote* quote;
@property NSString* senderIdentifier;
@property Manager* m;

@end
