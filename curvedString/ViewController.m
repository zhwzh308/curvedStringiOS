//
//  ViewController.m
//  curvedString
//
//  Created by Wenzhong Zhang on 2014-11-16.
//  Copyright (c) 2014 Wenzhong Zhang. All rights reserved.
//

#import "ViewController.h"
#import "curvedLabel.h"

@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet curvedLabel *curvedStringLabel;
@property (weak, nonatomic) IBOutlet UISlider *radiusSlider;
@property (weak, nonatomic) IBOutlet UITextField *textString;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _curvedStringLabel.radius = _radiusSlider.value;
    _curvedStringLabel.string = _textString.text;
    _curvedStringLabel.transform = CGAffineTransformMakeScale(1.f, -1.f);
    //_curvedStringLabel.font = [
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)updateRadius:(UISlider *)sender {
    _curvedStringLabel.radius = _radiusSlider.value;
    [_curvedStringLabel setNeedsDisplay];
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    NSLog(@"update text");
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    _curvedStringLabel.string = textField.text;
    [_curvedStringLabel setNeedsDisplay];
    return NO;
}

@end
