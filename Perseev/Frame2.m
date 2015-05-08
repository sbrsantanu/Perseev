//
//  Frame2.m
//  Perseev
//
//  Created by Lakshmi Kanta Maity on 06/05/15.
//  Copyright (c) 2015 SbrTech. All rights reserved.
//


#import "Frame2.h"
#import "VBPieChart.h"
#import "AppDelegate.h"
#import "ViewController.h"
#import "Frame2.h"
#import "Frame4.h"

typedef enum {
    imagesetnone,
    imagesetone,
    imagesettwo,
    imagesetthree
} imagesettype;

typedef enum
{
    CategorySelectedNone,
    CategorySelectedNews,
    CategorySelectedTechnology,
    CategorySelectedSports,
    CategorySelectedBusiness,
    CategorySelectedEntrainment,
    CategorySelectedScience
} AllCatorySelected;

@interface Frame2 ()<VBPieChartProtocol>
@property (nonatomic, retain) VBPieChart *chart;
@property (nonatomic, retain) NSArray *chartValues;
@property (nonatomic, retain) UIImageView *CenterImageView;
@property (assign) imagesettype ImageSet;
@property (assign) AllCatorySelected SelectedCategory;
@property (nonatomic, retain) UILabel *CategoryLabel;
@property (nonatomic, retain) NSArray *NewsCategoryArray;
@end

@implementation Frame2
-(void)RetunWebserviceDataWithSuccess:(VBPieChart *)DataDelegate ObjectCarrier:(NSDictionary *)ParamObjectCarrier
{
     NSLog(@"-------------%d",[[ParamObjectCarrier objectForKey:@"PiechartSelectedObject"] intValue]-12389);
    switch ([[ParamObjectCarrier objectForKey:@"PiechartSelectedObject"] intValue]-12389) {
        case 0:
        {
            [_CenterImageView setImage:[UIImage imageNamed:(_ImageSet == imagesetone)?@"tech_set_5":(_ImageSet == imagesettwo)?@"tech_set_5":@"tech_set_5"]];
            break;
        }
        case 1:
        {
            [_CenterImageView setImage:[UIImage imageNamed:(_ImageSet == imagesetone)?@"tech_set_4":(_ImageSet == imagesettwo)?@"tech_set_4":@"tech_set_4"]];
            break;
        }
        case 2:
        {
            [_CenterImageView setImage:[UIImage imageNamed:(_ImageSet == imagesetone)?@"tech_set_3":(_ImageSet == imagesettwo)?@"tech_set_3":@"tech_set_3"]];
            break;
        }
        case 3:
        {
            [_CenterImageView setImage:[UIImage imageNamed:(_ImageSet == imagesetone)?@"tech_set_2":(_ImageSet == imagesettwo)?@"tech_set_2":@"tech_set_2"]];
            break;
        }
        case 4:
        {
            [_CenterImageView setImage:[UIImage imageNamed:(_ImageSet == imagesetone)?@"tech_set_7":(_ImageSet == imagesettwo)?@"tech_set_7":@"tech_set_7"]];
            break;
        }
        case 5:
        {
            [_CenterImageView setImage:[UIImage imageNamed:(_ImageSet == imagesetone)?@"tech_set_6":(_ImageSet == imagesettwo)?@"tech_set_6":@"tech_set_6"]];
            break;
        }
    }
}

- (IBAction)valueChangedSlider:(UISlider*)sender {
    
    float value = [sender value];
    
    switch (sender.tag) {
        case 0: {
            
            // [_chart setFrame:CGRectMake(100, 100, value, value)];
            
            NSMutableArray *array = [NSMutableArray arrayWithArray:_chart.chartValues];
            NSMutableDictionary *object = [NSMutableDictionary dictionaryWithDictionary:[array objectAtIndex:sender.tag]];
            [object setObject:[NSNumber numberWithFloat:sender.value] forKey:@"value"];
            [array replaceObjectAtIndex:sender.tag withObject:object];
            _chart.chartValues = array;
            
        }
            break;
        case 1:
            [_chart setRadiusPrecent:value];
            break;
        case 2:
            [_chart setHoleRadiusPrecent:value];
            break;
    }
}

