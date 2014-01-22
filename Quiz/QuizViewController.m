//
//  QuizViewController.m
//  Quiz
//
//  Created by bo on 1/15/14.
//  Copyright (c) 2014 bo. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@end

@implementation QuizViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    started = NO;
    questions = [ [NSMutableArray alloc] init];
    answers = [[NSMutableArray alloc] init];
    currQuestionIndex = 0;
    [questions addObject:@"What is 7+7?"];
    [answers addObject:@"14"];
    
    [questions addObject:@"What is the capital of Vermont?"];
    [answers addObject:@"Montpelier"];
    
    [questions addObject:@"For what is cognac made?"];
    [answers addObject:@"Grapes"];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showQuestion:(id)sender {
    NSLog(@"In showQuestion");
    started = YES;
    if (currQuestionIndex == questions.count) {
        currQuestionIndex = 0;
    }
    questionCall = currQuestionIndex;
    [self.questionLabel setText:[questions objectAtIndex:currQuestionIndex++]];
}
- (IBAction)showAnswer:(id)sender {
    NSLog(@"In showAnswer");
    if (started) {
        [self.answerLabel setText:[answers objectAtIndex:questionCall]];
    }
    
}

@end
