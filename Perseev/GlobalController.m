//
//  GlobalController.m
//  Perseev
//
//  Created by Mac on 23/02/15.
//  Copyright (c) 2015 Perseev. All rights reserved.
//

#import "GlobalController.h"
#import <QuartzCore/QuartzCore.h>
#import "Frame1.h"

@interface GlobalController () {
    // RZSquaresLoading *_square;
    UIActivityIndicatorView *LoaderView;
}

@property (assign) UserSubscriptionType AssignUserSubscription;
@end

@implementation GlobalController

-(UIView *)StartSquareLoaderWithBlurEffect:(BOOL)AddBlurEffect Color:(UIColor *)ParamColor
{
    
    UIView *Viewlayer = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    [Viewlayer setBackgroundColor:[UIColor clearColor]];
    
    UIView *ViewlayerOne = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    [ViewlayerOne setBackgroundColor:ParamColor];
    [ViewlayerOne.layer setOpacity:0.7f];
    [Viewlayer addSubview:ViewlayerOne];
    
    UIView *ViewlayerTwo = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    [ViewlayerTwo setBackgroundColor:[UIColor clearColor]];
    [Viewlayer addSubview:ViewlayerTwo];
    
    /**_square = [[RZSquaresLoading alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width - 36) / 2,
                                                                 ([[UIScreen mainScreen] bounds].size.height - 36) / 2+160,
                                                                 36,
                                                                 36)];
    _square.color = [UIColor ColorPersevRedColor];
    [ViewlayerTwo addSubview:_square];
    **/
    return Viewlayer;
}

-(void)DealllocLoader
{
    //_square = nil;
}

-(UIView *)CreateViewHeaderWithBackButton:(BOOL)BoolBackOption
{
    UIView *HeaderView = [[UIView alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].origin.x, [[UIScreen mainScreen] bounds].origin.y, [[UIScreen mainScreen] bounds].size.width, 60)];
    //[HeaderView.layer setShadowColor:[UIColor lightGrayColor].CGColor];
    //[HeaderView.layer setShadowOffset:CGSizeMake([[UIScreen mainScreen] bounds].size.width, 10)];
    //[HeaderView.layer setBackgroundColor:[UIColor ColorPersevBlackColor].CGColor];
    HeaderView.layer.masksToBounds = NO;
    HeaderView.layer.cornerRadius = 0; // if you like rounded corners
    //HeaderView.layer.shadowOffset = CGSizeMake(0, 10);
    //HeaderView.layer.shadowRadius = 5;
    //HeaderView.layer.shadowOpacity = 0.5;
    
    UIImageView *LogoImage = [[UIImageView alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width/2-50, 20, 100, 25)];
    [LogoImage setBackgroundColor:[UIColor clearColor]];
    [LogoImage setImage:[UIImage imageNamed:@"perseev_final_25012013"]];
    [HeaderView addSubview:LogoImage];
    
    if (BoolBackOption) {
        
        UIImageView *BackImage = [[UIImageView alloc] initWithFrame:CGRectMake(10, 20, 24, 24)];
        [BackImage setBackgroundColor:[UIColor clearColor]];
        [BackImage setImage:[UIImage imageNamed:@"backimg"]];
        [HeaderView addSubview:BackImage];
        
        UIButton *BackButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 200, 60)];
        [BackButton setBackgroundColor:[UIColor clearColor]];
        [BackButton addTarget:self action:@selector(goBackToPrev) forControlEvents:UIControlEventTouchUpInside];
        [HeaderView addSubview:BackButton];
        
    }
    
    return HeaderView;
}

-(void)goBackToPrev
{
    CATransition* transition = [CATransition animation];
    transition.duration = 0.25f;
    transition.type = kCATransitionFade;
    [self.navigationController.view.layer addAnimation:transition forKey:kCATransition];
    [self.navigationController popViewControllerAnimated:NO];
}

-(void)GotoDifferentViewWithAnimation:(UIViewController *)ViewControllerName {
    
    CATransition* transition = [CATransition animation];
    transition.duration = 0.25f;
    transition.type = kCATransitionFade;
    [self.navigationController.view.layer addAnimation:transition forKey:kCATransition];
    [self.navigationController pushViewController:ViewControllerName animated:NO];
    
}

-(void)GotoLandingScreen
{
    Frame1 *DatalandingScreen = [[Frame1 alloc] init];
    [self GotoDifferentViewWithAnimation:DatalandingScreen];
}

-(void)GotoLoginScreen
{
   
}

-(void)GotoRegisterScreen
{
}
-(void)GotoForgetPasswordScreen
{
}

-(void)GotoForgetPasswordThanksScreen
{
}

-(void)GotoAddInfoScreen
{
}

-(void)GotoDashboardScreen
{
}

-(void)LoadingActivityStartWithView:(UIView *)MainView
{
    LoaderView = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(MainView.layer.frame.size.width/2-16, MainView.layer.frame.size.height/2-16, 32, 32)];
    [LoaderView setBackgroundColor:[UIColor clearColor]];
    [LoaderView setHidesWhenStopped:YES];
    [LoaderView startAnimating];
    [LoaderView setColor:[UIColor ColorPersevRedColor]];
    [LoaderView setHidden:NO];
    [LoaderView setUserInteractionEnabled:NO];
    [MainView addSubview:LoaderView];
}

-(void)LoadingActivityStopWithView:(UIView *)MainView
{
    [LoaderView stopAnimating];
    [LoaderView removeFromSuperview];
}

-(void)SetUserSubscriptionType:(UserSubscriptionType)UserSubscriptionType
{
    NSUserDefaults *Pref = [NSUserDefaults standardUserDefaults];
    if (_AssignUserSubscription == UserSubscriptionTypeSubscribed) {
        [Pref setObject:@"S" forKey:@"UserSubscription"];
    } else {
        [Pref setObject:@"US" forKey:@"UserSubscription"];
    }
    [Pref synchronize];
}
-(NSString *)GetUserSubscriptionType
{
    NSUserDefaults *Pref = [NSUserDefaults standardUserDefaults];
    NSString *DataString = [Pref objectForKey:@"UserSubscription"];
    [Pref synchronize];
    return DataString;
}
-(void)UnsetUserSubsscription
{
    NSUserDefaults *Pref = [NSUserDefaults standardUserDefaults];
    [Pref setObject:@"" forKey:@"UserSubscription"];
    [Pref synchronize];
}
@end
