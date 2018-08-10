//
//  Quote.h
//  GoodQuote
//
//  Created by Ada 2018 on 22/03/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Author.h"

@interface Quote : NSObject
    @property NSString* text;
    @property Author* author;

    -(id)initWithText:(NSString*)text andAuthor:(Author*)author;

@end
