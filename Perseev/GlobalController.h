//
//  GlobalController.h
//  Perseev
//
//  Created by Mac on 23/02/15.
//  Copyright (c) 2015 Perseev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIColor+Perseev.h"

typedef enum {
    UserSubscriptionTypeUnSubscribed,
    UserSubscriptionTypeSubscribed
} UserSubscriptionType;

@interface GlobalController : UIViewController

-(void)GotoLandingScreen;
-(void)GotoLoginScreen;
-(void)GotoRegisterScreen;
-(void)GotoForgetPasswordScreen;
-(void)GotoForgetPasswordThanksScreen;
-(void)GotoAddInfoScreen;
-(void)GotoDashboardScreen;
-(void)DealllocLoader;
-(void)LoadingActivityStartWithView:(UIView *)MainView;
-(void)LoadingActivityStopWithView:(UIView *)MainView;
-(UIView *)StartSquareLoaderWithBlurEffect:(BOOL)AddBlurEffect Color:(UIColor *)ParamColor;
-(void)GotoDifferentViewWithAnimation:(UIViewController *)ViewControllerName;
-(UIView *)CreateViewHeaderWithBackButton:(BOOL)BoolBackOption;
-(void)SetUserSubscriptionType:(UserSubscriptionType)UserSubscriptionType;
-(NSString *)GetUserSubscriptionType;
-(void)UnsetUserSubsscription;
@end
