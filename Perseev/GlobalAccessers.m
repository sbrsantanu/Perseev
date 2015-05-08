//
//  GlobalAccessers.m
//  Perseev
//
//  Created by Mac on 23/02/15.
//  Copyright (c) 2015 Perseev. All rights reserved.
//

#import "GlobalAccessers.h"
#import "UIColor+HexColor.h"

#define FontProvidedByApplicationHelveticaNeue                      @"HelveticaNeue"
#define FontProvidedByApplicationHelveticaNeueItalic                @"HelveticaNeue-Italic"
#define FontProvidedByApplicationHelveticaNeueBold                  @"HelveticaNeue-Bold"
#define FontProvidedByApplicationHelveticaNeueUltraLight            @"HelveticaNeue-UltraLight"
#define FontProvidedByApplicationHelveticaNeueCondensedBlack        @"HelveticaNeue-CondensedBlack"
#define FontProvidedByApplicationHelveticaNeueBoldItalic            @"HelveticaNeue-BoldItalic"
#define FontProvidedByApplicationHelveticaNeueCondensedBold         @"HelveticaNeue-CondensedBold"
#define FontProvidedByApplicationHelveticaNeueMedium                @"HelveticaNeue-Medium"
#define FontProvidedByApplicationHelveticaNeueLight                 @"HelveticaNeue-Light"
#define FontProvidedByApplicationHelveticaNeueThin                  @"HelveticaNeue-Thin"
#define FontProvidedByApplicationHelveticaNeueThinItalic            @"HelveticaNeue-ThinItalic"
#define FontProvidedByApplicationHelveticaNeueLightItalic           @"HelveticaNeue-LightItalic"
#define FontProvidedByApplicationHelveticaNeueUltraLightItalic      @"HelveticaNeue-UltraLightItalic"
#define FontProvidedByApplicationHelveticaNeueMediumItalic          @"HelveticaNeue-MediumItalic"

#define FontProvidedByApplicationMyriadProRegular                   @"MyriadPro-Regular"
#define FontProvidedByApplicationMyriadProSemibold                  @"MyriadPro-Semibold"

#define FontProvidedByApplicationOswald                             @"Oswald"
#define FontProvidedByApplicationOswaldBold                         @"Oswald-Bold"
#define FontProvidedByApplicationOswaldLight                        @"Oswald-Light"
#define FontProvidedByApplicationOswaldExtraLightItalic             @"Oswald-Extra-LightItalic"
#define FontProvidedByApplicationOswaldBoldHeavyItalic              @"Oswald-HeavyItalic"
#define FontProvidedByApplicationOswaldHeavy                        @"Oswald-Heavy"
#define FontProvidedByApplicationOswaldMediumItalic                 @"Oswald-MediumItalic"
#define FontProvidedByApplicationOswaldExtraLight                   @"Oswald-ExtraLight"
#define FontProvidedByApplicationOswaldDemiBoldItalic               @"Oswald-Demi-BoldItalic"
#define FontProvidedByApplicationOswaldMedium                       @"Oswald-Medium"
#define FontProvidedByApplicationOswaldDemiBold                     @"Oswald-DemiBold"
#define FontProvidedByApplicationOswaldLightItalic                  @"Oswald-LightItalic"
#define FontProvidedByApplicationOswaldBoldItalic                   @"Oswald-BoldItalic"
#define FontProvidedByApplicationOswaldRegularItalic                @"Oswald-RegularItalic"


@implementation GlobalStrings : NSObject

/**
 *    Fonts List for Application
 **/

//  Helvetica

+(NSString *)FontHelveticaNeue { return FontProvidedByApplicationHelveticaNeue; };
+(NSString *)FontHelveticaNeueItalic { return FontProvidedByApplicationHelveticaNeueItalic; };
+(NSString *)FontHelveticaNeueBold { return FontProvidedByApplicationHelveticaNeueBold; };
+(NSString *)FontHelveticaNeueUltraLight { return FontProvidedByApplicationHelveticaNeueUltraLight; };
+(NSString *)FontHelveticaNeueCondensedBlack { return FontProvidedByApplicationHelveticaNeueCondensedBlack; };
+(NSString *)FontHelveticaNeueBoldItalic { return FontProvidedByApplicationHelveticaNeueBoldItalic; };
+(NSString *)FontHelveticaNeueCondensedBold { return FontProvidedByApplicationHelveticaNeueCondensedBold; };
+(NSString *)FontHelveticaNeueMedium { return FontProvidedByApplicationHelveticaNeueMedium; };
+(NSString *)FontHelveticaNeueLight { return FontProvidedByApplicationHelveticaNeueLight; };
+(NSString *)FontHelveticaNeueThin { return FontProvidedByApplicationHelveticaNeueThin; };
+(NSString *)FontHelveticaNeueThinItalic { return FontProvidedByApplicationHelveticaNeueThinItalic; };
+(NSString *)FontHelveticaNeueLightItalic { return FontProvidedByApplicationHelveticaNeueLightItalic; };
+(NSString *)FontHelveticaNeueUltraLightItalic { return FontProvidedByApplicationHelveticaNeueUltraLightItalic; };
+(NSString *)FontHelveticaNeueMediumItalic { return FontProvidedByApplicationHelveticaNeueMediumItalic; };

// MyriadPro

+(NSString *)FontMyriadProRegular { return FontProvidedByApplicationMyriadProRegular; };
+(NSString *)FontMyriadProSemibold { return FontProvidedByApplicationMyriadProSemibold; };

