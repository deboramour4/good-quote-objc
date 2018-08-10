//
//  Manager.h
//  GoodQuote
//
//  Created by Ada 2018 on 22/03/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Quote.h"
#import "Author.h"

@interface Manager : NSObject
    @property NSMutableArray* authors;
    @property NSMutableArray *quotes;
    @property NSMutableArray *simbols;
    @property NSMutableArray *titles;

    -(Quote*)randomQuote;
    -(NSString*)randomSimbol;
    -(NSString*)randomTitle;
    -(Author*)findAuthorByName:(NSString*)name;

@end
