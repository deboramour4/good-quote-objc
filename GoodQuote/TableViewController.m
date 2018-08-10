//
//  TableViewController.m
//  GoodQuote
//
//  Created by Ada 2018 on 23/03/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

#import "TableViewController.h"
#import "QuotesViewCell.h"
#import "QuoteViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (_author != nil) {
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF.author.name contains[cd] %@", _author.name];
        NSMutableArray<Quote*>* filteredArray = [[_m.quotes filteredArrayUsingPredicate:predicate] mutableCopy];
        NSLog(@"HERE %@", filteredArray);
        _quotes = filteredArray;
    }else{
        _quotes = _m.quotes;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_quotes count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    Quote* quote = _quotes[indexPath.row];
    
    QuotesViewCell *cell = (QuotesViewCell*)[tableView dequeueReusableCellWithIdentifier:@"myModel" forIndexPath:indexPath];
    
    cell.quoteText.text = [NSString stringWithFormat:@"\"%@\"", quote.text] ;
    cell.authorName.text = quote.author.name;
    [cell.authorImage setImage:quote.author.image];
    cell.quote = quote;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"viewQuote"]) {
        QuoteViewController *data = segue.destinationViewController;
        QuotesViewCell *cell = (QuotesViewCell*)sender;
        data.quote = cell.quote;
        data.m = _m;
        if (_author != nil) {
            data.senderIdentifier = @"allAuthorQuotes";
        }//else{
//            data.senderIdentifier = @"allAuthorQuotes";
//        }
    }
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    QuotesViewCell *cell = (QuotesViewCell*)[tableView cellForRowAtIndexPath:indexPath];
    [self performSegueWithIdentifier:@"viewQuote" sender: cell];
}

@end
