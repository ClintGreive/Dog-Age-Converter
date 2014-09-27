//
//  CGViewController.m
//  Age of Bailey
//
//  Created by Clint Greive on 17/08/2014.
//

#import "CGViewController.h"

@interface CGViewController ()

@end

@implementation CGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)convertToDogYearsButtonPressed:(UIButton *)sender
{
    // integer var assigned to yearsTextField text box accepting an integer value only
    int humanYears = [self.yearsTextField.text intValue];
    [self.yearsTextField resignFirstResponder]; // removing the keyboard
    int dogYears = humanYears * 7; // integer var dogYears assigned calculation of humanYears var
    self.yearsLabel.text = [NSString stringWithFormat:@"%i", dogYears]; // output to yearsLable obj dogYears value converted to a string from integer
}

- (IBAction)convertToRealDogYearsButtonPressed:(UIButton *)sender
{
    int humanYears = [self.yearsTextField.text intValue];
    [self.yearsTextField resignFirstResponder];
    int dogYears;
    if (humanYears > 2){
        dogYears = (10.5 * 2) + ((humanYears - 2) * 4);
        self.commentField.text = @"He's our beautiful boy!";
    } else {
        dogYears = 10.5 * humanYears;
        self.commentField.text = @"He's only a puppy!";
    }
    self.realYearsLabel.text = [NSString stringWithFormat:@"%i", dogYears];
}
@end