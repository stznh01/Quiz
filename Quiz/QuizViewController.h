//
//  QuizViewController.h
//  Quiz
//
//  Created by bo on 1/15/14.
//  Copyright (c) 2014 bo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController
{
    int currQuestionIndex;
    
    // the model objects
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    // the view objects
    //IBOutlet UILabel *questionField;
    //IBOutlet UILabel *answerField;
}

- (IBAction)showQuestion:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
- (IBAction)showAnswer:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;

@end




