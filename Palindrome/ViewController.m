//
//  ViewController.m
//  Palindrome
//
//  Created by Jonathan Edgar on 2/2/17.
//  Copyright © 2017 Jonathan Edgar. All rights reserved.
//

#import "ViewController.h"
#import "Palindrome.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//reports the answer to label
-(IBAction) getAnswerButton {
    
    Palindrome *answer = [[Palindrome alloc]init];
    NSString *word = self.isPalindromeField.text;
    self.isPalindromeLabel.text = [NSString stringWithFormat:@"%@", [answer isPalindrome:word]];
    
}

@end
