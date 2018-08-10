//
//  Author.h
//  GoodQuote
//
//  Created by Ada 2018 on 22/03/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Quote;

@interface Author : NSObject
    @property NSString *name;
    @property NSString *bio;
    @property NSMutableArray *quotes;
    @property UIImage *image;

    -(id) initWithName:(NSString*)name andBio:(NSString*)bio andImage:(UIImage*)image;
    -(void) addQuote: (Quote*)quote;
@end
