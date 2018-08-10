//
//  AuthorViewController.m
//  GoodQuote
//
//  Created by Ada 2018 on 27/03/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

#import "AuthorViewController.h"
#import "TableViewController.h"

@interface AuthorViewController ()
    @property (weak, nonatomic) IBOutlet UIImageView *authorImg;
    @property (weak, nonatomic) IBOutlet UILabel *authorName;
    @property (weak, nonatomic) IBOutlet UITextView *authorBio;
    
@end

@implementation AuthorViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [_authorImg setImage:_author.image];
    _authorName.text = _author.name;
    _authorBio.text = _author.bio;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)didButtonSelected:(id)sender {
    [self performSegueWithIdentifier:@"seeAuthorQuotes" sender: sender];
}
    

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"seeAuthorQuotes"]) {
        TableViewController *data = segue.destinationViewController;
        data.m = _m;
        data.author = _author;
    }
}


@end
