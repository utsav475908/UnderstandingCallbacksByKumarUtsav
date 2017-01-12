//
//  AnotherViewController.m
//  jack
//
//  Created by Apple on 12/01/17.
//  Copyright © 2017 Apple. All rights reserved.
//

#import "AnotherViewController.h"
#import "ViewController.h"
#import "Consultant.h"

@interface AnotherViewController ()
@property(strong,nonatomic)ViewController *vc;
@end

@implementation AnotherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.vc = [[ViewController alloc]init];
    Skills *skills = [[Skills alloc]init];
    skills.playerCompany = @"something";
    [self.vc iWillDoThis:skills withCompletionHandler:^(Consultant *consultant) {
        NSLog(@"the consultant is %@",consultant.skills.playerCompany);
    }];
    [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(doThis) userInfo:nil repeats:YES];
    
    // Do any additional setup after loading the view.
}

-(void)doThis{
    if(self.vc.lovely){
        Consultant *con = [[Consultant alloc]init];
        Skills *skills = [[Skills alloc]init];
        skills.playerCompany = @"Amadeus";
        
        con.empID = @"3223";
        con.skills = skills;
        self.vc.lovely(con);
    }
 
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
