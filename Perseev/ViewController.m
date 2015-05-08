//
//  ViewController.m
//  Perseev
//
//  Created by Lakshmi Kanta Maity on 06/05/15.
//  Copyright (c) 2015 SbrTech. All rights reserved.
//

#import "ViewController.h"
#import "Frame1.h"
#import "Frame4.h"

typedef enum {
    ImageTypeNone,
    ImageTypeOne,
    ImageTypeTwo
} ImageCout;

@interface ViewController ()
@property (assign) ImageCout ImageCoutType;
@property (nonatomic,retain) UIImageView *DataImage;
@end

@implementation ViewController

- (void)viewDidLoad {
    
    /**
     *  Set background color
     */
    
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor ColorPersevBlackColor]];
    [self.view setNeedsLayout];
    
    _ImageCoutType = ImageTypeOne;
    
    _DataImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"frontbg"]];
    //[_DataImage setContentMode:UIViewContentModeScaleAspectFill];
    [_DataImage setFrame:self.view.frame];
    [self.view addSubview:_DataImage];
    
    [NSTimer scheduledTimerWithTimeInterval:3.0
                                     target:self
                                   selector:@selector(reloadImage)
                                   userInfo:nil
                                    repeats:YES];
    
    /**
     *  Set single tap
     */
    
    UITapGestureRecognizer *SingletapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapGesture:)];
    SingletapGesture.numberOfTapsRequired = 1;
    [self.view addGestureRecognizer:SingletapGesture];
    
    /**
     *  Set double tap
     */
    
    UITapGestureRecognizer *DoubletapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapGesture:)];
    DoubletapGesture.numberOfTapsRequired = 2;
    [self.view addGestureRecognizer:DoubletapGesture];
    
    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipe:)];
    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipe:)];
    
    // Setting the swipe direction.
    [swipeLeft setDirection:UISwipeGestureRecognizerDirectionLeft];
    [swipeRight setDirection:UISwipeGestureRecognizerDirectionRight];
    
    // Adding the swipe gesture on image view
    [self.view addGestureRecognizer:swipeLeft];
    [self.view addGestureRecognizer:swipeRight];
    
    UIView *TopBgView =[[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 100)];
    [TopBgView setBackgroundColor:[UIColor blackColor]];
    [TopBgView.layer setOpacity:0.7f];
    [self.view addSubview:TopBgView];
    
    UIImageView *TopBgImageView =[[UIImageView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2-87, 20, 184, 54)];
    [TopBgImageView setBackgroundColor:[UIColor clearColor]];
    [TopBgImageView setImage:[UIImage imageNamed:@"logonew"]];
    [self.view addSubview:TopBgImageView];
    
    UIView *FooterBgView =[[UIView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height-70, self.view.frame.size.width, 70)];
    [FooterBgView setBackgroundColor:[UIColor blackColor]];
    [FooterBgView.layer setOpacity:0.7f];
    [self.view addSubview:FooterBgView];
    
    UILabel *LocationLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, self.view.frame.size.height-50, self.view.frame.size.width, 20)];
    [LocationLabel setFont:[UIFont fontWithName:@"MinionPro-Regular" size:23]];
    [LocationLabel setTextColor:[UIColor whiteColor]];
    [LocationLabel setBackgroundColor:[UIColor clearColor]];
    [LocationLabel setText:@"Paris, France"];
    [self.view addSubview:LocationLabel];
    
    UILabel *TimeAgoLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, self.view.frame.size.height-30, self.view.frame.size.width/2, 20)];
    [TimeAgoLabel setFont:[UIFont fontWithName:@"MinionPro-Regular" size:14]];
    [TimeAgoLabel setTextColor:[UIColor whiteColor]];
    [TimeAgoLabel setBackgroundColor:[UIColor clearColor]];
    [TimeAgoLabel setText:@"4 hours ago"];
    [self.view addSubview:TimeAgoLabel];
    
    UILabel *CopyRightLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2, self.view.frame.size.height-30, self.view.frame.size.width/2, 20)];
    [CopyRightLabel setFont:[UIFont fontWithName:@"MinionPro-Regular" size:14]];
    [CopyRightLabel setTextColor:[UIColor whiteColor]];
    [CopyRightLabel setBackgroundColor:[UIColor clearColor]];
    [CopyRightLabel setText:@"Copyright \u00A9 Perseev 2015"];
    [self.view addSubview:CopyRightLabel];
    
}
- (void)handleSwipe:(UISwipeGestureRecognizer *)swipe {
    
    Frame4 *SwipeFrame = [[Frame4 alloc] init];
   // [super GotoDifferentViewWithAnimation:SwipeFrame];
    
    /**
     *  No need for differenciate, but still if needed to recognize the swipe
     */
    
    if (swipe.direction == UISwipeGestureRecognizerDirectionLeft) {
        NSLog(@"Right Swipe");
        [super GotoDifferentViewWithAnimation:SwipeFrame];
    }
    if (swipe.direction == UISwipeGestureRecognizerDirectionRight) {
        NSLog(@"Right Swipe");
        [super GotoDifferentViewWithAnimation:SwipeFrame];
    }
}
-(void)reloadImage
{
    if (_ImageCoutType == ImageTypeOne) {
        [_DataImage setImage:[UIImage imageNamed:@"articleLarge.jpg"]];
        _ImageCoutType = ImageTypeTwo;
    } else {
        [_DataImage setImage:[UIImage imageNamed:@"frontbg"]];
        _ImageCoutType = ImageTypeOne;
    }
}
- (void)handleTapGesture:(UITapGestureRecognizer *)sender {
    /**
     *  Tap recognized
     */
    if (sender.state == UIGestureRecognizerStateRecognized) {
        UIViewController *Controller = [[Frame1 alloc] init];
        [super GotoDifferentViewWithAnimation:Controller];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