// Oswald

+(NSString *)FontOswald { return FontProvidedByApplicationOswald; };
+(NSString *)FontOswaldBold { return FontProvidedByApplicationOswaldBold; };
+(NSString *)FontOswaldLight { return FontProvidedByApplicationOswaldLight; };
+(NSString *)FontOswaldExtraLightItalic { return FontProvidedByApplicationOswaldExtraLightItalic; };
+(NSString *)FontOswaldBoldHeavyItalic { return FontProvidedByApplicationOswaldBoldHeavyItalic; };
+(NSString *)FontOswaldHeavy { return FontProvidedByApplicationOswaldHeavy; };
+(NSString *)FontOswaldMediumItalic { return FontProvidedByApplicationOswaldMediumItalic; };
+(NSString *)FontOswaldExtraLight { return FontProvidedByApplicationOswaldExtraLight; };
+(NSString *)FontOswaldDemiBoldItalic { return FontProvidedByApplicationOswaldDemiBoldItalic; };
+(NSString *)FontOswaldMedium { return FontProvidedByApplicationOswaldMedium; };
+(NSString *)FontOswaldDemiBold { return FontProvidedByApplicationOswaldDemiBold; };
+(NSString *)FontOswaldLightItalic { return FontProvidedByApplicationOswaldLightItalic; };
+(NSString *)FontOswaldBoldItalic { return FontProvidedByApplicationOswaldBoldItalic; };
+(NSString *)FontOswaldRegularItalic { return FontProvidedByApplicationOswaldRegularItalic; };



/**
 *  Screen Size
 **/

+(CGRect)GetScreenSize                      { return [[UIScreen mainScreen] bounds]; };
+(float)GetScreenHeight                     { return [self GetScreenSize].size.height; };
+(float)GetScreenWidth                      { return [self GetScreenSize].size.width; };
+(float)GetScreenMidPointXaxis              { return [self GetScreenWidth]/2; };
+(float)GetScreenMidPointYaxis              { return [self GetScreenHeight]/2; };

+(float)GetScreenXpositionPadding10         { return [self GetScreenSize].origin.x-10; };
+(float)GetScreenXpositionPadding15         { return [self GetScreenSize].origin.x-15; };
+(float)GetScreenXpositionPadding20         { return [self GetScreenSize].origin.x-20; };
+(float)GetScreenXpositionPadding25         { return [self GetScreenSize].origin.x-25; };
+(float)GetScreenXpositionPadding30         { return [self GetScreenSize].origin.x-30; };
+(float)GetScreenXpositionPadding35         { return [self GetScreenSize].origin.x-35; };
+(float)GetScreenXpositionPadding40         { return [self GetScreenSize].origin.x-40; };
+(float)GetScreenXpositionPadding45         { return [self GetScreenSize].origin.x-45; };
+(float)GetScreenXpositionPadding50         { return [self GetScreenSize].origin.x-50; };
+(float)GetScreenXpositionPadding55         { return [self GetScreenSize].origin.x-55; };

+(float)GetScreenWidthPadding10             { return [self GetScreenSize].size.width-(10*2); };
+(float)GetScreenWidthPadding15             { return [self GetScreenSize].size.width-(15*2); };
+(float)GetScreenWidthPadding20             { return [self GetScreenSize].size.width-(20*2); };
+(float)GetScreenWidthPadding25             { return [self GetScreenSize].size.width-(25*2); };
+(float)GetScreenWidthPadding30             { return [self GetScreenSize].size.width-(30*2); };
+(float)GetScreenWidthPadding35             { return [self GetScreenSize].size.width-(35*2); };
+(float)GetScreenWidthPadding40             { return [self GetScreenSize].size.width-(40*2); };
+(float)GetScreenWidthPadding45             { return [self GetScreenSize].size.width-(45*2); };
+(float)GetScreenWidthPadding50             { return [self GetScreenSize].size.width-(50*2); };
+(float)GetScreenWidthPadding55             { return [self GetScreenSize].size.width-(55*2); };

@end

@implementation GlobalAccessers

+(UILabel *)getUILabelWithXposition:(NSString *)ParamXposition
                          Yposition:(NSString *)ParamYposition
                    BackgroundColor:(UIColor *)ParamBackgroundColor
                     LabelTextColor:(UIColor *)ParamLabelTextColor
                      LabelFontName:(NSString *)ParamLabelFontName
                      LabelFontSize:(NSString *)ParamLabelFontSize
                          LabelText:(NSString *)ParamLabelText
                        LabelHeight:(NSString *)ParamLabelHeight
                         LabelWidth:(NSString *)ParamLabelWidth
                 LabelTextAlignment:(NSTextAlignment)ParamLabelTextAlignment
{
    
    UILabel *DataLabel = [[UILabel alloc] initWithFrame:CGRectMake(ParamXposition.floatValue, ParamYposition.floatValue, ParamLabelWidth.floatValue, ParamLabelHeight.floatValue)];
    [DataLabel setBackgroundColor:ParamBackgroundColor];
    [DataLabel setFont:[UIFont fontWithName:ParamLabelFontName size:ParamLabelFontSize.floatValue]];
    [DataLabel setTextColor:ParamLabelTextColor];
    [DataLabel setTextAlignment:ParamLabelTextAlignment];
    [DataLabel setText:ParamLabelText];
    [DataLabel setNumberOfLines:0];
    return DataLabel;
}

@end

