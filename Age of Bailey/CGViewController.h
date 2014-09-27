//
//  CGViewController.h
//  Age of Bailey
//
//  Created by Clint Greive on 17/08/2014.
//
//

#import <UIKit/UIKit.h>

@interface CGViewController : UIViewController

// IB Outlets

@property (strong, nonatomic) IBOutlet UILabel *yearsLabel;

@property (strong, nonatomic) IBOutlet UILabel *realYearsLabel;

@property (strong, nonatomic) IBOutlet UITextField *yearsTextField;

@property (strong, nonatomic) IBOutlet UILabel *commentField;

// IB Actions

- (IBAction)convertToDogYearsButtonPressed:(UIButton *)sender;

- (IBAction)convertToRealDogYearsButtonPressed:(UIButton *)sender;
@end
