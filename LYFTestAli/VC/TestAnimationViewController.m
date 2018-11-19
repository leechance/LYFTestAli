//
//  TestAnimationViewController.m
//  FaceOffer
//
//  Created by chance on 2018/11/19.
//  Copyright © 2018 chance. All rights reserved.
//

#import "TestAnimationViewController.h"
#import "UIColor+Hex.h"



@interface TestAnimationViewController ()

@end

@implementation TestAnimationViewController
{
    NSMutableArray*dataSourceArray;
    __weak IBOutlet UIImageView *basketBall;
}
//将字符串@“abcdefghijklmn”中的efg 截取出来替换成 gfe
-(void)replaceString{
    NSString*targetSting=@"abcdefghijklmn";
    NSString*destSting=[targetSting stringByReplacingOccurrencesOfString:@"efg" withString:@"gfe"];
    NSLog(@"新字符串：%@",destSting);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self replaceString];
    
    self.view.backgroundColor=[UIColor colorWithHexString:@"0x12237d"];
    self.view.backgroundColor=colorWithHexStr(@"0x12237d");
}


- (IBAction)touchBtn:(id)sender {
      [UIView beginAnimations:@"movement" context:nil];
      [UIView setAnimationCurve:UIViewAnimationCurveEaseIn]; //<label id="code.timingcurve.easeIn"/>
      [UIView setAnimationDuration:1.0f];
      [UIView setAnimationRepeatCount:3];
      [UIView setAnimationRepeatAutoreverses:YES];
      CGPoint center = basketBall.center;
      if(center.y > 85.0f) {
            center.y -= 295.0f;
            basketBall.center = center;
          } else {
                center.y += 295.0f;
                basketBall.center = center;
              }
      [UIView commitAnimations];

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
