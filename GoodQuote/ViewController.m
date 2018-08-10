//
//  ViewController.m
//  GoodQuote
//
//  Created by Ada 2018 on 21/03/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

#import "ViewController.h"
#import "QuoteViewController.h"
#import "TableViewController.h"

@interface ViewController ()
    @property (weak, nonatomic) IBOutlet UIButton *allQuotesBtn;
    
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _m = [Manager new];
    
    _allQuotesBtn.layer.borderWidth = 1.0f;
    _allQuotesBtn.layer.borderColor = [UIColor colorWithRed:1.00 green:0.49 blue:0.47 alpha:1.0].CGColor;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (void)viewWillAppear:(BOOL)animated {
//    [self.navigationController setNavigationBarHidden:YES animated:animated];
//    [super viewWillAppear:animated];
//}
//
//
//- (void)viewWillDisappear:(BOOL)animated {
//    [self.navigationController setNavigationBarHidden:NO animated:animated];
//    [super viewWillDisappear:animated];
//}
- (IBAction)didSelectButton:(id)sender {
    [self performSegueWithIdentifier:@"randomQuote" sender: sender];
}
- (IBAction)didSelectAllQuotes:(id)sender {
    [self performSegueWithIdentifier:@"allQuotes" sender: sender];
}

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"randomQuote"]) {
        QuoteViewController *data = segue.destinationViewController;
        data.m = _m;
        data.senderIdentifier = @"randomQuote";
    }
    if ([segue.identifier isEqualToString:@"allQuotes"]) {
        TableViewController *data = segue.destinationViewController;
        data.m = _m;
    }
}

@end
