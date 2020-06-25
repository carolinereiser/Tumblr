//
//  SummaryViewController.m
//  Tumblr
//
//  Created by Caroline Reiser on 6/25/20.
//  Copyright © 2020 Caroline Reiser. All rights reserved.
//

#import "SummaryViewController.h"
#import "UIImageView+AFNetworking.h"

@interface SummaryViewController ()
@property (weak, nonatomic) IBOutlet UITextView *summaryLabel;
@end

@implementation SummaryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *tempSummary = self.post[@"caption"];
    NSString *summary = [tempSummary substringWithRange:NSMakeRange(3, [tempSummary length]-12)];
    
    self.summaryLabel.text = summary;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
