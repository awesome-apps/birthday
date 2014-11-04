//
//  ViewController.h
//  birthday
//
//  Created by Tejaswi Vemulapati on 11/2/14.
//  Copyright (c) 2014 Tejaswi Vemulapati. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    NSString *age;
    NSString *name;
    NSString *greeting;
    NSString *yourName;
    NSString *message;
    NSString *finalcard;
    bool party;
    bool kids;
    bool cake;
    bool pop;
}
- (IBAction)startProject:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *ageEntry;
@property (strong, nonatomic) IBOutlet UITextField *nameEntry;
@property (strong, nonatomic) IBOutlet UITextField *yourNameEntry;
@property (strong, nonatomic) IBOutlet UITextField *messageEntry;
@property (strong, nonatomic) IBOutlet UIImageView *image;
@property (strong, nonatomic) IBOutlet UITextView *finalmessage;
@property (strong, nonatomic) IBOutlet UIButton *editButton;
@property (strong, nonatomic) IBOutlet UIButton *partyButton;
@property (strong, nonatomic) IBOutlet UIButton *popButton;
@property (strong, nonatomic) IBOutlet UIButton *cakeButton;
@property (strong, nonatomic) IBOutlet UIButton *kidsButton;
@property (strong, nonatomic) IBOutlet UIButton *createButton;

- (IBAction)setParty:(id)sender;
- (IBAction)setPop:(id)sender;
- (IBAction)setCake:(id)sender;
- (IBAction)setKids:(id)sender;
- (IBAction)createCard:(id)sender;
- (IBAction)editCard:(id)sender;
- (IBAction)canvasTapped:(id)sender;

@end