-(void)SetIris
{
    [_CenterImageView setImage:[UIImage imageNamed:(_ImageSet == imagesetone)?@"tech_set_7":(_ImageSet == imagesettwo)?@"tech_set_7":@"tech_set_7"]];
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor ColorPersevBlackColor]];
    [self.view addSubview:[super CreateViewHeaderWithBackButton:NO]];
    [self.view setNeedsLayout];
    
    UIImageView *DataImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"appbg"]];
    [DataImage setFrame:self.view.frame];
    [self.view addSubview:DataImage];
    
    UIButton *Reload_Button = [[UIButton alloc] initWithFrame:CGRectMake(20, 20, 34, 30)];
    [Reload_Button setBackgroundColor:[UIColor clearColor]];
    [Reload_Button addTarget:self action:@selector(ReloadIris) forControlEvents:UIControlEventTouchUpInside];
    [Reload_Button setBackgroundImage:[UIImage imageNamed:@"Ps_reload"] forState:UIControlStateNormal];
    [self.view addSubview:Reload_Button];
    
    UIImageView *LogoImageView = [[UIImageView alloc] initWithFrame:CGRectMake(self.view.layer.frame.size.width/2-16, 20, 32, 31)];
    [LogoImageView setBackgroundColor:[UIColor clearColor]];
    [LogoImageView setImage:[UIImage imageNamed:@"Ps_small-logo"]];
    [self.view addSubview:LogoImageView];
    
    UIButton *MainHomeButton = [[UIButton alloc] initWithFrame:CGRectMake(self.view.layer.frame.size.width/2-26, 20, 52, 31)];
    [MainHomeButton setBackgroundColor:[UIColor clearColor]];
    [MainHomeButton addTarget:self action:@selector(BacktoHome) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:MainHomeButton];
    
    UIButton *Search_Button = [[UIButton alloc] initWithFrame:CGRectMake(265, 16, 38, 39)];
    [Search_Button setBackgroundColor:[UIColor clearColor]];
    [Search_Button setBackgroundImage:[UIImage imageNamed:@"Ps_search"] forState:UIControlStateNormal];
    [self.view addSubview:Search_Button];
    
    UIButton *Menu_Button = [[UIButton alloc] initWithFrame:CGRectMake(330, 20, 28, 28)];
    [Menu_Button setBackgroundColor:[UIColor clearColor]];
    [Menu_Button setBackgroundImage:[UIImage imageNamed:@"Ps_menu"] forState:UIControlStateNormal];
    [self.view addSubview:Menu_Button];
    
    CGRect MainFrame = [[UIScreen mainScreen] bounds];
    _ImageSet = imagesetone;
    
    _CenterImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 150, MainFrame.size.width, MainFrame.size.width)];
    [_CenterImageView.layer setBorderColor:[UIColor redColor].CGColor];
    [self.view addSubview:_CenterImageView];
    
    if (!_chart) {
        _chart = [[VBPieChart alloc] init];
        [self.view addSubview:_chart];
    }
    
    [_chart setFrame:CGRectMake(-20, 125, MainFrame.size.width+40, MainFrame.size.width+40)];
    [_chart setEnableStrokeColor:NO];
    [_chart setHoleRadiusPrecent:0.65];
    [_chart setDelegate:self];
    
    [_chart.layer setShadowOffset:CGSizeMake(2, 2)];
    [_chart.layer setShadowRadius:3];
    [_chart.layer setShadowColor:[UIColor blackColor].CGColor];
    [_chart.layer setShadowOpacity:0.7];
    
    self.chartValues = @[
                         @{@"name":@"first", @"value":@16.6, @"color":[UIColor clearColor]},
                         @{@"name":@"second", @"value":@16.6, @"color":[UIColor clearColor]},
                         @{@"name":@"third", @"value":@16.6, @"color":[UIColor clearColor]},
                         @{@"name":@"fourth 2", @"value":@16.6, @"color":[UIColor clearColor]},
                         @{@"name":@"fourth 3", @"value":@16.6, @"color":[UIColor clearColor]},
                         @{@"name":@"fourth 4", @"value":@16.7, @"color":[UIColor clearColor]}
                         ];
    
    [_chart setChartValues:_chartValues animation:YES];
    [self SetIris];
    
    _CategoryLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, self.view.frame.size.height-50, self.view.frame.size.width, 30)];
    [_CategoryLabel setFont:[UIFont fontWithName:@"MinionPro-Regular" size:32]];
    [_CategoryLabel setTextColor:[UIColor lightGrayColor]];
    [_CategoryLabel setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:_CategoryLabel];
    
    UILabel *TimeAgoLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2, self.view.frame.size.height-30, self.view.frame.size.width/2, 20)];
    [TimeAgoLabel setFont:[UIFont fontWithName:@"MinionPro-Regular" size:12]];
    [TimeAgoLabel setTextColor:[UIColor whiteColor]];
    [TimeAgoLabel setBackgroundColor:[UIColor clearColor]];
    [TimeAgoLabel setText:@"News The Way You Picture It"];
    [self.view addSubview:TimeAgoLabel];
    
    _SelectedCategory = CategorySelectedNews;
    [_CategoryLabel setText:@"Technologies"];
    
    UIView *CenterView = [[UIView alloc] initWithFrame:CGRectMake(0, 150, MainFrame.size.width/1.5, MainFrame.size.width/1.5)];
    [CenterView setBackgroundColor:[UIColor clearColor]];
    [CenterView.layer setCornerRadius:(MainFrame.size.width/1.5)/2];
    CenterView.center = self.view.center;
    [self.view addSubview:CenterView];
    
    /**
     *  Set single tap
     */
    
    UITapGestureRecognizer *SingletapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapGesture:)];
    SingletapGesture.numberOfTapsRequired = 1;
    [CenterView addGestureRecognizer:SingletapGesture];
    
    /**
     *  Set double tap
     */
    
    UITapGestureRecognizer *DoubletapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapGestureTwo:)];
    DoubletapGesture.numberOfTapsRequired = 2;
    [CenterView addGestureRecognizer:DoubletapGesture];
}
/**
 *  Handle single tap
 */
- (void)handleTapGesture:(UITapGestureRecognizer *)sender {
    if (sender.state == UIGestureRecognizerStateRecognized) {
    }
}
/**
 *  Handle double tap
 */
- (void)handleTapGestureTwo:(UITapGestureRecognizer *)sender {
    if (sender.state == UIGestureRecognizerStateRecognized) {
    }
}
/**
 *  Back to first screen
 */
-(void)BacktoHome
{
    ViewController *ViewOne = [[ViewController alloc] init];
    [self GotoDifferentViewWithAnimation:ViewOne];
}
/**
 *  Reload IRIS
 */
-(void)ReloadIris
{
    switch (_ImageSet) {
        case imagesetnone:
            _ImageSet = imagesetone;
            break;
        case imagesetone:
            _ImageSet = imagesettwo;
            break;
        case imagesettwo:
            _ImageSet = imagesetthree;
            break;
        case imagesetthree:
            _ImageSet = imagesetone;
            break;
        default:
            _ImageSet = imagesetone;
            break;
    }
    [self SetIris];
}
@end
