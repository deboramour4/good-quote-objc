//
//  Author.m
//  GoodQuote
//
//  Created by Ada 2018 on 22/03/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

#import "Author.h"

@implementation Author

    -(id)initWithName:(NSString *)name andBio:(NSString *)bio andImage:(UIImage *)image {
        _name = name;
        _bio = bio;
        _image = image;
        _quotes = [NSMutableArray new];
        return self;
    }

    -(void)addQuote:(Quote *)quote {
        [_quotes addObject:quote];
    }
@end
