//
//  Consultant.h
//  jack
//
//  Created by Apple on 12/01/17.
//  Copyright © 2017 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Skills.h"

@interface Consultant : NSObject

@property(strong,nonatomic)NSString *empID;
@property(strong,nonatomic)Skills *skills;

@end
