//
//  QuoteViewController.m
//  GoodQuote
//
//  Created by Ada 2018 on 26/03/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

#import "QuoteViewController.h"
#import "AuthorViewController.h"

@interface QuoteViewController ()

@end

@implementation QuoteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if ([_senderIdentifier isEqualToString:@"randomQuote"]) {
        _quote = [_m randomQuote];
    }
    
    _authorButton.layer.borderWidth = 1.0f;
    _authorButton.layer.borderColor = [UIColor colorWithRed:1.00 green:0.49 blue:0.47 alpha:1.0].CGColor;
    
    _quoteText.text = [NSString stringWithFormat:@"\"%@\"", _quote.text] ;
    _iconQuote.text = [_m randomSimbol];
    _titleQuoteText.text = [_m randomTitle];
    
    NSAttributedString *attributedTitle = [_authorButton attributedTitleForState:UIControlStateNormal];
    NSMutableAttributedString *mas = [[NSMutableAttributedString alloc] initWithAttributedString:attributedTitle];
    [mas.mutableString setString:_quote.author.name];
    [_authorButton setAttributedTitle:mas forState:UIControlStateNormal];
    
    _nextButton.hidden = ![_senderIdentifier isEqualToString:@"randomQuote"];
    
    if ([_senderIdentifier isEqualToString:@"allAuthorQuotes"]){
        _authorButton.enabled = NO;
        _authorButton.layer.borderWidth = 0.0f;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
    
- (IBAction)didSelectButton:(id)sender {
    [self performSegueWithIdentifier:@"viewAuthor" sender: sender];
}
    
- (IBAction)nextButtonPressed:(id)sender {
    [self viewDidLoad];
    [self viewWillAppear:YES];
}
- (IBAction)copButtonAction:(id)sender {
    UIPasteboard *pb = [UIPasteboard generalPasteboard];
    NSString *copString = [NSString stringWithFormat:@"\"%@\" -%@ #GoodQuoteApp Download on AppStore <3",_quote.text, _quote.author.name ];
    [pb setString:copString];
    
    NSString *message = @"Quote copied!";
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:message preferredStyle:UIAlertControllerStyleAlert];
    [self presentViewController:alert animated:YES completion:nil];
    int duration = 1; 
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, duration * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        [alert dismissViewControllerAnimated:YES completion:nil];
    });
}
    

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"viewAuthor"]) {
        AuthorViewController *data = segue.destinationViewController;
        data.m = _m;
        data.author = _quote.author;
    }
}


@end
