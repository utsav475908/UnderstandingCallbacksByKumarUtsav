//
//  ViewController.m
//  jack
//
//  Created by Apple on 12/01/17.
//  Copyright © 2017 Apple. All rights reserved.
//

#import "ViewController.h"
#import "Consultant.h"

typedef void(^Amadeus)(Consultant*);

@interface ViewController ()
@property(copy, nonatomic)Amadeus lovely;
@property(strong,nonatomic)NSTimer *timer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //
    //__block Consultant *ds;
    //self.lovely = (void (^)(Consultant *consult))
    Skills *s = [[Skills alloc]init];
    [self iWillDoThis:s withCompletionHandler:^(Consultant *consultant) {
        NSLog(@"the consultant value is %@",consultant.skills.playerCompany);
    }];
    [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(someEvent) userInfo:nil repeats:YES];
    
    
}

    // Do any additional setup after loading the view, typically from a nib.


-(void)someEvent {
    if(self.lovely){
        Consultant *con = [[Consultant alloc]init];
        Skills *skills = [[Skills alloc]init];
        skills.playerCompany = @"Amadeus";
        
        con.empID = @"3223";
        con.skills = skills;
        self.lovely(con);
    }
}



//-(void)iWillDoThis:(Skills*)someSkills withCompletionHandler:(Amadeus *)amadeus{
-(void)iWillDoThis:(Skills*)someSkills withCompletionHandler:(void(^)(Consultant * consultant))animations{

    self.lovely = animations;
    

}




@end
