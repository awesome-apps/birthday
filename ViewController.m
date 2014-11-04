//
//  ViewController.m
//  birthday
//
//  Created by Tejaswi Vemulapati on 11/2/14.
//  Copyright (c) 2014 Tejaswi Vemulapati. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end
@implementation ViewController

@synthesize image;  //synthesize UIImage
//set variables at the beginning of app-time
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the
    age = NULL;
    name = NULL;
    greeting = NULL;
    yourName = NULL;
    message = NULL;
    party = FALSE;
    kids = FALSE;
    cake = FALSE;
    pop = FALSE;
    finalcard = NULL;
}
//check memory warning
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//start building card
- (IBAction)startProject:(id)sender {
    _ageEntry.hidden = FALSE;
    _nameEntry.hidden = FALSE;
    _yourNameEntry.hidden = FALSE;
    _messageEntry.hidden = FALSE;
    image.hidden = FALSE;
    _editButton.hidden = FALSE;
    _partyButton.hidden = FALSE;
    _popButton.hidden = FALSE;
    _cakeButton.hidden = FALSE;
    _kidsButton.hidden = FALSE;
    _createButton.hidden = FALSE;
}
//image functions (set booleans)
- (IBAction)setParty:(id)sender {
    party = TRUE;
    kids = FALSE;
    cake = FALSE;
    pop = FALSE;
}

- (IBAction)setPop:(id)sender {
    party = FALSE;
    kids = FALSE;
    cake = FALSE;
    pop = TRUE;
}

- (IBAction)setCake:(id)sender {
    cake = TRUE;
    party = FALSE;
    pop = FALSE;
    kids = FALSE;
}

- (IBAction)setKids:(id)sender {
    kids = TRUE;
    cake = FALSE;
    party = FALSE;
    pop = FALSE;
}
//creating/finalizing card
- (IBAction)createCard:(id)sender {
    age = [NSString stringWithFormat:@"You are %@ years old!", _ageEntry.text];
    name = [NSString stringWithFormat:@"%@", _nameEntry.text];
    greeting = [NSString stringWithFormat:@"Happy Birthday %@!", name];
    yourName = [NSString stringWithFormat:@"From %@", _yourNameEntry.text];
    message = [NSString stringWithFormat:@"%@", _messageEntry.text];
    if(party){
        [image setImage:[UIImage imageNamed:@"partyhat.jpg"]];
    }
    if(cake){
        [image setImage:[UIImage imageNamed:@"kids.jpeg"]];
    }
    if(party){
        [image setImage:[UIImage imageNamed:@"balloons.jpeg"]];
    }
    if(pop){
        [image setImage:[UIImage imageNamed:@"cake.jpeg"]];
    }
    else{
        [image setImage:[UIImage imageNamed:@"balloons.jpeg"]];
    }
    //set labels here
    self.view.backgroundColor = [UIColor whiteColor];
    finalcard = [NSString stringWithFormat:@"%@ %@ %@ %@ %@", greeting, name, age, message, yourName];
    _finalmessage.text = finalcard;
    _ageEntry.hidden = TRUE;
    _nameEntry.hidden = TRUE;
    _yourNameEntry.hidden = TRUE;
    _messageEntry.hidden = TRUE;
    image.hidden = TRUE;
    _editButton.hidden = FALSE;
    _partyButton.hidden = TRUE;
    _popButton.hidden = TRUE;
    _cakeButton.hidden = TRUE;
    _kidsButton.hidden = TRUE;
    _createButton.hidden = TRUE;
}
//editing card that has been created
- (IBAction)editCard:(id)sender {
    _ageEntry.hidden = FALSE;
    _nameEntry.hidden = FALSE;
    _yourNameEntry.hidden = FALSE;
    _messageEntry.hidden = FALSE;
    image.hidden = FALSE;
    _editButton.hidden = FALSE;
    _partyButton.hidden = FALSE;
    _popButton.hidden = FALSE;
    _cakeButton.hidden = FALSE;
    _kidsButton.hidden = FALSE;
    _createButton.hidden = FALSE;
}
//screen-tap to dismiss text-fields
- (IBAction)canvasTapped:(id)sender {
    [self.view endEditing:YES];
}
@end
