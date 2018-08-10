//
//  Quote.m
//  GoodQuote
//
//  Created by Ada 2018 on 22/03/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

#import "Quote.h"

@implementation Quote

    -(id)initWithText:(NSString *)text andAuthor:(Author *)author {
        _text = text;
        _author = author;
        return self;
    }

@end
