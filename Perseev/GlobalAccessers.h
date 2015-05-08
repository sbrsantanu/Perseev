//
//  GlobalAccessers.h
//  Perseev
//
//  Created by Mac on 23/02/15.
//  Copyright (c) 2015 Perseev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface GlobalStrings : NSObject

/**
 *    Fonts List for Application
 **/

+(NSString *)FontHelveticaNeue;
+(NSString *)FontHelveticaNeueItalic;
+(NSString *)FontHelveticaNeueBold;
+(NSString *)FontHelveticaNeueUltraLight;
+(NSString *)FontHelveticaNeueCondensedBlack;
+(NSString *)FontHelveticaNeueBoldItalic;
+(NSString *)FontHelveticaNeueCondensedBold;
+(NSString *)FontHelveticaNeueMedium;
+(NSString *)FontHelveticaNeueLight;
+(NSString *)FontHelveticaNeueThin;
+(NSString *)FontHelveticaNeueThinItalic;
+(NSString *)FontHelveticaNeueLightItalic;
+(NSString *)FontHelveticaNeueUltraLightItalic;
+(NSString *)FontHelveticaNeueMediumItalic;

// MyriadPro

+(NSString *)FontMyriadProRegular;
+(NSString *)FontMyriadProSemibold;

// Oswald

+(NSString *)FontOswald;
+(NSString *)FontOswaldBold;
+(NSString *)FontOswaldLight;
+(NSString *)FontOswaldExtraLightItalic;
+(NSString *)FontOswaldBoldHeavyItalic;
+(NSString *)FontOswaldHeavy;
+(NSString *)FontOswaldMediumItalic;
+(NSString *)FontOswaldExtraLight;
+(NSString *)FontOswaldDemiBoldItalic;
+(NSString *)FontOswaldMedium;
+(NSString *)FontOswaldDemiBold;
+(NSString *)FontOswaldLightItalic;
+(NSString *)FontOswaldBoldItalic;
+(NSString *)FontOswaldRegularItalic;


/**
 *  Screen Size
 **/

+(float)GetScreenHeight;
+(float)GetScreenWidth;
+(float)GetScreenMidPointXaxis;
+(float)GetScreenMidPointYaxis;

+(float)GetScreenXpositionPadding10;
+(float)GetScreenXpositionPadding15;
+(float)GetScreenXpositionPadding20;
+(float)GetScreenXpositionPadding25;
+(float)GetScreenXpositionPadding30;
+(float)GetScreenXpositionPadding35;
+(float)GetScreenXpositionPadding40;
+(float)GetScreenXpositionPadding45;
+(float)GetScreenXpositionPadding50;
+(float)GetScreenXpositionPadding55;

+(float)GetScreenWidthPadding10;
+(float)GetScreenWidthPadding15;
+(float)GetScreenWidthPadding20;
+(float)GetScreenWidthPadding25;
+(float)GetScreenWidthPadding30;
+(float)GetScreenWidthPadding35;
+(float)GetScreenWidthPadding40;
+(float)GetScreenWidthPadding45;
+(float)GetScreenWidthPadding50;
+(float)GetScreenWidthPadding55;

@end

@interface GlobalAccessers : NSObject

+(UILabel *)getUILabelWithXposition:(NSString *)ParamXposition
                          Yposition:(NSString *)ParamYposition
                    BackgroundColor:(UIColor *)ParamBackgroundColor
                     LabelTextColor:(UIColor *)ParamLabelTextColor
                      LabelFontName:(NSString *)ParamLabelFontName
                      LabelFontSize:(NSString *)ParamLabelFontSize
                          LabelText:(NSString *)ParamLabelText
                        LabelHeight:(NSString *)ParamLabelHeight
                         LabelWidth:(NSString *)ParamLabelWidth
                 LabelTextAlignment:(NSTextAlignment)ParamLabelTextAlignment;

@end


