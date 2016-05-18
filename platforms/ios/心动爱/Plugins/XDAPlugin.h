//
//  XDAPlugin.h
//  心动爱
//
//  Created by PX_Tan on 16/2/1.
//
//

#import <Foundation/Foundation.h>
#import <Cordova/CDVPlugin.h>

@interface XDAPlugin : CDVPlugin

@property (nonatomic, copy) NSString* callbackID;

//Ping++ 支付
- (void)pay:(CDVInvokedUrlCommand*)command;

//获取设备类型
- (void)getDeviceType:(CDVInvokedUrlCommand*)command;

@end
