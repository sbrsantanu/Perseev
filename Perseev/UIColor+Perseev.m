//
//  UIColor+Perseev.m
//  Perseev
//
//  Created by Mac on 23/02/15.
//  Copyright (c) 2015 Perseev. All rights reserved.
//

#import "UIColor+Perseev.h"

@implementation UIColor (Perseev)

/**
 *    Color List for Application
 **/

+ (UIColor *)colorFromHex:(unsigned long)hex
{
    return [UIColor colorWithRed:((float)((hex & 0xFF0000) >> 16))/255.0 green:((float)((hex & 0xFF00) >> 8))/255.0 blue:((float)(hex & 0xFF))/255.0 alpha:1.0];
}

+(UIColor *)ColorPersevWhiteColor {
    return [self colorFromHex:0xffffff];
};
+(UIColor *)ColorPersevBlackColor {
    return [self colorFromHex:0x212424];
};
+(UIColor *)ColorPersevLightBlackColor {
   return [self colorFromHex:0xd6d6d6];
};
+(UIColor *)ColorPersevDeepBlackColor {
    return [self colorFromHex:0x000000];
};
+(UIColor *)ColorPersevRedColor  {
    return [self colorFromHex:0xd1262b];
};
+(UIColor *)ColorPersevFbBlueColor {
    return [self colorFromHex:0x3b65d1];
};
+(UIColor *)ColorPersevGreenColor  {
    return [self colorFromHex:0x7acc37];
};

@end
