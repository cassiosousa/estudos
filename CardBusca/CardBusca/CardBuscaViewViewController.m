//
//  CardBuscaViewViewController.m
//  CardBusca
//
//  Created by Cássio Sousa on 01/09/17.
//  Copyright © 2017 Cassio Sousa. All rights reserved.
//

#import "CardBuscaViewViewController.h"

@interface CardBuscaViewViewController ()
@property (weak, nonatomic) IBOutlet UILabel *teste;
@end

@implementation CardBuscaViewViewController
@synthesize  view;
@synthesize teste;
- (void)viewDidLoad {
    //[super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    view.layer.masksToBounds = NO;
    view.layer.shadowColor = [UIColor colorWithRed:204 green:0 blue:0 alpha:0.5].CGColor;

    view.layer.shadowOpacity = 0.5;
    view.layer.shadowOffset = CGSizeMake(0,2);
    view.layer.shadowRadius = 4;
    view.layer.shadowPath = [UIBezierPath bezierPathWithRect:view.bounds].CGPath;
    view.layer.shadowOpacity = 0.5;
    
    NSMutableAttributedString *mutableAttString = [[NSMutableAttributedString alloc] init];
    
    NSAttributedString *rs;
    rs = [[NSAttributedString alloc] initWithString:@"R$" attributes:@{ NSFontAttributeName : [UIFont fontWithName:@"Roboto-Medium" size:13], NSUnderlineStyleAttributeName : @0 , NSForegroundColorAttributeName : [UIColor colorWithRed:76/255.0 green:185/255.0 blue:80/255.0 alpha:1]}]; //1
    
    NSAttributedString *milhar;
    milhar = [[NSAttributedString alloc] initWithString:@"1.098" attributes:@{ NSFontAttributeName : [UIFont fontWithName:@"Roboto-Medium" size:28], NSUnderlineStyleAttributeName : @0 , NSForegroundColorAttributeName : [UIColor colorWithRed:76/255.0 green:185/255.0 blue:80/255.0 alpha:1]}];
    
    NSAttributedString *decimal;
    decimal = [[NSAttributedString alloc] initWithString:@",00" attributes:@{ NSFontAttributeName : [UIFont fontWithName:@"Roboto-Medium" size:18], NSUnderlineStyleAttributeName : @0 , NSForegroundColorAttributeName : [UIColor colorWithRed:76/255.0 green:185/255.0 blue:80/255.0 alpha:1]}];
    
    [mutableAttString appendAttributedString:rs];
    [mutableAttString appendAttributedString:milhar];
    [mutableAttString appendAttributedString:decimal];
    
    teste.attributedText = mutableAttString;
    
    

}

- (void)didReceiveMemoryWarning {
   // [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    if ((self = [super initWithCoder:aDecoder])) {
        [self addSubview:[[[NSBundle mainBundle] loadNibNamed:@"CardBuscaViewViewController" owner:self options:nil] objectAtIndex:0]];
    }
    return self; }

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
