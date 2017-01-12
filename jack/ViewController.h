//
//  ViewController.h
//  jack
//
//  Created by Apple on 12/01/17.
//  Copyright © 2017 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Consultant.h"

typedef void(^Amadeus)(Consultant*);
@interface ViewController : UIViewController

@property(copy, nonatomic)Amadeus lovely;

-(void)iWillDoThis:(Skills*)someSkills withCompletionHandler:(void(^)(Consultant * consultant))animations;

@end

